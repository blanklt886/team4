package comm.dhee.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import comm.dhee.dto.M003;
import comm.dhee.util.DBConnection;

public class M003Dao {

	public static M003 login(M003 m003) throws SQLException {

		Connection connection = DBConnection.getConnection();

		M003 nM003 = new M003();

		String sql = "select * from M003 where m00301=? and m00303=? and m00304=?";
		PreparedStatement ps = connection.prepareStatement(sql);

		ps.setString(1, m003.getM00301());
		ps.setString(2, m003.getM00303());
		ps.setString(3, m003.getM00304());

		ResultSet rs = ps.executeQuery();
		while (rs.next()) {
			nM003.setM00301(rs.getString(1));
			nM003.setM00302(rs.getString(2));
			nM003.setM00303(rs.getString(3));
			nM003.setM00304(rs.getString(4));
		}

		DBConnection.closeConnection();

		return nM003;
	}
}