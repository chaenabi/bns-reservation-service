package vo;

public class ItemDTO {

	private String item_name;
	private String item_type;
	
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
	
	@Override
	public String toString() {
		return "ItemDTO [item_name=" + item_name + ", item_type=" + item_type + "]";
	}

	
}
