package purchase;

public class CartVO {
	private int cartcode;
	private int pcode;
	private String userID;
	
	public int getPcode() {
		return pcode;
	}
	public void setPcode(int pcode) {
		this.pcode = pcode;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public int getCartcode() {
		return cartcode;
	}
	public void setCartcode(int cartcode) {
		this.cartcode = cartcode;
	}
	
}
