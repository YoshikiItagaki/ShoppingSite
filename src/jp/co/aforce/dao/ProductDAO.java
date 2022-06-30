package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.Product;

public class ProductDAO extends DAO{

	public List<Product> search(String keyword
			)throws Exception{

		List<Product> list=new ArrayList<>();
		Product product = null;


		Connection con=getConnection();

		String sql="select * from product where product_name like ? ";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, "%"+keyword+"%");

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_id(rs.getInt("product_id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
			list.add(product);
		}

		st.close();
		con.close();

		return list;

	}

	public List<Product> searchProductPrice(int min, int max
			)throws Exception{

		List<Product> list=new ArrayList<>();
		Product product = null;


		Connection con=getConnection();

		String sql="select * from product where price >= ? and price <= ? order by price asc";
		PreparedStatement st = con.prepareStatement(sql);

		st.setInt(1, min);
		st.setInt(2, max);

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_id(rs.getInt("product_id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
			list.add(product);
		}

		st.close();
		con.close();

		return list;

	}

	public Product checkItem(String product_name, int price
		)throws Exception{

		Product product = null;


		Connection con=getConnection();

		String sql="select * from product where product_name=? and price=?";
		PreparedStatement st = con.prepareStatement(sql);
		st.setString(1, product_name);
		st.setInt(2, price);

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
		}

		st.close();
		con.close();

		return product;

	}

	public List<Product> displayAllProducts()throws Exception{

		List<Product> list=new ArrayList<>();
		Product product = null;


		Connection con=getConnection();

		String sql="select * from product";
		PreparedStatement st = con.prepareStatement(sql);

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_id(rs.getInt("product_id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
			list.add(product);
		}

		st.close();
		con.close();

		return list;

	}

	public List<Product> sortASC() throws Exception{

		List<Product> list=new ArrayList<>();
		Product product = null;
		Connection con = getConnection();

		String sql = "select * from product order by price asc";
		PreparedStatement st = con.prepareStatement(sql);

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_id(rs.getInt("product_id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
			list.add(product);
		}

		st.close();
		con.close();



		return list;
	}

	public List<Product> sortDESC() throws Exception{

		List<Product> list=new ArrayList<>();
		Product product = null;
		Connection con = getConnection();

		String sql = "select * from product order by price desc";
		PreparedStatement st = con.prepareStatement(sql);

		ResultSet rs=st.executeQuery();

		while(rs.next()) {
			product = new Product();
			product.setProduct_id(rs.getInt("product_id"));
			product.setProduct_name(rs.getString("product_name"));
			product.setPrice(rs.getInt("price"));
			list.add(product);
		}

		st.close();
		con.close();



		return list;
	}

	public int addProduct(String product_name, int price) throws Exception {

		Connection con=getConnection();


		String sql="insert into product values(null, ?, ?)";
		PreparedStatement st=con.prepareStatement(sql);

		st.setString(1, product_name);
		st.setInt(2, price);
		int line=st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	public int updateProduct(int product_id, String product_name, int price) throws Exception {

		Connection con=getConnection();

		String sql = "update product set product_name=?, price=? where product_id=? ";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, product_name);
		st.setInt(2, price);
		st.setInt(3, product_id);
		int line=st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

	public int deleteProduct(int product_id) throws Exception{


		Connection con=getConnection();

		String sql = "DELETE FROM product WHERE product_id=? ";
		PreparedStatement st=con.prepareStatement(sql);
		st.setInt(1, product_id);

		int line=st.executeUpdate();


		st.close();
		con.close();

		return line;

	}








}
