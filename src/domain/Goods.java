package domain;

public class Goods {
	private String GoodsName;
	private Integer price;
	private String TypeNmae;
	private String Introduce;
	private Integer Nowprice;
	private Integer ID;
	private Integer typeID;
	public Integer getTypeID() {
		return typeID;
	}
	public void setTypeID(Integer typeID) {
		this.typeID = typeID;
	}
	public String getGoodsName() {
		return GoodsName;
	}
	public void setGoodsName(String goodsName) {
		GoodsName = goodsName;
	}
	
	public String getTypeNmae() {
		return TypeNmae;
	}
	public void setTypeNmae(String typeNmae) {
		TypeNmae = typeNmae;
	}
	public String getIntroduce() {
		return Introduce;
	}
	public void setIntroduce(String introduce) {
		Introduce = introduce;
	}
	
	public Integer getPrice() {
		return price;
	}
	public void setPrice(Integer price) {
		this.price = price;
	}
	public Integer getNowprice() {
		return Nowprice;
	}
	public void setNowprice(Integer nowprice) {
		Nowprice = nowprice;
	}
	public Integer getID() {
		return ID;
	}
	public void setID(Integer iD) {
		ID = iD;
	}
	

}
