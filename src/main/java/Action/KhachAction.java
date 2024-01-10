package Action;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.DonHangChiTietDAO;
import DAO.DonHangDAO;
import DAO.FoodDAO;
import DAO.TrangchuDAO;
import Model.DonHang;
import Model.DonHangChiTiet;
import Model.Food;
import Model.NguoiDung;

public class KhachAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}
	

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public DonHang getDonhang() {
		return donhang;
	}

	public void setDonhang(DonHang donhang) {
		this.donhang = donhang;
	}

	public List<DonHangChiTiet> getDonhangchitiet() {
		return donhangchitiet;
	}

	public void setDonhangchitiet(List<DonHangChiTiet> donhangchitiet) {
		this.donhangchitiet = donhangchitiet;
	}

	public int getDonhang_id() {
		return donhang_id;
	}

	public void setDonhang_id(int donhang_id) {
		this.donhang_id = donhang_id;
	}

	public int getDonhangchitiet_id() {
		return donhangchitiet_id;
	}

	public void setDonhangchitiet_id(int donhangchitiet_id) {
		this.donhangchitiet_id = donhangchitiet_id;
	}

	public int getMonan_id() {
		return monan_id;
	}

	public void setMonan_id(int monan_id) {
		this.monan_id = monan_id;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getDongia() {
		return dongia;
	}

	public void setDongia(int dongia) {
		this.dongia = dongia;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	public String getTendonhang() {
		return tendonhang;
	}

	public void setTendonhang(String tendonhang) {
		this.tendonhang = tendonhang;
	}

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	int soluongsanpham = 0;

	public int getSoluongsanpham() {
		return soluongsanpham;
	}

	public void setSoluongsanpham(int soluongsanpham) {
		this.soluongsanpham = soluongsanpham;
	}
	
	public List<Food> getFoodlist() {
		return foodlist;
	}

	public void setFoodlist(List<Food> foodlist) {
		this.foodlist = foodlist;
	}

	private List<Food> foodlist;

	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	private Food food;
	
	int id;
	DonHang donhang;
	List<DonHangChiTiet> donhangchitiet = new ArrayList<DonHangChiTiet>();
	int donhang_id, donhangchitiet_id, monan_id, soluong, dongia, thanhtien;
	String tendonhang, ghichu = "";

	public String home() {
		System.out.println("welcome Khach action");
//		foodlist = new FoodDAO().getList();
		return "success";
	}
	
//	public String SnackMoTa()
//	{
//		food = new FoodDAO().getFoodByID(id);
//		return "success";
//	}

	public String ThemGioHang() {

		// Lấy thông tin sản phẩm mới vừa click
		Food f = new FoodDAO().getFoodByID(id);

		// nếu session khác null thì gán nó vào donhangchitiet
		if ((List<DonHangChiTiet>) session.get("donhangchitiet") != null) {
			donhangchitiet = (List<DonHangChiTiet>) session.get("donhangchitiet");
		}

		// Nếu mona_id đã có thì cộng 1 số lượng vào
		int vitri = 0;
		if (donhangchitiet != null)
			for (int i = 0; i < donhangchitiet.size(); i++) {
				if (f.getId() == donhangchitiet.get(i).getMonan_id()) {
					donhangchitiet.get(i).setSoluong(donhangchitiet.get(i).getSoluong() + 1);
					vitri = 1;
				}
			}
		// Nếu chưa có sản phẩm đó thì thêm vào và số lượng bằng 1
		if (vitri == 0)
			donhangchitiet.add(new DonHangChiTiet(f.getId(), 1, f.getGia(), ghichu));

		// put session donhangchitiet
		session.put("donhangchitiet", donhangchitiet);

		// tạo biến số lượng sản phẩm snack
		soluongsanpham = ((List<DonHangChiTiet>) session.get("donhangchitiet")).size();
		
		foodlist = new TrangchuDAO().getList();

		return SUCCESS;
	}
	

	public String ThanhToanGioHang() {
		// lấy người dùng hiện tại
		NguoiDung nd = (NguoiDung) session.get("nguoidung");

		//lấy id của đơn hàng mới vừa tạo
		int dh_id = new DonHangDAO().store(nd.getId());

		List<DonHangChiTiet> dhct = ((List<DonHangChiTiet>) session.get("donhangchitiet"));

		//thêm từng chi tiết đơn hàng ở session
		for (int i = 0; i < dhct.size(); i++) {
			new DonHangChiTietDAO().store(dh_id, dhct.get(i).getMonan_id(), dhct.get(i).getSoluong(),
					dhct.get(i).getDongia(), dhct.get(i).getDongia() * dhct.get(i).getSoluong(), ghichu);
		}

		//xóa session và bảng donhangchitiet
		session.remove("donhangchitiet");
		donhangchitiet = null;

		return "thanhtoanthanhcong";
	}

}
