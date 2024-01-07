package Action;

import java.util.List;

import com.opensymphony.xwork2.ActionSupport;

import DAO.TrangchuDAO;
import Model.Food;

public class TrangchuAction extends ActionSupport {

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
}
