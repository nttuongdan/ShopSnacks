package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.DonHang;

public class AdminDAO {
	public int soluongsanpham() {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT count(id) as soluong from `monan`");
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return rs.getInt("soluong");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public int soluonghoadon() {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT count(id) as soluong from `donhang`");
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return rs.getInt("soluong");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public int soluongtaikhoan() {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT count(id) as soluong from `nguoidung`");
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				return rs.getInt("soluong");
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return 0;
	}

	public List<DonHang> thongke() {
		DBService db = new DBService();
		PreparedStatement statement;

		List<DonHang> thongke = new ArrayList<DonHang>();

		try {
			statement = db.getConn().prepareStatement(
					"SELECT ngaydat, count(id) as soluong FROM `donhang` WHERE ngaydat >= DATE_SUB(CURDATE(), INTERVAL 7 DAY) AND ngaydat <= CURDATE() GROUP BY ngaydat");
			ResultSet rs = statement.executeQuery();
			if (rs.next()) {
				while (rs.next()) {
					thongke.add(new DonHang(rs.getDate("ngaydat"), rs.getInt("soluong")));
				}
			}

		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return thongke;
	}
}
