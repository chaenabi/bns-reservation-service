/*package servlet;

public class MainActivity extends AppCompatActivity {
private SessionCallback sessionCallback;
*//**
 * 로그인 버튼을 클릭 했을시 access token을 요청하도록 설정한다.
 *
 * @param savedInstanceState 기존 session 정보가 저장된 객체
 *//*
@Override

protected void onCreate(Bundle savedInstanceState) {

    super.onCreate(savedInstanceState);

    setContentView(R.layout.activity_main);






    try{

        PackageInfo info = getPackageManager().getPackageInfo(this.getPackageName(), PackageManager.GET_SIGNATURES);

        for(Signature signature : info.signatures){

            MessageDigest messageDigest = MessageDigest.getInstance("SHA");

            messageDigest.update(signature.toByteArray());;

        }

    } catch (Exception e){

        Log.d("error", "PackageInfo error is " + e.toString());

    }



    sessionCallback = new SessionCallback();

    Session.getCurrentSession().addCallback(sessionCallback);

    Session.getCurrentSession().checkAndImplicitOpen();



}


@Override

protected void onActivityResult(int requestCode, int resultCode, Intent data) {

    if(Session.getCurrentSession().handleActivityResult(requestCode, resultCode, data)){

        return ;

    }

    super.onActivityResult(requestCode, resultCode, data);

}

@Override
protected void onDestroy() {
    super.onDestroy();
    Session.getCurrentSession().removeCallback(sessionCallback);
}
private class SessionCallback implements ISessionCallback {

    @Override
    public void onSessionOpened() {
        redirectSignupActivity();
    }

    @Override
    public void onSessionOpenFailed(KakaoException exception) {
        if(exception != null) {
            Logger.e(exception);
        }
    }
}






protected void redirectSignupActivity() {
    final Intent intent = new Intent(this, SuccessActivity.class);
    startActivity(intent);
    finish();
}


private void requestMe() {
    List<String> propertyKeys = new ArrayList<String>();
    propertyKeys.add("kaccount_email");
    propertyKeys.add("nickname");
    propertyKeys.add("profile_image");
    propertyKeys.add("thumbnail_image");

    UserManagement.requestMe(new MeResponseCallback() {
        @Override
        public void onFailure(ErrorResult errorResult) {
            String message = "failed to get user info. msg=" + errorResult;
            Logger.d(message);

            redirectMainActivity();
        }

        @Override
        public void onSessionClosed(ErrorResult errorResult) {
            redirectMainActivity();
        }

        @Override
        public void onSuccess(UserProfile userProfile) {
            Logger.d("UserProfile : " + userProfile);
            redirectSuccessActivity();
        }

        @Override
        public void onNotSignedUp() {
            redirectMainActivity();
        }
    }, propertyKeys, false);
}
private void redirectSuccessActivity() {
    startActivity(new Intent(MainActivity.this, SuccessActivity.class));
    Toast.makeText(MainActivity.this, "로그인 되었습니다!", Toast.LENGTH_SHORT);
}
private  void redirectMainActivity() {

}
private void onClickLogout() {//로그아웃인데..왜
    UserManagement.requestLogout(new LogoutResponseCallback() {
        @Override
        public void onCompleteLogout() {
            startActivity(new Intent(MainActivity.this, MainActivity.class));
        }
    });
}*/