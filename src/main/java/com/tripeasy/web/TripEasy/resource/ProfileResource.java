
package com.tripeasy.web.TripEasy.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.tripeasy.web.TripEasy.entity.Profile;



/**
 * 
 * @author Shabzan 
 *
 */
@Controller
public class ProfileResource {

	@Autowired
	private RestTemplate restTemplate;

	@RequestMapping("/signin")
	public String logIn() {
		return "Login";
	}
	
	@RequestMapping("/s")
	public String signup() {
		return "SignUp";
	}
	@RequestMapping("/signup")
	public String createProfile(@ModelAttribute Profile profile,Model model) {
		restTemplate.postForEntity("http://localhost:9090/profiles", profile, Profile.class);
		model.addAttribute("message", "success!");
		return "index";
	}
	/*
	 * @RequestMapping("/login") public ModelAndView login(@ModelAttribute Profile
	 * profile,@RequestParam String userName,
	 * 
	 * @RequestParam String password,@RequestParam String profileId) {
	 * 
	 * if (profile.getUserName() == userName && profile.getPassword() == password) {
	 * return new mo;
	 * 
	 * } return new ResponseEntity<Profile>(HttpStatus.NOT_FOUND);
	 * 
	 * }
	 */
}
