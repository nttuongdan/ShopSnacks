package Action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.TrangchuDAO;
import Model.DonHangChiTiet;
import Model.Food;
import Model.NguoiDung;

public class TrangchuAction extends ActionSupport implements SessionAware {

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	private Map<String, Object> session;

	public List<Food> getFoodlist() {
		return foodlist;
	}

	public void setFoodlist(List<Food> foodlist) {
		this.foodlist = foodlist;
	}

	private List<Food> foodlist;

	public int getSoluongsanpham() {
		return soluongsanpham;
	}

	public void setSoluongsanpham(int soluongsanpham) {
		this.soluongsanpham = soluongsanpham;
	}

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}

	String tennguoidung;

	private int soluongsanpham;

	public String getTimkiem() {
		return timkiem;
	}

	public void setTimkiem(String timkiem) {
		this.timkiem = timkiem;
	}

	String timkiem;

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	Food food;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	int id;

	public String home() {
		foodlist = new TrangchuDAO().getList();

		if (session.get("nguoidung") != null) {
			NguoiDung nd = (NguoiDung) session.get("nguoidung");
			tennguoidung = nd.getTennguoidung();
		}

		if (session.get("donhangchitiet") != null)
			// tạo biến số lượng sản phẩm snack
			soluongsanpham = ((List<DonHangChiTiet>) session.get("donhangchitiet")).size();

		return "success";
	}

	public String giohang() {

		if (session.get("nguoidung") != null) {
			NguoiDung nd = (NguoiDung) session.get("nguoidung");
			tennguoidung = nd.getTennguoidung();
		}
		return "success";
	}

	public String blog() {
		if (session.get("nguoidung") != null) {
			NguoiDung nd = (NguoiDung) session.get("nguoidung");
			tennguoidung = nd.getTennguoidung();
		}
		return "success";
	}

	public String call() {
		if (session.get("nguoidung") != null) {
			NguoiDung nd = (NguoiDung) session.get("nguoidung");
			tennguoidung = nd.getTennguoidung();
		}
		return "success";
	}

	public String SnackMoTa() {
		if (session.get("nguoidung") != null) {
			NguoiDung nd = (NguoiDung) session.get("nguoidung");
			tennguoidung = nd.getTennguoidung();
		}
		return "success";
	}

	public String timkiem() {
		// Thiết lập bộ mã UTF-8 cho chương trình
//		System.setProperty("file.encoding", "UTF-8");

//		System.out.print(timkiem);

		if (new TrangchuDAO().getFoodByName(timkiem) != null) {
			food = new TrangchuDAO().getFoodByName(timkiem);
			id = food.getId();
			return "success";
		} else
			return "khongtimthay";
	}
}
