//UserController
package org.jsp.usermvcapp.controller;

import org.jsp.usermvcapp.dto.User;

import org.jsp.usermvcapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

@Controller
@SessionAttributes(names = {"user"})
public class UserController {
	
	@Autowired
	private UserService service;
	
	@RequestMapping("/load")
	public ModelAndView load(ModelAndView view,@RequestParam int choice) {
		if(choice==1) {
			view.setViewName("register");
		view.addObject("user",new User());
		}
		
		if(choice==2) {
		view.setViewName("edit");
		view.addObject("u",new User());
		}
		return view;
	}
	
	@RequestMapping("/reg")
	public ModelAndView reguser(@ModelAttribute User user,ModelAndView view) {
		user=service.saveUser(user);
		view.setViewName("print");
		view.addObject("message","User saved with ID:"+user.getId());
		return view;	
	}
	
	@RequestMapping(value = "/loginUser",method = RequestMethod.POST)
	public String login(@RequestParam long phone,@RequestParam String password, Model model) {
		User user=service.verifyUser(phone, password);
		if(user!=null) {
			model.addAttribute("user",user);
		   return "home";
		}
		else {
			model.addAttribute("message","Invalid Phone and Id");
			return "login";
		}
		}
	
	@RequestMapping("/edit")
	public ModelAndView updateUser(@ModelAttribute User u,ModelAndView view) {
		u=service.updateveUser(u);
		view.addObject("user",u);
		view.setViewName("print");
		view.addObject("message","user updated successfully");
		return view;
	}
	}

  
   

