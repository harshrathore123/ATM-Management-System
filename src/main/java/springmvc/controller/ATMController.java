package springmvc.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import springmvc.model.Register;
import springmvc.service.RegisterService;

@Controller
public class ATMController {

	@Autowired
	private RegisterService registerService;

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

	@PostMapping("/loginUser")
	public String loginUser(@RequestParam("username") String username,
			@RequestParam("password") String password,
			RedirectAttributes redirectAttributes,
			HttpSession session) {
		try {
			long accountPin = Long.parseLong(password);
			Register user = registerService.login(username, accountPin);
			if (user == null) {
				redirectAttributes.addFlashAttribute("error", "Invalid email or PIN.");
				return "redirect:/login";
			}
			session.setAttribute("loggedInUser", user);
			return "redirect:/dashboard";
		} catch (NumberFormatException e) {
			redirectAttributes.addFlashAttribute("error", "PIN must be numeric.");
			return "redirect:/login";
		}
	}

	@RequestMapping("/logout")
	public String logout(HttpSession session) {
		session.invalidate();
		System.out.println("Logout Page");
		return "redirect:/login";
	}

	@RequestMapping("/dashboard")
	public String dashboard(HttpSession session, Model model) {
		Register user = (Register) session.getAttribute("loggedInUser");
		if (user == null) {
			return "redirect:/login";
		}
		model.addAttribute("user", user);
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
