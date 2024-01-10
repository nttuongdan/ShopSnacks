package Model;

public class HoaDonChiTiet {
	int id, soluong, dongia, thanhtien;
	String tenmon;

	public HoaDonChiTiet(int id, int soluong, int dongia, int thanhtien, String tenmon) {
		super();
		this.id = id;
		this.soluong = soluong;
		this.dongia = dongia;
		this.thanhtien = thanhtien;
		this.tenmon = tenmon;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	public int getDongia() {
		return dongia;
	}

	public void setDongia(int dongia) {
		this.dongia = dongia;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	public String getTenmon() {
		return tenmon;
	}

	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}
}
