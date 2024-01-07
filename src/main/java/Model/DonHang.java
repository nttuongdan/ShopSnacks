package Model;

public class DonHang {

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

	public DonHang(int id, int nguoidung_id) {
		super();
		this.id = id;
		this.nguoidung_id = nguoidung_id;
	}

	public DonHang(int nguoidung_id) {
		super();
		this.nguoidung_id = nguoidung_id;
	}
}
