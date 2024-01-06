package DAO;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import Model.Food;

public class TrangchuDAO {
	public List<Food> getList() {

		List<Food> list = new ArrayList<Food>();
		DBService db = new DBService();
		PreparedStatement statement;

		try {
			statement = db.getConn().prepareStatement("SELECT *  from `monan`");
			ResultSet rs = db.executeQuery(statement);

			if (rs != null) {
				while (rs.next()) {
					list.add(new Food(rs.getInt("id"), rs.getString("tenmonan"),

							rs.getString("hinhanh"), rs.getInt("gia")));
				}
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return list;
	}
}
