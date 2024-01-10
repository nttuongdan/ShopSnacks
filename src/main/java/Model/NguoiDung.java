package Model;

public class NguoiDung {
	int id;
	String tennguoidung, tendangnhap, loaiquyen;
	int trangthai;

	public NguoiDung(int id, String tennguoidung, String tendangnhap, String loaiquyen, int trangthai) {
		super();
		this.id = id;
		this.tennguoidung = tennguoidung;
		this.tendangnhap = tendangnhap;
		this.loaiquyen = loaiquyen;
		this.trangthai = trangthai;
	}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getTendangnhap() {
		return tendangnhap;
	}

	public void setTendangnhap(String tendangnhap) {
		this.tendangnhap = tendangnhap;
	}

	public String getTennguoidung() {
		return tennguoidung;
	}

	public void setTennguoidung(String tennguoidung) {
		this.tennguoidung = tennguoidung;
	}

	public String getLoaiquyen() {
		return loaiquyen;
	}

	public void setLoaiquyen(String loaiquyen) {
		this.loaiquyen = loaiquyen;
	}

	public int getTrangthai() {
		return trangthai;
	}

	public void setTrangthai(int trangthai) {
		this.trangthai = trangthai;
	}
}