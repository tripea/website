
package com.tripeasy.web.TripEasy.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.client.RestTemplate;

import com.tripeasy.web.TripEasy.entity.Profile;

@Controller
public class ProfileResource {

	@Autowired
	private RestTemplate restTemplate;
//
//	@RequestMapping("/")
//	public String signUp() {
//		return "SignUp";
//	}
	@RequestMapping("/loginPage")
	public String logIn() {
		return "Login";
	}
	
	@RequestMapping("/create")
	public String createProfile(@ModelAttribute Profile profile,Model model) {
		restTemplate.postForEntity("http://10.246.92.165:9090/profiles", profile, Profile.class);
		model.addAttribute("message", "success!");
		return "SignUp";
	}
}
