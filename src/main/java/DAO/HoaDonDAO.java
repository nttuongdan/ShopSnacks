package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.HoaDon;

public class HoaDonDAO {
	public List<HoaDon> getList() {

		List<HoaDon> list = new ArrayList<HoaDon>();
		DBService db = new DBService();
		PreparedStatement statement;

		try {
			statement = db.getConn().prepareStatement(
					"SELECT d.*,nd.tennguoidung as `tennguoidung` from `donhang` d, `nguoidung` nd where d.nguoidung_id = nd.id");
			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					list.add(new HoaDon(rs.getInt("id"), rs.getInt("nguoidung_id"), rs.getString("tennguoidung")));

				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
