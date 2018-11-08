package vo;

public class KakaoDTO {
	private String id;
	private String email;
	private String nickname;
	private String access_token;
	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNickname() {
		return nickname;
	}
	public void setNickname(String nickname) {
		this.nickname = nickname;
	}
	public String getAccess_token() {
		return access_token;
	}
	public void setAccess_token(String access_token) {
		this.access_token = access_token;
	}
	
	
	@Override
	public String toString() {
		return "KakaoDTO [id=" + id + ", email=" + email + ", nickname=" + nickname + ", access_token=" + access_token
				+ "]";
	}
	
	
}
