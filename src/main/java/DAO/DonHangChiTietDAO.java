package DAO;

import java.sql.PreparedStatement;
import java.sql.SQLException;

public class DonHangChiTietDAO {
	public void store(int donhang_id, int monan_id, int soluong, int dongia, int thanhtien, String ghichu) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement(
					"INSERT INTO `donhangchitiet`(`donhang_id`,`monan_id`,`soluong`,`dongia`,`thanhtien`,`ghichu`) values(?,?,?,?,?,?)");
			statement.setInt(1, donhang_id);
			statement.setInt(2, monan_id);
			statement.setInt(3, soluong);
			statement.setInt(4, dongia);
			statement.setInt(5, thanhtien);
			statement.setString(6, ghichu);

			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
