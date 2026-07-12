package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.model.Register;
import springmvc.service.RegisterService;

@Controller
public class RegistrationController {
	
	@Autowired
	public RegisterService registerService;
	

	@RequestMapping("/register")
	public String register() {
		System.out.println("Register Page");
		return "register";
	}
	
	@RequestMapping("/registerUser")
	public String registerUser(@ModelAttribute Register register,Model model) {
		
		System.out.println(register);
		
		model.addAttribute(register);
		int holderRegister = registerService.create(register);
		
		
		return "DashBoard";
	}
}
