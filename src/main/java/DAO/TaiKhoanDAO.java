package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Food;
import Model.TaiKhoan;

public class TaiKhoanDAO {
	public List<TaiKhoan> getList() {
		List<TaiKhoan> list = new ArrayList<TaiKhoan>();
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("SELECT *  from `nguoidung`");
			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					list.add(new TaiKhoan(rs.getInt("id"), rs.getString("tennguoidung"), rs.getString("tendangnhap"),
							rs.getString("matkhau"), rs.getString("loaiquyen")));
				}
			}

		} catch (SQLException e) {
			// TODO: handle exception
			e.printStackTrace();
		}
		return list;
	}

	public void store(String tennguoidung, String tendangnhap, String matkhau, String loaitaikhoan) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement(
					"INSERT INTO	`nguoidung`(`tennguoidung`,`tendangnhap`,`matkhau`, `loaiquyen`) values(?,?,?,?)");
			statement.setString(1, tennguoidung);
			statement.setString(2, tendangnhap);
			statement.setString(3, MD5.getMd5(matkhau));
			statement.setString(4, loaitaikhoan);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	public void delete(int id) {
		DBService db = new DBService();
		PreparedStatement statement;
		try {
			statement = db.getConn().prepareStatement("DELETE FROM `nguoidung` where id=?");
			statement.setInt(1, id);
			db.executeUpdate(statement);
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
}
