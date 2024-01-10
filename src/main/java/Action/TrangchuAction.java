package Action;

import java.util.Iterator;
import java.util.List;
import java.util.Map;

import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.TrangchuDAO;
import Model.DonHangChiTiet;
import Model.Food;

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

	public String home() {
		foodlist = new TrangchuDAO().getList();

		return "success";
	}
	public String giohang() {
		
		return "success";
	}

	public String blog() {
		return "success";
	}
	public String call() {
		return "success";
	}
	public String SnackMoTa() {
		return "success";
	}


//	private List<>
//	
//	public void cart()
//	{
//		
//	}

}
