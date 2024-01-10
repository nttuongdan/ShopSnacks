package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.AdminDAO;
import Model.NguoiDung;
import Model.DonHang;

public class AdminAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}

	private String tennguoidung;

	public int getSl_sanpham() {
		return sl_sanpham;
	}

	public void setSl_sanpham(int sl_sanpham) {
		this.sl_sanpham = sl_sanpham;
	}

	public int getSl_hoadon() {
		return sl_hoadon;
	}

	public void setSl_hoadon(int sl_hoadon) {
		this.sl_hoadon = sl_hoadon;
	}

	public int getSl_taikhoan() {
		return sl_taikhoan;
	}

	public void setSl_taikhoan(int sl_taikhoan) {
		this.sl_taikhoan = sl_taikhoan;
	}

	private int sl_sanpham, sl_hoadon, sl_taikhoan;

	public List<DonHang> getThongke() {
		return thongke;
	}

	public void setThongke(List<DonHang> thongke) {
		this.thongke = thongke;
	}

	private List<DonHang> thongke;

	public String home() {
//		NguoiDung nd = (NguoiDung) session.get("nguoidung");
//
//		System.out.print(nd.getTennguoidung());

		sl_sanpham = new AdminDAO().soluongsanpham();
		sl_hoadon = new AdminDAO().soluonghoadon();
		sl_taikhoan = new AdminDAO().soluongtaikhoan();
		thongke = new AdminDAO().thongke();
		
		return "success";
	}

	public String dashboard() {

		return "success";
	}
}
