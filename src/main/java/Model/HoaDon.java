package Model;

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

	int id, nguoidung_id;
	String tennguoidung;

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}

	private int trangthai;
}
