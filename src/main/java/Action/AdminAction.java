package Action;

import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import Model.NguoiDung;

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

	public String home() {
//		NguoiDung nd = (NguoiDung) session.get("nguoidung");
//
//		System.out.print(nd.getTennguoidung());

		return "success";
	}
}
