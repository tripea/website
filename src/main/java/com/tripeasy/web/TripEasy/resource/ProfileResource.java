
package com.tripeasy.web.TripEasy.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.tripeasy.web.TripEasy.pojo.Profile;


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
		restTemplate.postForEntity("http://10.246.92.165:9090/profiles", profile, Profile.class);
		model.addAttribute("message", "success!");
		return "index";
	}
}
