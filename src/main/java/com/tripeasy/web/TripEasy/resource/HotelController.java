package com.tripeasy.web.TripEasy.resource;

import java.util.List;

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

import com.tripeasy.web.TripEasy.pojo.Booking;
import com.tripeasy.web.TripEasy.pojo.Hotel;
import com.tripeasy.web.TripEasy.pojo.Profile;

@Controller
@RequestMapping("/hotel")
public class HotelController {

	@Autowired
	private RestTemplate restTemplate;

	private static Integer bookingID;

	static {
		bookingID = 10;
	}
	private static Hotel staticHotel = new Hotel();

	@RequestMapping("/addhotel")
	public String addHotelForm() {
		return "AddHotel";
	}

	@RequestMapping("/addedhotel")
	public String saveAddHotel(@ModelAttribute Hotel hotel) {
		System.out.println("in add " + hotel);
		return "AddHotel";
	}

	@RequestMapping("/getHotel")
	public ModelAndView getHotel(@RequestParam("hotelId") Integer hotelId) {
		ResponseEntity<Hotel> hotel = restTemplate.getForEntity("http://10.246.92.124:9095/hotels/" + hotelId,
				Hotel.class);
		staticHotel = hotel.getBody();
		System.out.println(hotel.getBody().getTotalAvailableRooms());
		return new ModelAndView("HotelInfo", "hotel", hotel.getBody());
	}

	/*
	 * @RequestMapping("/getAllhotels") public ModelAndView getAllhotels() {
	 * 
	 * List<Hotel> hotelList =
	 * restTemplate.getForObject("http://localhost:9095/hotels", List.class); return
	 * new ModelAndView("HotelList", "hotelList", hotelList); }
	 */

	/*
	 * @RequestMapping("/bookHotel") public ModelAndView
	 * bookHotel(@RequestParam("hotelId") Integer hotelId,
	 * 
	 * @RequestParam Integer numberOfGuest,
	 * 
	 * @RequestParam Boolean bookRoom) {
	 * restTemplate.put("http://localhost:9095/hotels/" + hotelId+ "?numberOfGuest="
	 * +numberOfGuest+ "&bookRoom="+bookRoom, null); return new
	 * ModelAndView("hello", "message", "SuccessFull"); }
	 */

	@RequestMapping("/bookingForm")
	public String bookingForm(@RequestParam Double roomprice, Model model) {
		model.addAttribute("roomprice", roomprice);
		return "BookHotel";
	}

	@RequestMapping(value = "/bookingForm/saveHotel", method = RequestMethod.GET)
	public String saveHotelBooking(@ModelAttribute Profile profile, Model model) {
		System.out.println("In save " + staticHotel);
		System.out.println("In save " + profile);
		System.out.println("In save " + staticHotel.getHotelId());
		bookingID++;
		Booking booking = new Booking();
		booking.setBookingID(bookingID);
		booking.setHotel(staticHotel);
		booking.setBookedBy(profile);
		System.out.println("In save booking is " + booking);

		restTemplate.postForEntity("http://10.246.92.145:7878/bookings", booking, null);
		System.out.println("below post");
		restTemplate.put("http://10.246.92.124:9095/hotels/" + staticHotel.getHotelId() + "?numberOfGuest="
				+ profile.getNumberOfGuest() + "&bookRoom=" + true, null);
		model.addAttribute("message", "Booking Successful!");
		return "hotelbooksuccess";
	}

	@RequestMapping("/hotels")
	public ModelAndView hotelsByCity(@RequestParam String city) {
		System.out.println("in search " + city);

		List<Hotel> hotelList = restTemplate.getForObject("http://10.246.92.124:9095/hotels/?city=" + city, List.class);

		System.out.println("In app controller " + hotelList);
		return new ModelAndView("HotelList", "hotelList", hotelList);
	}
}
