package dao;

public class Main {

//자스로 적용시켜주자..	
	
// Register Action Process
   function _register_action($assign_data) {

         //sns 의경우 이메일이 없는 경우가 있으므로 없을 경우 sns_id 값으로 저장
        $insertId=$assign_data['email']!=null ? $assign_data['email'] :$assign_data['sns_id'];
        
        //sns_id 로 기존에 등록된 유저 확인
        $sql="select * from users where userid=?";
        $query=$this->db->query($sql,  $insertId);
        
       
        $message="";
        //등록된 userid 를 확인 한다.
        if($query->num_rows() > 0){
            //테스트 메시지
            $message="userid 가 존재";
        }
        else
        {
            //userid 값이 없으면 등록한다. 
             // Member Register in Your Code.       
             $data=array(
                'userid' =>$insertId,
                'sns_id'=>$assign_data['sns_id'],
                'sns_type'=>$assign_data['sns_type'],
                'register_auth_code'=>1,  //이메일 인증 코드 1로 
                'profile_img'=>$assign_data['profile_img'],
                'email'=>$assign_data['email'],
                'nickname'=>$assign_data['nickname'],
                'username'=>$assign_data['name'],
                'register_ip'=>$_SERVER['REMOTE_ADDR']
                );       
            $this->db->insert('users', $data);
              $message="등록했습니다.";
                      
        }
        
        //DB에서 정보를 다시 불러온다.
        $sql="select * from users where userid=?";
        $query=$this->db->query($sql,  $insertId);
        $result=$query->row();

         //세션 생성         
        if($result) {             
            //세션 생성         
            $newdata =array(
                'nickname' =>$result->nickname,
                'email' =>$result->email,
                'logged_in' =>TRUE,
                'auth_code' =>$result->auth_code,
                'icon'=>$result->icon,
                'sns_type'=>$result->sns_type,
                'userid' =>$result->userid
            );
            
            $this->session->set_userdata($newdata);
            
            redirect('/');
            exit;
         }else{
             
             alert('로그인에 실패 하였습니다.', '/');
             exit;
         }                            
    }
}