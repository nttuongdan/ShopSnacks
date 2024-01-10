package Model;

public class DonHangChiTiet {
	public DonHangChiTiet(int monan_id, String tenmon, int soluong, int dongia, String ghichu) {
		super();
		this.monan_id = monan_id;
		this.tenmon = tenmon;
		this.soluong = soluong;
		this.dongia = dongia;
		this.thanhtien = soluong * dongia;
		this.ghichu = ghichu;
	}

	public DonHangChiTiet(int donhang_id, int monan_id, int soluong, int dongia, String ghichu) {
		super();
		this.donhang_id = donhang_id;
		this.monan_id = monan_id;
		this.soluong = soluong;
		this.dongia = dongia;
		this.thanhtien = soluong * dongia;

		this.ghichu = ghichu;
	}

	public DonHangChiTiet(int id, int donhang_id, int monan_id, int soluong, int dongia, String ghichu) {
		super();
		this.id = id;
		this.donhang_id = donhang_id;
		this.monan_id = monan_id;
		this.soluong = soluong;
		this.dongia = dongia;
		this.thanhtien = soluong * dongia;
		this.ghichu = ghichu;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getDonhang_id() {
		return donhang_id;
	}

	public void setDonhang_id(int donhang_id) {
		this.donhang_id = donhang_id;
	}

	public int getMonan_id() {
		return monan_id;
	}

	public void setMonan_id(int monan_id) {
		this.monan_id = monan_id;
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

	public String getGhichu() {
		return ghichu;
	}

	public void setGhichu(String ghichu) {
		this.ghichu = ghichu;
	}

	public String getTenmon() {
		return tenmon;
	}

	public void setTenmon(String tenmon) {
		this.tenmon = tenmon;
	}

	public int getThanhtien() {
		return thanhtien;
	}

	public void setThanhtien(int thanhtien) {
		this.thanhtien = thanhtien;
	}

	int id, donhang_id, monan_id, soluong;
	int dongia;
	String ghichu = "";

	String tenmon;

	int thanhtien;

}
