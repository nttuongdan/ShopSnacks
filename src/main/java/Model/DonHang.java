package Model;

import java.util.Date;

public class DonHang {

	public DonHang(Date ngaydat, int soluong) {
		super();
		this.ngaydat = ngaydat;
		this.soluong = soluong;
	}

	public DonHang(int id, int nguoidung_id) {
		super();
		this.id = id;
		this.nguoidung_id = nguoidung_id;
	}

	int id, nguoidung_id;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public int getNguoidung_id() {
		return nguoidung_id;
	}

	public void setNguoidung_id(int nguoidung_id) {
		this.nguoidung_id = nguoidung_id;
	}

	public DonHang(int nguoidung_id) {
		super();
		this.nguoidung_id = nguoidung_id;
	}

	public Date getNgaydat() {
		return ngaydat;
	}

	public void setNgaydat(Date ngaydat) {
		this.ngaydat = ngaydat;
	}

	public int getSoluong() {
		return soluong;
	}

	public void setSoluong(int soluong) {
		this.soluong = soluong;
	}

	private Date ngaydat;
	private int soluong;

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	private int trangthai;
}
