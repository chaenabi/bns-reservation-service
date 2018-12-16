package vo;

public class SaleDTO {
	private String team_name;
	private String sale_items;
	private String sale_price;
	private String sale_type;
	public String getTeam_name() {
		return team_name;
	}
	public void setTeam_name(String team_name) {
		this.team_name = team_name;
	}
	public String getSale_items() {
		return sale_items;
	}
	public void setSale_items(String sale_items) {
		this.sale_items = sale_items;
	}
	public String getSale_price() {
		return sale_price;
	}
	public void setSale_price(String sale_price) {
		this.sale_price = sale_price;
	}
	public String getSale_type() {
		return sale_type;
	}
	public void setSale_type(String sale_type) {
		this.sale_type = sale_type;
	}
	@Override
	public String toString() {
		return "SaleDTO [team_name=" + team_name + ", sale_items=" + sale_items + ", sale_price=" + sale_price
				+ ", sale_type=" + sale_type + "]";
	}
	

}
