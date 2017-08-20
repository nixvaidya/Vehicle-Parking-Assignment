package com.sam.demo;

import java.util.Locale;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.sam.demo.model.ParkingLayoutEntity;
import com.sam.demo.model.UserRegistrationEntity;
import com.sam.demo.service.ShoppingCartService;

/**
 * Handles requests for the application home page.
 */
@Controller

public class HomeController {

	private static final Logger LOG = LoggerFactory.getLogger(HomeController.class);
	private static final String PRODUCT_MAPPING = "/product";
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */

	@Autowired
	private ShoppingCartService shoppingCartService;
		
	@Autowired
	public HttpSession httpSession;
	
	
	@RequestMapping(value = { "/", "/welcome" }, method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
			
		LOG.info("Welcome home! The client locale is {}.", locale);
		//model.addAttribute("Categorylist", shoppingCartService.getCategoryList());
		
		UserRegistrationEntity auth = (UserRegistrationEntity) httpSession.getAttribute("userAuthentication");
		LOG.info("User Authentication:" + auth);
		
		if (auth != null) {
			model.addAttribute("username", auth.getEmailId());
			//model.addAttribute("cartCount", shoppingCartService.getProductCartCount(auth.getId()));
		}
		model.addAttribute("user", auth);
		return "home";
	}
	

	
	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logout() {
		httpSession.invalidate();
		return "redirect:/";
	}

	@RequestMapping(value = "/login", method = RequestMethod.GET)
	public ModelAndView login(@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

		ModelAndView model = new ModelAndView();
		if (error != null) {
			model.addObject("error", "Invalid username and password!");
		}

		if (logout != null) {
			model.addObject("msg", "You've been logged out successfully.");
		}
		model.setViewName("login");

		return model;
	}

	
	@RequestMapping(value = PRODUCT_MAPPING, method = RequestMethod.GET)
	public String productHome(Model model) {
		LOG.info("Inside the productHome Method");
		model.addAttribute("Categorylist", shoppingCartService.getCategoryList());
		return "addproduct";
	}

	
	@RequestMapping(value = PRODUCT_MAPPING + "/add", method = RequestMethod.POST)
	public String addProduct(@ModelAttribute("product") ParkingLayoutEntity obj, RedirectAttributes redirectAttributes) {

		LOG.info("Inside AddProduct Method:");
		Integer status = shoppingCartService.addProduct(obj);

		if (status == 0) {
			redirectAttributes.addFlashAttribute("message", "Failed to save...");
			return "redirect:" + PRODUCT_MAPPING;

		} else {
			redirectAttributes.addFlashAttribute("message", "Saved Successfull...");
			return "redirect:" + PRODUCT_MAPPING;
		}
	}

}
