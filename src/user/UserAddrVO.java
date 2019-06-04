package user;

public class UserAddrVO {
	private String userID;
	private int postcode;
	private String roadArress;
	private String detailAddress;
	private String extraAddress;
	
	
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getPostcode() {
		return postcode;
	}
	public void setPostcode(int postcode) {
		this.postcode = postcode;
	}
	public String getRoadArress() {
		return roadArress;
	}
	public void setRoadArress(String roadArress) {
		this.roadArress = roadArress;
	}
	public String getDetailAddress() {
		return detailAddress;
	}
	public void setDetailAddress(String detailAddress) {
		this.detailAddress = detailAddress;
	}
	public String getExtraAddress() {
		return extraAddress;
	}
	public void setExtraAddress(String extraAddress) {
		this.extraAddress = extraAddress;
	}
}
