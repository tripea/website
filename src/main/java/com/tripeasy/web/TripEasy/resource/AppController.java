package com.tripeasy.web.TripEasy.resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AppController {

	@RequestMapping("/hii")
	public String addHotelForm() {
		System.out.println("in hii");
		return "hello";
	}
	

	@RequestMapping("/addhotel")
	public String addHotel() {
		System.out.println("in addhotel");
		return "AddHotel";
	}

}
