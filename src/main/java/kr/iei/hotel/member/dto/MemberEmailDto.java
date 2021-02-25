package kr.iei.hotel.member.dto;

public class MemberEmailDto {

    private String senderAddress;
    private String recipientAddress; 
    private String title;
    private String message;
    
    public MemberEmailDto() {}

	public MemberEmailDto(String senderAddress, String recipientAddress, String title, String message) {
		this.senderAddress = senderAddress;
		this.recipientAddress = recipientAddress;
		this.title = title;
		this.message = message;
	}

	public String getSenderAddress() {
		return senderAddress;
	}

	public void setSenderAddress(String senderAddress) {
		this.senderAddress = senderAddress;
	}

	public String getRecipientAddress() {
		return recipientAddress;
	}

	public void setRecipientAddress(String recipientAddress) {
		this.recipientAddress = recipientAddress;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public String getMessage() {
		return message;
	}

	public void setMessage(String message) {
		this.message = message;
	}

	@Override
	public String toString() {
		return "MemberEmailDto [senderAddress=" + senderAddress + ", recipientAddress=" + recipientAddress + ", title="
				+ title + ", message=" + message + "]";
	};

}