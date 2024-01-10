package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.TaiKhoanDAO;

public class DangKyAction extends ActionSupport implements SessionAware {

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

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getMatkhau() {
		return matkhau;
	}

	public void setMatkhau(String matkhau) {
		this.matkhau = matkhau;
	}

	public String getXacnhanmatkhau() {
		return xacnhanmatkhau;
	}

	public void setXacnhanmatkhau(String xacnhanmatkhau) {
		this.xacnhanmatkhau = xacnhanmatkhau;
	}

	private Map<String, Object> session;

	String tennguoidung, tendangnhap, matkhau, xacnhanmatkhau;

	public String dangky() {

		return "dangky";
	}

	public String dangkyxuly() {

		try {
			if (matkhau.compareTo(xacnhanmatkhau) == 0) {
				new TaiKhoanDAO().store(tennguoidung, tendangnhap, matkhau, "khach");
				System.out.print("Đăng ký thành công");
				return "dangkythanhcong";
			}
		} catch (Exception e) {
			e.printStackTrace();
		}

		return "success";
	}
}
