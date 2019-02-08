package com.tripeasy.web.TripEasy.resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

<<<<<<< HEAD
	@RequestMapping("/")
	public String index() {
		System.out.println("HI");
		return "index";
	}


	
=======
	@RequestMapping("/hii")
	public String addHotelForm() {
		System.out.println("in hii");
		return "hello";
	}
	

	@RequestMapping("/addhotel")
	public String addHotel() {
		return "AddHotel";
	}

>>>>>>> 88b02d4d4b51f8686c9c12d65cb6f692c6e473bb
}
