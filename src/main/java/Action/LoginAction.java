package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.UserDAO;
import Model.NguoiDung;

public class LoginAction extends ActionSupport implements SessionAware {
	String tendangnhap, matkhau;
	Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
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

	@Override
	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public String login() {
		NguoiDung nd = new UserDAO().login(tendangnhap, matkhau);
		if (nd != null) {
			session.put("nguoidung", nd);
//			NguoiDung nd1 = (NguoiDung) session.get("nguoidung");

			System.out.println("Login success");
			if (nd.getLoaiquyen().equals("admin")) {
				return "admin";
			} else
				return "khach";
		} else {
			// If login fails, add field-specific error messages
			if (tendangnhap == null || tendangnhap.trim().isEmpty()) {
				addFieldError("tendangnhap", "Tên đăng nhập không được để trống");
			}
			if (matkhau == null || matkhau.trim().isEmpty()) {
				addFieldError("matkhau", "Mật khẩu không được để trống");
			}
			addActionError("Bạn nhập sai tên đăng nhập hoặc mật khẩu!");
			System.out.println("Login fail");
			return "loginfail";
		}
	}

	public String logout() {
		NguoiDung nd = null;
		if (session.get("nguoidung") != null) {
			nd = (NguoiDung) session.get("nguoidung");
		}
		if (nd.getLoaiquyen().equals("admin")) {
			session.clear();
			return "admin";
		}
		session.clear();
		return "khach";
	}
}
