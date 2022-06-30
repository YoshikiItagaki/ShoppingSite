package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import jp.co.aforce.bean.Item;
import jp.co.aforce.bean.Product;
import jp.co.aforce.bean.Purchase;

public class PurchaseDAO extends DAO {

	public boolean purchase(List<Item> cart, String name, String address, String id,
			String password, String email, String sex, int birth_year)
			throws Exception {

		Connection con = getConnection();
		con.setAutoCommit(false);


		for (Item item : cart) {
			String sql =  "insert into purchase values(null,?, ?, ?, ?, ?, ?, ?, ?, now(), ?, ?,?)";
			PreparedStatement st = con.prepareStatement(sql);
			Product product = item.getProduct();
			st.setInt(1, product.getProduct_id());
			st.setString(2, product.getProduct_name());
			st.setInt(3, product.getPrice());
			st.setInt(4, item.getCount());
			//TODO parameterから」数字がわたってない
			//ユーザーが自分の購入履歴を確認できる。
			//管理者が条件に応じた購入履歴を検索できる
			st.setString(5, name);
			st.setString(6, address);
			st.setString(7, id);
			st.setString(8, password);
			st.setString(9, email);
			st.setString(10, sex);
			st.setInt(11, birth_year);
			/*System.out.println(st.toString());*/
			int line = st.executeUpdate();
			st.close();

			if (line != 1) {
				con.rollback();
				con.setAutoCommit(true);
				con.close();

				return false;
			}

		}

		con.commit();
		con.setAutoCommit(true);
		con.close();

		return true;
	}

	public List <Purchase> checkPurchaseHistory(String id, String password
			)throws Exception {

			List<Purchase> list = new ArrayList<>();
			Purchase purchase = null;

			Connection con=getConnection();

			String sql="select * from purchase where id=? and password=? order by purchase_id desc";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, password);
			ResultSet rs=st.executeQuery();

			while(rs.next()) {

				purchase = new Purchase();

				purchase.setPurchase_id(rs.getInt("purchase_id"));
				purchase.setProduct_id(rs.getInt("product_id"));
				purchase.setProduct_name(rs.getString("product_name"));
				purchase.setPrice(rs.getInt("price"));
				purchase.setCount(rs.getInt("count"));
				purchase.setName(rs.getString("name"));
				purchase.setAddress(rs.getString("address"));
				purchase.setId(rs.getString("id"));
				purchase.setPassword(rs.getString("password"));
				purchase.setEmail(rs.getString("email"));
				purchase.setDate(rs.getString("date"));

				list.add(purchase);

			}

			st.close();
			con.close();
			return list;

		}

	public List <Purchase> checkPurchaseHistoryAdmin()throws Exception {


		//authorise admins to view customers' purchase history

		List<Purchase> list = new ArrayList<>();
		Purchase purchase = null;

		Connection con=getConnection();

		String sql="select * from purchase order by purchase_id desc";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();

		while(rs.next()) {

			purchase = new Purchase();

			purchase.setPurchase_id(rs.getInt("purchase_id"));
			purchase.setProduct_id(rs.getInt("product_id"));
			purchase.setProduct_name(rs.getString("product_name"));
			purchase.setPrice(rs.getInt("price"));
			purchase.setCount(rs.getInt("count"));
			purchase.setName(rs.getString("name"));
			purchase.setAddress(rs.getString("address"));
			purchase.setId(rs.getString("id"));
			purchase.setPassword(rs.getString("password"));
			purchase.setEmail(rs.getString("email"));
			purchase.setDate(rs.getString("date"));

			String sex;

			switch(rs.getString("sex")){
			case "1":
				sex="男";
				purchase.setSex(sex);
				break;
			case "2":
				 sex="女";
				purchase.setSex(sex);
				break;
			}


			list.add(purchase);

		}

		st.close();
		con.close();
		return list;

	}

	public List <Purchase> checkPurchaseHistoryAdminASC()throws Exception {


		//authorise admins to view customers' purchase history

		List<Purchase> list = new ArrayList<>();
		Purchase purchase = null;

		Connection con=getConnection();

		String sql="select * from purchase order by purchase_id";
		PreparedStatement st = con.prepareStatement(sql);
		ResultSet rs=st.executeQuery();

		while(rs.next()) {

			purchase = new Purchase();

			purchase.setPurchase_id(rs.getInt("purchase_id"));
			purchase.setProduct_id(rs.getInt("product_id"));
			purchase.setProduct_name(rs.getString("product_name"));
			purchase.setPrice(rs.getInt("price"));
			purchase.setCount(rs.getInt("count"));
			purchase.setName(rs.getString("name"));
			purchase.setAddress(rs.getString("address"));
			purchase.setId(rs.getString("id"));
			purchase.setPassword(rs.getString("password"));
			purchase.setEmail(rs.getString("email"));
			purchase.setDate(rs.getString("date"));

			String sex;

			switch(rs.getString("sex")){
			case "1":
				sex="男";
				purchase.setSex(sex);
				break;
			case "2":
				sex="女";
				purchase.setSex(sex);
				break;
			}


			list.add(purchase);

		}

		st.close();
		con.close();
		return list;

	}

	public List <Purchase> checkPurchaseHistoryAdminBirthyearSex(int min_birth_year, int max_birth_year, String sex
		)throws Exception {


		//authorise admins to view customers' purchase history

		List<Purchase> list = new ArrayList<>();

		Connection con=getConnection();

		String sql="select * from purchase where birth_year between ? and ? and sex = ? order by date desc";
		PreparedStatement st = con.prepareStatement(sql);
		st.setInt(1, min_birth_year);
		st.setInt(2, max_birth_year);
		st.setString(3, sex);

		//search for purchase history whose customer is of both sex
		if(sex=="3") {
			String sqlBothSex = "select * from purchase where birth_year between ? and ? order by date desc";
			PreparedStatement stBothSex = con.prepareStatement(sqlBothSex);
			stBothSex.setInt(1, min_birth_year);
			stBothSex.setInt(2, max_birth_year);
			ResultSet rsBothSex = stBothSex.executeQuery();

			while(rsBothSex.next()) {

				Purchase purchaseBoth = new Purchase();

				purchaseBoth.setPurchase_id(rsBothSex.getInt("purchase_id"));
				purchaseBoth.setProduct_id(rsBothSex.getInt("product_id"));
				purchaseBoth.setProduct_name(rsBothSex.getString("product_name"));
				purchaseBoth.setPrice(rsBothSex.getInt("price"));
				purchaseBoth.setCount(rsBothSex.getInt("count"));
				purchaseBoth.setName(rsBothSex.getString("name"));
				purchaseBoth.setAddress(rsBothSex.getString("address"));
				purchaseBoth.setId(rsBothSex.getString("id"));
				purchaseBoth.setPassword(rsBothSex.getString("password"));
				purchaseBoth.setEmail(rsBothSex.getString("email"));
				purchaseBoth.setDate(rsBothSex.getString("date"));

				String sexRecorded;

				switch(rsBothSex.getString("sex")){
				case "1":
					sexRecorded="男";
					purchaseBoth.setSex(sexRecorded);
					break;
				case "2":
					 sexRecorded="女";
					purchaseBoth.setSex(sexRecorded);
					break;
				}


				list.add(purchaseBoth);

			}

			stBothSex.close();
			con.close();
			return list;

		}


		//search for purchase history whose customer is of either sex
		ResultSet rs=st.executeQuery();

		while(rs.next()) {

			Purchase purchase = new Purchase();

			purchase.setPurchase_id(rs.getInt("purchase_id"));
			purchase.setProduct_id(rs.getInt("product_id"));
			purchase.setProduct_name(rs.getString("product_name"));
			purchase.setPrice(rs.getInt("price"));
			purchase.setCount(rs.getInt("count"));
			purchase.setName(rs.getString("name"));
			purchase.setAddress(rs.getString("address"));
			purchase.setId(rs.getString("id"));
			purchase.setPassword(rs.getString("password"));
			purchase.setEmail(rs.getString("email"));
			purchase.setDate(rs.getString("date"));

			String sexRecorded;

			switch(rs.getString("sex")){
			case "1":
				sexRecorded="男";
				purchase.setSex(sexRecorded);
				break;
			case "2":
				 sexRecorded="女";
				purchase.setSex(sexRecorded);
				break;
			}


			list.add(purchase);

		}

		st.close();
		con.close();
		return list;

	}




}
