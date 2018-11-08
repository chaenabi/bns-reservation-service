package servlet;

public class MainActivity {

//자스로 적용시켜주자.
	public function kakao_login_action() {

        if (isset($_GET['code'])) {

            require_once realpath(dirname(__FILE__).'/../libraries/SNS_OAuth/').'/kakao_oauth.php';

            $url = "https://kauth.kakao.com/oauth/token";
            
            $param = "grant_type=authorization_code";
            $param .= "&client_id=".$kakao_api;
            $param .= "&redirect_url=".$kakao_redirect;
            $param .= "&code=".$_GET['code'];

            // Get Aeccess Token Value
            
            $auth_data = $this->common->restful_curl($url, $param, 'POST');
            $auth_data = json_decode($auth_data);

           
            
            if($auth_data->access_token) {
               
                $_SESSION['kakao_token'] = $auth_data->access_token;
                
                $url = "https://kapi.kakao.com/v1/user/me";
                $param = "";
                $header = array("Authorization: Bearer " .$auth_data->access_token);


                // Get User Info
                $user_data = $this->common->restful_curl($url, $param, 'POST', $header);
                $user_data = json_decode($user_data);

                $nickname=isset($user_data->name)?$user_data->name :"";
                $thumbnail_image=isset($user_data->thumbnail_image)?$user_data->thumbnail_image:"";
                
                // Add Code :: Valid Member
                $assign_data=array(
                    'sns_id'=>$user_data->id,
                    'sns_type'=>'kakao',
                    'profile_img'=>$thumbnail_image,
                    'email'=>$user_data->kaccount_email,
                    'name'=>$user_data->name,
                    'nickname'=>''   
                );
                
                $this->_register_action($assign_data);

            }else {
                $this->script->alert("Kakao Token Access Fail.");
                $this->script->locationhref('/index.php/auth');
            }

        }else {
            $this->script->alert("Invailed Access.");
            $this->script->locationhref('/index.php/auth');
        } 
    }
}