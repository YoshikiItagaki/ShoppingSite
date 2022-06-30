package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import jp.co.aforce.bean.Customer;

public class CustomerDAO extends DAO {


	/*login*/
	public Customer login(String id, String password
			)throws Exception {

			Customer customer = null;
			String sex="";


			Connection con=getConnection();

			String sql="select * from customer where id=? and password=?";
			PreparedStatement st = con.prepareStatement(sql);
			st.setString(1, id);
			st.setString(2, password);
			ResultSet rs=st.executeQuery();

			while(rs.next()) {

				customer = new Customer();
				customer.setLast_name(rs.getString("last_name"));
				customer.setFirst_name(rs.getString("first_name"));
				customer.setBirth_year(rs.getInt("birth_year"));
				customer.setBirth_month(rs.getInt("birth_month"));
				customer.setBirth_day(rs.getInt("birth_day"));
				customer.setAddress(rs.getString("address"));
				customer.setPhone_number(rs.getString("phone_number"));
				customer.setEmail(rs.getString("email"));
				customer.setId(rs.getString("id"));
				customer.setPassword(rs.getString("password"));

				switch(rs.getString("sex")){
				case "1":
					sex="男";
					customer.setSex(sex);
					break;
				case "2":
					 sex="女";
					customer.setSex(sex);
					break;
				}

			}

			st.close();
			con.close();
			return customer;

		}



		/*	reference for registration*/

	public Customer check(String last_name, String first_name, String sex,
			int birth_year, int birth_month, int birth_day,
			String address, String phone_number, String email, String password
		) throws Exception{

		Customer customer = null;

		Connection con=getConnection();

		String sql= "SELECT * FROM customer WHERE "
				+ "last_name=? AND first_name=? AND sex=? AND"
				+ " birth_year=? AND birth_month=? AND birth_day=? AND"
				+ " address=? AND phone_number=? AND email=? AND password=?";

		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, last_name);
		st.setString(2, first_name);
		st.setString(3, sex);
		st.setInt(4, birth_year);
		st.setInt(5, birth_month);
		st.setInt(6, birth_day);
		st.setString(7, address);
		st.setString(8, phone_number);
		st.setString(9, email);
		st.setString(10, password);
		ResultSet rs=st.executeQuery();

		while(rs.next()) {

			customer = new Customer();
			customer.setLast_name(rs.getString("last_name"));
			customer.setFirst_name(rs.getString("first_name"));
			customer.setSex(rs.getString("sex"));
			customer.setBirth_year(rs.getInt("birth_year"));
			customer.setBirth_month(rs.getInt("birth_month"));
			customer.setBirth_day(rs.getInt("birth_day"));
			customer.setAddress(rs.getString("address"));
			customer.setPhone_number(rs.getString("phone_number"));
			customer.setLast_name(rs.getString("email"));
			customer.setPassword(rs.getString("password"));

		}

		st.close();
		con.close();

		return customer;

	}


	/*register*/

	public int register(String id, String last_name, String first_name, String sex,
			int birth_year, int birth_month, int birth_day,
			String address, String phone_number, String email, String password
		) throws Exception{


		Connection con=getConnection();

		String sql = "INSERT INTO customer values(?,?,?,?,?,?,?,?,?,?,?)";

		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, id);
		st.setString(2, last_name);
		st.setString(3, first_name);
		st.setString(4, sex);
		st.setInt(5, birth_year);
		st.setInt(6, birth_month);
		st.setInt(7, birth_day);
		st.setString(8, address);
		st.setString(9, phone_number);
		st.setString(10, email);
		st.setString(11, password);

		int line=st.executeUpdate();


		st.close();
		con.close();

		return line;

	}

	/*update*/

	public int update(String last_name, String first_name, String sex,
			int birth_year, int birth_month, int birth_day,
			String address, String phone_number, String email,
			String password, String id
		) throws Exception{

		Connection con=getConnection();

		String sql = "UPDATE customer SET"
					+ " last_name=?, first_name=?, sex=?,"
					+ " birth_year=?, birth_month=?, birth_day=?,"
					+ " address=?, phone_number=?, email=?, password=? "
					+ " WHERE id=?";
		PreparedStatement st=con.prepareStatement(sql);

		st.setString(1, last_name);
		st.setString(2, first_name);
		st.setString(3, sex);
		st.setInt(4, birth_year);
		st.setInt(5, birth_month);
		st.setInt(6, birth_day);
		st.setString(7, address);
		st.setString(8, phone_number);
		st.setString(9, email);
		st.setString(10, password);
		st.setString(11, id);

		int line=st.executeUpdate();

		st.close();
		con.close();

		return line;

	}

	/*delete*/

	public int delete(String id, String password) throws Exception{


		Connection con=getConnection();

		String sql = "DELETE FROM customer WHERE id=? AND password=? ";
		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, id);
		st.setString(2, password);

		int line=st.executeUpdate();


		st.close();
		con.close();

		return line;

	}


	public Customer viewAll(String id, String password) throws Exception{

		Customer customer = null;

		Connection con=getConnection();

		String sql= "SELECT * FROM customer WHERE id=? AND password=?";

		PreparedStatement st=con.prepareStatement(sql);
		st.setString(1, id);
		st.setString(2, password);
		ResultSet rs=st.executeQuery();


		while(rs.next()) {

			customer = new Customer();

			customer.setId(rs.getString("id"));
			customer.setLast_name(rs.getString("last_name"));
			customer.setFirst_name(rs.getString("first_name"));

			if(rs.getString("sex").equals("1")){
				String sex="男";
				customer.setSex(sex);

			}else {
				String sex="女";
				customer.setSex(sex);
			}

			customer.setBirth_year(rs.getInt("birth_year"));
			customer.setBirth_month(rs.getInt("birth_month"));
			customer.setBirth_day(rs.getInt("birth_day"));
			customer.setAddress(rs.getString("address"));
			customer.setPhone_number(rs.getString("phone_number"));
			customer.setEmail(rs.getString("email"));
			customer.setPassword(rs.getString("password"));

		}

		st.close();
		con.close();

		return customer;
	}

	/*insert

	update

	delete*/

}
