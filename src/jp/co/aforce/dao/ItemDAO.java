package jp.co.aforce.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;

public class ItemDAO extends DAO {

	public int cart(int product_id, String product_name, int price, int count, int total
		) throws Exception {

		Connection con=getConnection();


		String sql="insert into cart values(null,?, ?, ?, ?, ?)";
		PreparedStatement st=con.prepareStatement(sql);

		st.setInt(1, product_id);
		st.setString(2, product_name);
		st.setInt(3, price);
		st.setInt(4, count);
		st.setInt(5, total);
		int line=st.executeUpdate();

		st.close();
		con.close();

		return line;
	}

}
