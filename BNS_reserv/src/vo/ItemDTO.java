package vo;

public class ItemDTO {

	private String item_code;
	private String item_name;
	private String item_type;
	private String boss_level;
	
	
	
	public String getItem_code() {
		return item_code;
	}
	public void setItem_code(String item_code) {
		this.item_code = item_code;
	}
	public String getItem_name() {
		return item_name;
	}
	public void setItem_name(String item_name) {
		this.item_name = item_name;
	}
	public String getItem_type() {
		return item_type;
	}
	public void setItem_type(String item_type) {
		this.item_type = item_type;
	}
	public String getBoss_level() {
		return boss_level;
	}
	public void setBoss_level(String boss_level) {
		this.boss_level = boss_level;
	}
	@Override
	public String toString() {
		return "ItemDTO [item_code=" + item_code + ", item_name=" + item_name + ", item_type=" + item_type
				+ ", boss_level=" + boss_level + "]";
	}
	
	
	
	
}
