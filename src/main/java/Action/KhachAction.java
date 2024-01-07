package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import Model.Food;
import Model.NguoiDung;

public class KhachAction extends ActionSupport implements SessionAware {
	List<Food> foodlist;
	private int idmonan;
	Map<String, Object> session;

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	private Food food;
	private int soluong;
	private int gia;
	private int thanhtien;

	public int getIdmonan() {
		return idmonan;
	}

	public void setIdmonan(int idmonan) {
		this.idmonan = idmonan;
	}

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	public List<Food> getFoodlist() {
		return foodlist;
	}

	public void setFoodlist(List<Food> foodlist) {
		this.foodlist = foodlist;
	}

	public String home() {
		System.out.println("welcome Khach action");
		foodlist = new FoodDAO().getList();
		return "success";
	}

	public String order() {
		food = new FoodDAO().getFoodByID(idmonan);
		return SUCCESS;
	}

	public String submitOrder() {
		NguoiDung nd = (NguoiDung) session.get("nguoidung");
		new FoodDAO().Order(nd.getId(), idmonan, soluong, gia, thanhtien);
		return SUCCESS;
	}

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

}
