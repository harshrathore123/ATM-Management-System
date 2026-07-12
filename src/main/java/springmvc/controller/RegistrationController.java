package springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import springmvc.model.Register;
import springmvc.service.RegisterService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

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
	public String registerUser(@ModelAttribute Register register,
	                           RedirectAttributes redirectAttributes) {

	    if (registerService.isEmailExists(register.getEmail())) {
	    	System.out.println("Duplicate Email Found!");
	        redirectAttributes.addFlashAttribute("error", "Email Already Exists!");
	        return "redirect:/register";
	    }

	    if (registerService.isMobileExists(register.getMobile())) {
	        redirectAttributes.addFlashAttribute("error", "Mobile Number Already Exists!");
	        return "redirect:/register";
	    }

	    if (registerService.isAccountNumberExists(register.getAccountnumber())) {
	        redirectAttributes.addFlashAttribute("error", "Account Number Already Exists!");
	        return "redirect:/register";
	    }

	    registerService.create(register);

	    redirectAttributes.addFlashAttribute("success", "Registration Successful!");

	    return "redirect:/login";
	}
}
