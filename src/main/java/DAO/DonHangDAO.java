package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import Model.DonHang;

public class DonHangDAO {

	public int store(int nguoidung_id) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("INSERT INTO `donhang`(`nguoidung_id`) values(?)");
			statement.setInt(1, nguoidung_id);

			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return selectLast();
	}

	public int selectLast() {
		DBService db = new DBService();
		PreparedStatement statement;
		int id = -1;
		try {
			statement = db.getConn().prepareStatement("SELECT MAX(id) FROM donhang");
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				id = rs.getInt(1);
			}
		} catch (SQLException e) {
			e.printStackTrace();
		}
		return id;
	}
}