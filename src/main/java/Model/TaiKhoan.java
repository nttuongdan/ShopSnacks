package Model;

public class TaiKhoan {
	int id;
	String tennguoidung, tendangnhap, matkhau, loaitaikhoan;

	public TaiKhoan(int id, String tennguoidung, String tendangnhap, String matkhau, String loaitaikhoan) {
		super();
		this.id = id;
		this.tennguoidung = tennguoidung;
		this.tendangnhap = tendangnhap;
		this.matkhau = matkhau;
		this.loaitaikhoan = loaitaikhoan;
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

	public String getLoaitaikhoan() {
		return loaitaikhoan;
	}

	public void setLoaitaikhoan(String loaitaikhoan) {
		this.loaitaikhoan = loaitaikhoan;
	}

}
