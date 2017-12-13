package DAO;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import controller.connect;
import model.Product;
import DAO.ProductDAO;

public class ProductDAO {
	public static ArrayList<Product> getAllProduct() throws ClassNotFoundException, SQLException{
		Connection conn = connect.getMySQLConnection();
		String sql = "select * from product";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> list = new ArrayList<Product>();
		while(rs.next()) {
			Product p = new Product();
			p.setIdprod(rs.getInt("idprod"));
			p.setName(rs.getString("name"));
			p.setGuitar(rs.getInt("guitar"));
			p.setChatlieu(rs.getString("chatlieu"));
			p.setDang(rs.getString("dang"));
			p.setPrice(rs.getInt("price"));
			p.setPicture(rs.getString("picture"));
			list.add(p);
		}
		return list;
		
	}
	public static void main(String[] args) throws ClassNotFoundException, SQLException {
		System.out.println(getProductBytype(4));
	}
	
public static boolean insert(Product p) throws SQLException {
	try {
	    Connection connection = connect.getMySQLConnection();
	    String sql = "INSERT INTO guitarseller.product(name,guitar,chatlieu,dang,price,picture) VALUES(?,?,?,?,?,?)";
	    PreparedStatement ps = connection.prepareCall(sql);
	    ps.setString(1, p.getName());
	    ps.setInt(2, p.getGuitar());
	    ps.setString(3, p.getChatlieu());
	    ps.setString(4, p.getDang());
	    ps.setInt(5, p.getPrice());
	    ps.setString(6, p.getPicture());
	    int temp = ps.executeUpdate();
	    return temp == 1;
	    } catch (Exception e) {
	    	System.out.println(e.getMessage());
	         return false;
	    }
	}
//	public static ArrayList<ProductDAO> getProduct(long id_cat) throws ClassNotFoundException, SQLException{
//		Connection conn = connect.getMySQLConnection();
//		String sql = "select * from product where cat_id = "+id_cat+"";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<ProductDAO> list = new ArrayList<ProductDAO>();
//		while(rs.next()) {
//			ProductDAO pro = new ProductDAO();
//			pro.setIdprod(rs.getInt("idprod"));
//			pro.setName(rs.getString("name"));
//			pro.setGuitar(rs.getLong("guitar"));
//			pro.setChatlieu(rs.getString("chatlieu"));
//			pro.setDang(rs.getString("dang"));
//			pro.setPrice(rs.getDouble("price"));
//			pro.setPicture(rs.getString("picture"));
//			list.add(pro);
//		}
//		return list;
//	}
	public static Product getProductByID(long idprod) throws ClassNotFoundException, SQLException{
		Connection conn = connect.getMySQLConnection();
		String sql = "select * from product where idprod = "+idprod+"";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		Product product = new Product();
		while(rs.next()) {
			product.setIdprod(rs.getInt("idprod"));
			product.setName(rs.getString("name"));
			product.setGuitar(rs.getInt("guitar"));
			product.setChatlieu(rs.getString("chatlieu"));
			product.setDang(rs.getString("dang"));
			product.setPrice(rs.getInt("price"));
			product.setPicture(rs.getString("picture"));
		}
		return product;
	}
	public static ArrayList<Product> getProductByType(int guitar) throws ClassNotFoundException, SQLException{
		Connection conn = connect.getMySQLConnection();
		String sql = "select * from product where guitar = "+guitar+"";
		PreparedStatement ps = conn.prepareStatement(sql);
		ResultSet rs = ps.executeQuery();
		ArrayList<Product> list = new ArrayList<Product>();
		while(rs.next()) {
			Product p = new Product();
			p.setIdprod(rs.getInt("idprod"));
			p.setName(rs.getString("name"));
			p.setGuitar(rs.getInt("guitar"));
			p.setChatlieu(rs.getString("chatlieu"));
			p.setDang(rs.getString("dang"));
			p.setPrice(rs.getInt("price"));
			p.setPicture(rs.getString("picture"));
			list.add(p);
		}
		return list;
	}
//	public static int countProductByCat(long carId) throws ClassNotFoundException, SQLException {
//		
//		Connection conn = MySQLConnUtils.getMySQLConnection();
//		String sql = "select count(pro_id) from shoponline.product where cat_id = "+carId+"";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		int result = 0;
//		while(rs.next()) {
//			result = rs.getInt(1);
//		}
//		return result;
//		
//	}
//	public static ArrayList<Product> getProductAndNameCat() throws ClassNotFoundException, SQLException{
//		Connection conn = MySQLConnUtils.getMySQLConnection();
//		String sql = "SELECT * FROM shoponline.product a inner join shoponline.category b on a.cat_id = b.cat_id;";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<Product> list = new ArrayList<Product>();
//		while(rs.next()) {
//			Product pro = new Product();
//			pro.setCat_id(rs.getLong("cat_id"));
//			pro.setDescription(rs.getString("description"));
//			pro.setPro_id(rs.getLong("pro_id"));
//			pro.setPro_image(rs.getString("pro_image"));
//			pro.setPro_name(rs.getString("pro_name"));
//			pro.setPrice(rs.getDouble("price"));
//			pro.setCat_name(rs.getString("cat_name"));
//			list.add(pro);
//		}
//		return list;
//	}
	
	public static boolean update(Product p) throws SQLException {
	    try {
	    	Connection connection = connect.getMySQLConnection();
	         String sql = "update guitarseller.product set name = ?,guitar = ?, chatlieu = ?,dang=?, price = ?, picture = ? where idprod = ?";
	         PreparedStatement ps = connection.prepareCall(sql);
	         ps.setLong(7, p.getIdprod());
	         ps.setString(1, p.getName());
	         ps.setInt(2, p.getGuitar());
	         ps.setString(3, p.getChatlieu());
	         ps.setString(4, p.getDang());
	         ps.setDouble(5, p.getPrice());
	         ps.setString(6, p.getPicture());
	         int temp = ps.executeUpdate();
	         return temp == 1;
	    } catch (Exception e) {
	    	System.out.println(e.getMessage());
	         return false;
	    }
	}
	public static boolean delete(Long idprod) throws SQLException {
	    try {
	    	Connection connection = connect.getMySQLConnection();
	         String sql = "delete from guitarseller.product where idprod="+idprod;
	         PreparedStatement ps = connection.prepareCall(sql);
	         int temp = ps.executeUpdate();
	         return temp == 1;
	    } catch (Exception e) {
	    	System.out.println(e.getMessage());
	         return false;
	    }
	}
//	public static ArrayList<Product> getTop4FromOrderDetail() throws ClassNotFoundException, SQLException{
//		Connection conn = MySQLConnUtils.getMySQLConnection();
//		String sql = "SELECT sum(quantity), b.* FROM shoponline.order_detail a inner join shoponline.product b on a.proId = b.pro_id group by proId order by quantity desc limit 4";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<Product> list = new ArrayList<Product>();
//		while(rs.next()) {
//			Product pro = new Product();
//			pro.setCat_id(rs.getLong("cat_id"));
//			pro.setDescription(rs.getString("description"));
//			pro.setPro_id(rs.getLong("pro_id"));
//			pro.setPro_image(rs.getString("pro_image"));
//			pro.setPro_name(rs.getString("pro_name"));
//			pro.setPrice(rs.getDouble("price"));
//			list.add(pro);
//		}
//		return list;
//	}
//	public static ArrayList<Product> getTop8Lastest() throws ClassNotFoundException, SQLException{
//		Connection conn = MySQLConnUtils.getMySQLConnection();
//		String sql = "select * from shoponline.product order by pro_id desc limit 8";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<Product> list = new ArrayList<Product>();
//		while(rs.next()) {
//			Product pro = new Product();
//			pro.setCat_id(rs.getLong("cat_id"));
//			pro.setDescription(rs.getString("description"));
//			pro.setPro_id(rs.getLong("pro_id"));
//			pro.setPro_image(rs.getString("pro_image"));
//			pro.setPro_name(rs.getString("pro_name"));
//			pro.setPrice(rs.getDouble("price"));
//			list.add(pro);
//		}
//		return list;
//	}
//	public static ArrayList<Product> getTop3Lastest() throws ClassNotFoundException, SQLException{
//		Connection conn = MySQLConnUtils.getMySQLConnection();
//		String sql = "select * from shoponline.product order by pro_id desc limit 3";
//		PreparedStatement ps = conn.prepareStatement(sql);
//		ResultSet rs = ps.executeQuery();
//		ArrayList<Product> list = new ArrayList<Product>();
//		while(rs.next()) {
//			Product pro = new Product();
//			pro.setCat_id(rs.getLong("cat_id"));
//			pro.setDescription(rs.getString("description"));
//			pro.setPro_id(rs.getLong("pro_id"));
//			pro.setPro_image(rs.getString("pro_image"));
//			pro.setPro_name(rs.getString("pro_name"));
//			pro.setPrice(rs.getDouble("price"));
//			list.add(pro);
//		}
//		return list;
//	}
}