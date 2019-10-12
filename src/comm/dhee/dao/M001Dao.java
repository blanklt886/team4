package comm.dhee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import comm.dhee.dto.M001;
import comm.dhee.util.DBConnection;

public class M001Dao {

	public static List<M001> getAllCustomers() throws SQLException {
		Connection connection = DBConnection.getConnection();

		String sql = "select m00101,m00103,m00110 from m001";
		Statement st = connection.createStatement();

		List<M001> lm001 = new ArrayList<M001>();

		ResultSet rs = st.executeQuery(sql);
		while (rs.next()) {
			M001 m001 = new M001();
			m001.setM00101(rs.getString(1));
			m001.setM00103(rs.getString(2));
			m001.setM00110(rs.getDouble(3));

			lm001.add(m001);
		}

		DBConnection.closeConnection();

		return lm001;
	}

	public static List<M001> selectCustomersById(String cname) throws SQLException {

		Connection connection = DBConnection.getConnection();

		String sql = "select m00101,m00103,m00110 from m001 where m00103 like ?";

		PreparedStatement ps = connection.prepareStatement(sql);
		ps.setString(1, "%" + cname + "%");

		ResultSet rs = ps.executeQuery();

		List<M001> lm001 = new ArrayList<M001>();
		while (rs.next()) {
			M001 m001 = new M001();
			m001.setM00101(rs.getString(1));
			m001.setM00103(rs.getString(2));
			m001.setM00110(rs.getDouble(3));

			lm001.add(m001);
		}

		DBConnection.closeConnection();

		return lm001;
	}
}
