package board;

public class BoardVO {
	private int bcode;
	private String userID;
	private int scode;
	private String title;
	private String bwrite;
	private int hits;
	private String bdate;

	public int getBcode() {
		return bcode;
	}

	public void setBcode(int bcode) {
		this.bcode = bcode;
	}

	public int getScode() {
		return scode;
	}

	public void setScode(int scode) {
		this.scode = scode;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getBwrite() {
		return bwrite;
	}

	public void setBwrite(String bwrite) {
		this.bwrite = bwrite;
	}

	public int getHits() {
		return hits;
	}

	public void setHits(int hits) {
		this.hits = hits;
	}

	public String getBdate() {
		return bdate.substring(0, bdate.length() - 2);
	}

	public void setBdate(String bdate) {
		this.bdate = bdate;
	}

	public String getUserID() {
		return userID;
	}

	public void setUserID(String userID) {
		this.userID = userID;
	}
}
