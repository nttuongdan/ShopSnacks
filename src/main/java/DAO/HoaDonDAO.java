package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.HoaDon;
import Model.HoaDonChiTiet;

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
					list.add(new HoaDon(rs.getInt("id"), rs.getInt("nguoidung_id"), rs.getString("tennguoidung"),
							rs.getInt("trangthai")));

				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public HoaDon getHoaDonByID(int id) {
		HoaDon food = null;
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT * from `donhang` WHERE `id`=?");
			statement.setInt(1, id);

			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					food = new HoaDon(rs.getInt("id"),

							rs.getInt("trangthai"));
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return food;
	}

	public void trangthai(int id, int trangthai) {
		// TODO Auto-generated method stub
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("UPDATE `donhang` SET `trangthai`=? where `id`=?");
			statement.setInt(1, trangthai);
			statement.setInt(2, id);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	public List<HoaDonChiTiet> getHoaDonChiTiet(int id) {

		List<HoaDonChiTiet> list = new ArrayList<HoaDonChiTiet>();
		DBService db = new DBService();
		PreparedStatement statement;

		try {
			statement = db.getConn().prepareStatement(
					"SELECT dhct.*, m.tenmonan FROM `donhang` dh, `donhangchitiet` dhct, `monan` m WHERE dh.id = dhct.donhang_id AND dhct.monan_id = m.id AND dh.id =?");
			statement.setInt(1, id);

			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					list.add(new HoaDonChiTiet(rs.getInt("id"), rs.getInt("soluong"), rs.getInt("dongia"),
							rs.getInt("thanhtien"), rs.getString("tenmonan")));

				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

	public List<HoaDon> getHoaDon_Khach(int id) {

		List<HoaDon> list = new ArrayList<HoaDon>();
		DBService db = new DBService();
		PreparedStatement statement;

		try {
			statement = db.getConn().prepareStatement(
					"SELECT dh.id, dh.ngaydat, dh.trangthai, SUM(dhct.thanhtien) as tongtien FROM `donhang` dh, `donhangchitiet` dhct WHERE dh.id = dhct.donhang_id AND dh.nguoidung_id = ? GROUP BY dhct.donhang_id ORDER By dh.ngaydat DESC");
			statement.setInt(1, id);

			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					list.add(new HoaDon(rs.getInt("id"), rs.getDate("ngaydat"), rs.getInt("trangthai"), rs.getInt("tongtien")));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}

}
