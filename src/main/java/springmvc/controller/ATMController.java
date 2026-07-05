package springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ATMController {

	@RequestMapping("/")
	public String home() {
		System.out.println("Home URL");
		return "home";
	}

	@RequestMapping("/login")
	public String login() {
		System.out.println("Login Page");
		return "login";
	}

	@RequestMapping("/register")
	public String register() {
		System.out.println("Login Page");
		return "register";
	}

	@RequestMapping("/logout")
	public String logout() {
		System.out.println("Logout Page");
		return "logout";
	}

	@RequestMapping("/dashboard")
	public String dashboard() {
		System.out.println("Going Login -> Dashboard");
		return "DashBoard";
	}

	@RequestMapping("/withdrawmoney")
	public String cashWithdraw() {
		System.out.println("Cash Withdrawl");
		return "withdrawmoney";
	}

	@RequestMapping("/atmpinverify")
	public String atmpinVerification() {
		System.out.println("Going on ATM PIN Verification...");
		return "atmPinVerification";
	}

	@RequestMapping("/verifyPin")
	public String verifyAtmPin() {
		System.out.println("Going to Verify the ATM Pin");
		return "verifyPin";
	}

	@RequestMapping("/changePin")
	public String changeAtmPin() {
		System.out.println("Going to Change ATM PIN");
		return "changePin";
	}

	@RequestMapping("/resetPin")
	public String resetAtmPin() {
		System.out.println("Going to Reset ATM PIN");
		return "resetPin";
	}
}
