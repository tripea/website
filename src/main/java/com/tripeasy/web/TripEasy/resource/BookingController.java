package com.tripeasy.web.TripEasy.resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.tripeasy.web.TripEasy.entity.Hotel;
import com.tripeasy.web.booking.entity.Booking;
import com.tripeasy.web.booking.entity.Profile;

@Controller
public class BookingController {

	@Autowired
	private RestTemplate restTemplate;

	@RequestMapping("/hiiBooking")
	public String addHotelForm() {
		System.out.println("in hii");
		return "hiiPoonam";
	}

	@RequestMapping(value = "/saveHotel", method = RequestMethod.GET)
	public String depositForm() {
		return "BookHotel";
	}

	@RequestMapping(value = "/saveHotel", method = RequestMethod.POST)
	public String saveHotelBooking(@ModelAttribute Profile profile, Model model) {
		
		ResponseEntity<Booking> booking1= restTemplate.postForEntity("http://localhost:8989/bookings", booking, null);
		model.addAttribute("message", "Success!");
		return "BookHotel";
	}
}
