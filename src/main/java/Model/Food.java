package Model;

public class Food {

	public Food(int id, String ten, String hinh, int trangthai, int gia) {
		super();
		this.id = id;
		this.ten = ten;
		this.hinh = hinh;
		this.trangthai = trangthai;
		this.gia = gia;
	}

	int id;
	String ten;
	String hinh;
	int trangthai;
	int gia;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTen() {
		return ten;
	}

	public void setTen(String ten) {
		this.ten = ten;
	}

	public String getHinh() {
		return hinh;
	}

	public void setHinh(String hinh) {
		this.hinh = hinh;
	}

	public int getGia() {
		return gia;
	}

	public void setGia(int gia) {
		this.gia = gia;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

}
