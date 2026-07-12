package springmvc.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="register")
public class Register {
	
	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	
	@Column(name="Holder_FirstName",nullable = false)
	private String firstName;
	
	@Column(name="Holder_LastName", nullable = false)
	private String lastName;
	
	@Column(name="Holder_Email", nullable = false, unique = true)
	private String email;
	
	@Column(name="Holder_Mobile", nullable = false, unique = true)
	private long mobile;
	
	@Column(name="Holder_AccountNumber", nullable = false, unique = true)
	private String accountnumber;
	
	@Column(name="Holder_AccountPin", nullable = false, unique = true)
	private long accountpin;
	
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public long getMobile() {
		return mobile;
	}
	public void setMobile(long mobile) {
		this.mobile = mobile;
	}
	public String getAccountnumber() {
		return accountnumber;
	}
	public void setAccountnumber(String accountnumber) {
		this.accountnumber = accountnumber;
	}
	public long getAccountpin() {
		return accountpin;
	}
	public void setAccountpin(long accountpin) {
		this.accountpin = accountpin;
	}
	@Override
	public String toString() {
		return "Register [firstName=" + firstName + ", lastName=" + lastName + ", email=" + email + ", mobile=" + mobile
				+ ", accountnumber=" + accountnumber + ", accountpin=" + accountpin + "]";
	}
	
	
	
}
