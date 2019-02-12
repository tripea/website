package com.tripeasy.web.TripEasy.resource;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;
import com.tripeasy.web.TripEasy.pojo.Booking;
import com.tripeasy.web.TripEasy.pojo.Customer;

@Controller
@RequestMapping("/bookings")
public class BookingController {

	@Autowired
	RestTemplate restTemplate;

	private static Integer bookingID;

	static {
		bookingID = 10;
	}
	private static Booking staticBooking = new Booking();

	@RequestMapping("/getAllBookings")
	public ModelAndView getAllBookings() {
		List<Booking> bookingList = restTemplate.getForObject("http://localhost:9292/bookings", List.class);
		return new ModelAndView("BookingList", "bookingList", bookingList);
	}

	@RequestMapping("/getBookingById")
	public ModelAndView getHotel(@RequestParam("bookingID") Integer bookingID) {
		ResponseEntity<Booking> booking = restTemplate.getForEntity("http://localhost:9292/bookings/" + bookingID,
				Booking.class);
		staticBooking = booking.getBody();
		System.out.println(booking.getBody().getBookingType());
		return new ModelAndView("BookingInfo", "booking", booking.getBody());
	}

	@RequestMapping(value = "/showCustomers", method = RequestMethod.POST)
	public String saveCustomers(@ModelAttribute List<Customer> customer, Model model) {
		System.out.println("In showCustomers");
		Booking booking = new Booking();
		booking.setCustomers(customer);
		System.out.println("in show customers" + booking);
		restTemplate.postForEntity("http://10.246.92.145:9292/bookings", booking, null);
		System.out.println("below post");
		return "CustomersList";
	}

}
