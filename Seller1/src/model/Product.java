package model;

public class Product {
	private int idprod;
	private String name;
	private int guitar;
	private String chatlieu;
	private String dang;
	private int hole;
	private int phim;
	private int pedals;
	private int price;
	private String picture;
	public Product(int idprod, String name, int guitar, String chatlieu, String dang, int hole, int phim, int pedals,
			int price, String picture) {
		super();
		this.idprod = idprod;
		this.name = name;
		this.guitar = guitar;
		this.chatlieu = chatlieu;
		this.dang = dang;
		this.hole = hole;
		this.phim = phim;
		this.pedals = pedals;
		this.price = price;
		this.picture = picture;
	}
	public Product() {
		super();
	}
	public int getIdprod() {
		return idprod;
	}
	public void setIdprod(int idprod) {
		this.idprod = idprod;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public int getGuitar() {
		return guitar;
	}
	public void setGuitar(int guitar) {
		this.guitar = guitar;
	}
	public String getChatlieu() {
		return chatlieu;
	}
	public void setChatlieu(String chatlieu) {
		this.chatlieu = chatlieu;
	}
	public String getDang() {
		return dang;
	}
	public void setDang(String dang) {
		this.dang = dang;
	}
	public int getHole() {
		return hole;
	}
	public void setHole(int hole) {
		this.hole = hole;
	}
	public int getPhim() {
		return phim;
	}
	public void setPhim(int phim) {
		this.phim = phim;
	}
	public int getPedals() {
		return pedals;
	}
	public void setPedals(int pedals) {
		this.pedals = pedals;
	}
	public int getPrice() {
		return price;
	}
	public void setPrice(int price) {
		this.price = price;
	}
	public String getPicture() {
		return picture;
	}
	public void setPicture(String string) {
		this.picture = string;
	}
	
}
