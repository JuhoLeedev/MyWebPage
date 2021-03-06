package user;

public class UserDataVO {
	private String userID;
	private String userPassword;
	private String userName;
	private String userEmail;
	private int userPhone;
	private char emailReceiveYn;
	private char smsReceiveYn;
	private char admin;
	
	public char getEmailReceiveYn() {
		return emailReceiveYn;
	}
	public void setEmailReceiveYn(char emailReceiveYn) {
		this.emailReceiveYn = emailReceiveYn;
	}
	public char getSmsReceiveYn() {
		return smsReceiveYn;
	}
	public void setSmsReceiveYn(char smsReceiveYn) {
		this.smsReceiveYn = smsReceiveYn;
	}
	public char getAdmin() {
		return admin;
	}
	public void setAdmin(char admin) {
		this.admin = admin;
	}
	public String getUserID() {
		return userID;
	}
	public void setUserID(String userID) {
		this.userID = userID;
	}
	public String getUserPassword() {
		return userPassword;
	}
	public void setUserPassword(String userPW) {
		this.userPassword = userPW;
	}
	public String getUserName() {
		return userName;
	}
	public void setUserName(String userName) {
		this.userName = userName;
	}
	public String getUserEmail() {
		return userEmail;
	}
	public void setUserEmail(String userEmail) {
		this.userEmail = userEmail;
	}
	public int getUserPhone() {
		return userPhone;
	}
	public void setUserPhone(int userPhone) {
		this.userPhone = userPhone;
	}
	@Override
	public String toString() {
		return "UserDataVO [userID=" + userID + ", userPassword=" + userPassword + ", userName=" + userName
				+ ", userEmail=" + userEmail + ", userPhone=" + userPhone + ", emailReceiveYn=" + emailReceiveYn
				+ ", smsReceiveYn=" + smsReceiveYn + ", admin=" + admin + "]";
	}
	
	
}
