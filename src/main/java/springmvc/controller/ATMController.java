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
}
