package Model;

import java.sql.Date;

public class HoaDon {

	public HoaDon(int id, int nguoidung_id, String tennguoidung, int trangthai) {
		super();
		this.id = id;
		this.nguoidung_id = nguoidung_id;
		this.tennguoidung = tennguoidung;
		this.trangthai = trangthai;
	}

	public HoaDon(int id, int trangthai) {
		super();
		this.id = id;
		this.trangthai = trangthai;
	}

	public HoaDon(int id, Date ngaydat, int trangthai, int tongtien) {
		super();
		this.id = id;
		this.trangthai = trangthai;
		this.ngaydat = ngaydat;
		this.tongtien = tongtien;
	}

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

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	public Date getNgaydat() {
		return ngaydat;
	}

	public void setNgaydat(Date ngaydat) {
		this.ngaydat = ngaydat;
	}

	public int getTongtien() {
		return tongtien;
	}

	public void setTongtien(int tongtien) {
		this.tongtien = tongtien;
	}

	String tennguoidung;

	int id, nguoidung_id;

	private int trangthai;
	Date ngaydat;
	int tongtien;
}
