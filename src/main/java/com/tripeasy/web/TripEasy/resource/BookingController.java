package com.tripeasy.web.TripEasy.resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BookingController {

	@RequestMapping("/hiiBooking")
	public String addHotelForm() {
		System.out.println("in hii");
		return "hiiPoonam";
	}
}
