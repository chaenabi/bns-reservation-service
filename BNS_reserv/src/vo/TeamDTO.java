package vo;

public class TeamDTO {
	private String id;
	private String bns_id;
	private String team_name;
	private String go_date;
	private String go_time;
	private String raid_type;

	
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getBns_id() {
		return bns_id;
	}
	public void setBns_id(String bns_id) {
		this.bns_id = bns_id;
	}
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getGo_date() {
		return go_date;
	}
	public void setGo_date(String go_date) {
		this.go_date = go_date;
	}
	public String getGo_time() {
		return go_time;
	}
	public void setGo_time(String go_time) {
		this.go_time = go_time;
	}
	public String getRaid_type() {
		return raid_type;
	}
	public void setRaid_type(String raid_type) {
		this.raid_type = raid_type;
	}
	@Override
	public String toString() {
		return "TeamDTO [id=" + id + ", bns_id=" + bns_id + ", team_name=" + team_name + ", go_date=" + go_date
				+ ", go_time=" + go_time + ", raid_type=" + raid_type + "]";
	}
	
	
	
	
	
}
