package Action;

import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.HoaDonDAO;
import Model.HoaDon;

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
	
	public String list()
	{
		hoadon = new HoaDonDAO().getList();
		return SUCCESS;
	}
}
