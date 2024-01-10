package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.DonHangDAO;
import DAO.FoodDAO;
import DAO.HoaDonDAO;
import Model.Food;
import Model.HoaDon;
import Model.HoaDonChiTiet;

public class HoaDonAction extends ActionSupport implements SessionAware {
	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<HoaDon> getHoadon() {
		return hoadon;
	}

	public void setHoadon(List<HoaDon> hoadon) {
		this.hoadon = hoadon;
	}

	private List<HoaDon> hoadon;

	public String list() {
		hoadon = new HoaDonDAO().getList();
		return SUCCESS;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	public List<HoaDonChiTiet> getHoadonchitiet() {
		return hoadonchitiet;
	}

	public void setHoadonchitiet(List<HoaDonChiTiet> hoadonchitiet) {
		this.hoadonchitiet = hoadonchitiet;
	}

	public int getTongtien() {
		return tongtien;
	}

	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}

	private int id, trangthai;

	private List<HoaDonChiTiet> hoadonchitiet;
	
	private int tongtien;

	public String delete() {

		HoaDon hoadon1 = new HoaDonDAO().getHoaDonByID(id);
		if (hoadon1.getTrangthai() == 1) {
			new HoaDonDAO().trangthai(id, 0);
		} else {
			new HoaDonDAO().trangthai(id, 1);
		}
		return "list";
	}

	public String show() {
		hoadonchitiet = new HoaDonDAO().getHoaDonChiTiet(id);
		for(int i=0; i<hoadonchitiet.size();i++) {
			tongtien+=hoadonchitiet.get(i).getDongia()*hoadonchitiet.get(i).getSoluong();
		}
		return SUCCESS;
	}
}
