package Action;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;

import org.apache.commons.io.FileUtils;
import org.apache.struts2.ServletActionContext;
import org.apache.struts2.interceptor.SessionAware;

import com.opensymphony.xwork2.ActionSupport;

import DAO.FoodDAO;
import DAO.TaiKhoanDAO;
import Model.TaiKhoan;

public class TaiKhoanAction extends ActionSupport implements SessionAware {

	private Map<String, Object> session;

	public Map<String, Object> getSession() {
		return session;
	}

	public void setSession(Map<String, Object> session) {
		this.session = session;
	}

	public List<TaiKhoan> getListTaiKhoan() {
		return listTaiKhoan;
	}

	public void setListTaiKhoan(List<TaiKhoan> listTaiKhoan) {
		this.listTaiKhoan = listTaiKhoan;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
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

	private String xacnhanmatkhau;

	public String getLoaitaikhoan() {
		return loaitaikhoan;
	}

	public void setLoaitaikhoan(String loaitaikhoan) {
		this.loaitaikhoan = loaitaikhoan;
	}

	private List<TaiKhoan> listTaiKhoan;
	private int id;
	private String tennguoidung, tendangnhap, matkhau, loaitaikhoan;

	public String list() {
		listTaiKhoan = new TaiKhoanDAO().getList();
		return SUCCESS;
	}

	public String create() {
		return SUCCESS;
	}

	public String store() {

		if (matkhau.compareTo(xacnhanmatkhau) == 0) {//0 : đúng 
			new TaiKhoanDAO().store(tennguoidung, tendangnhap, matkhau, loaitaikhoan);
		}

		return "list";
	}

	public String delete() {
		new TaiKhoanDAO().delete(id);
		return "list";
	}

}
