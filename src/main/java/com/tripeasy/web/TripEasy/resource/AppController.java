package com.tripeasy.web.TripEasy.resource;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
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
public class AppController {

	@RequestMapping("/")
	public String index() {
		return "index";
	}

<<<<<<< HEAD
 
 
=======
	@Autowired
	private RestTemplate restTemplate;

	private static Integer bookingID;

	static {
		bookingID = 10;
	}
	private static Hotel staticHotel = new Hotel();

	@RequestMapping("/hii")
	public String addHotelForm() {
		return "hello";
	}

	@RequestMapping("/addhotel")
	public String addHotel() {
		System.out.println("in addhotel");
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

	@RequestMapping("/getAllhotels")
	public ModelAndView getAllhotels() {
		List<Hotel> hotelList = restTemplate.getForObject("http://10.246.92.124:9095/hotels", List.class);
		return new ModelAndView("HotelList", "hotelList", hotelList);
	}

	/*
	 * @Autowired private RestTemplate restTemplate;
	 * 
	 * private static Integer bookingID;
	 * 
	 * static { bookingID = 10; } private static Hotel staticHotel = new Hotel();
	 * 
	 * @RequestMapping("/hii") public String addHotelForm() { return "hello"; }
	 * 
	 * @RequestMapping("/addhotel") public String addHotel() {
	 * System.out.println("in addhotel"); return "AddHotel"; }
	 * 
	 * @RequestMapping("/getHotel") public ModelAndView
	 * getHotel(@RequestParam("hotelId") Integer hotelId) { ResponseEntity<Hotel>
	 * hotel = restTemplate.getForEntity("http://10.246.92.124:9095/hotels/" +
	 * hotelId, Hotel.class); staticHotel = hotel.getBody();
	 * System.out.println(hotel.getBody().getTotalAvailableRooms()); return new
	 * ModelAndView("HotelInfo", "hotel", hotel.getBody()); }
	 * 
	 * @RequestMapping("/getAllhotels") public ModelAndView getAllhotels() {
	 * List<Hotel> hotelList =
	 * restTemplate.getForObject("http://http://localhost:9095/hotels", List.class);
	 * List<Hotel> hotelList =
	 * restTemplate.getForObject("http://10.246.92.124:9095/hotels", List.class);
	 * return new ModelAndView("HotelList", "hotelList", hotelList); }
	 * 
	 * 
	 * @Autowired private RestTemplate restTemplate;
	 * 
	 * private static Integer bookingID;
	 * 
	 * static { bookingID = 10; } private static Hotel staticHotel = new Hotel();
	 * 
	 * @RequestMapping("/hii") public String addHotelForm() { return "hello"; }
	 * 
	 * @RequestMapping("/addhotel") public String addHotel() {
	 * System.out.println("in addhotel"); return "AddHotel"; }
	 * 
	 * @RequestMapping("/getHotel") public ModelAndView
	 * getHotel(@RequestParam("hotelId") Integer hotelId) { ResponseEntity<Hotel>
	 * hotel = restTemplate.getForEntity("http://localhost:9095/hotels/" + hotelId,
	 * Hotel.class); staticHotel = hotel.getBody();
	 * System.out.println(hotel.getBody().getTotalAvailableRooms()); return new
	 * ModelAndView("HotelInfo", "hotel", hotel.getBody()); }
	 * 
	 * @RequestMapping("/getAllhotels") public ModelAndView getAllhotels() {
	 * List<Hotel> hotelList =
	 * restTemplate.getForObject("http://localhost:9095/hotels", List.class); return
	 * new ModelAndView("HotelList", "hotelList", hotelList); }
	 * 
	 * 
	 * @RequestMapping("/bookHotel") public ModelAndView
	 * bookHotel(@RequestParam("hotelId") Integer hotelId,
	 * 
	 * @RequestParam Integer numberOfGuest,
	 * 
	 * @RequestParam Boolean bookRoom) {
	 * restTemplate.put("http://localhost:9095/hotels/" + hotelId+ "?numberOfGuest="
	 * +numberOfGuest+ "&bookRoom="+bookRoom, null); return new
	 * ModelAndView("hello", "message", "SuccessFull"); }
	 * 
	 * 
	 * @RequestMapping("/bookingForm") public String bookingForm() { return
	 * "BookHotel"; }
	 * 
	 * @RequestMapping(value = "/saveHotel", method = RequestMethod.POST) public
	 * String saveHotelBooking(@ModelAttribute Profile profile, Model model) {
	 * System.out.println("In save " + staticHotel); bookingID++; Booking booking =
	 * new Booking(); booking.setBookingID(bookingID);
	 * booking.setHotel(staticHotel); booking.setBookedBy(profile);
	 * System.out.println("In save booking is " + booking);
	 * 
	 * restTemplate.postForEntity("http://10.246.92.145:9292/bookings", booking,
	 * null); System.out.println("below post");
	 * restTemplate.put("http://10.246.92.124:9095/hotels/" +
	 * staticHotel.getHotelId() + "?numberOfGuest=" + profile.getNumberOfGuest() +
	 * "&bookRoom=" + true, null); // model.addAttribute("message", "Success!");
	 * return "BookHotel"; }
	 * 
	 * 
	 * @RequestMapping("/bookingForm") public String bookingForm() { return
	 * "BookHotel"; }
	 * 
	 * @RequestMapping(value = "/saveHotel", method = RequestMethod.POST) public
	 * String saveHotelBooking(@ModelAttribute Profile profile, Model model) {
	 * System.out.println("In save " + staticHotel); bookingID++; Booking booking =
	 * new Booking(); booking.setBookingID(bookingID);
	 * booking.setHotel(staticHotel); booking.setBookedBy(profile);
	 * System.out.println("In save booking is " + booking);
	 * 
	 * <<<<<<< HEAD restTemplate.postForEntity("http://10.246.92.145:7878/bookings",
	 * booking, null); ======= <<<<<<< HEAD
	 * restTemplate.postForEntity("http://localhost:8989/bookings", booking, null);
	 * System.out.println("below post");
	 * restTemplate.put("http://http://localhost:9095/hotels/" +
	 * staticHotel.getHotelId()+ "?numberOfGuest=" +profile.getNumberOfGuest()+
	 * "&bookRoom="+true, null); //model.addAttribute("message", "Success!");
	 * ======= restTemplate.postForEntity("http://10.246.92.145:8989/bookings",
	 * booking, null); >>>>>>> db834a7843f157af4e98ef08e80389eadd91b075
	 * System.out.println("below post");
	 * restTemplate.put("http://10.246.92.124:9095/hotels/" +
	 * staticHotel.getHotelId() + "?numberOfGuest=" + profile.getNumberOfGuest() +
	 * "&bookRoom=" + true, null); // model.addAttribute("message", "Success!");
	 * >>>>>>> 5c838fcf6f582ad9cb953e1b11c509ca6cee2764 return "BookHotel"; }
	 */

	@RequestMapping("/bookingForm")
	public String bookingForm() {
		return "BookHotel";
	}

	@RequestMapping(value = "/saveHotel", method = RequestMethod.POST)
	public String saveHotelBooking(@ModelAttribute Profile profile, Model model) {
		System.out.println("In save " + staticHotel);
		bookingID++;
		Booking booking = new Booking();
		booking.setBookingID(bookingID);
		booking.setHotel(staticHotel);
		booking.setBookedBy(profile);
		System.out.println("In save booking is " + booking);

		restTemplate.postForEntity("http://10.246.92.145:7878/bookings", booking, null);
		 restTemplate.postForEntity("http://localhost:8989/bookings", booking, null);
		 System.out.println("below post");
		 restTemplate.put("http://http://localhost:9095/hotels/" + staticHotel.getHotelId()+
					"?numberOfGuest=" +profile.getNumberOfGuest()+ "&bookRoom="+true, null);
		//model.addAttribute("message", "Success!");
		restTemplate.postForEntity("http://10.246.92.145:8989/bookings", booking, null);
		System.out.println("below post");
		restTemplate.put("http://10.246.92.124:9095/hotels/" + staticHotel.getHotelId() + "?numberOfGuest="
				+ profile.getNumberOfGuest() + "&bookRoom=" + true, null);
		// model.addAttribute("message", "Success!");
		return "BookHotel";
	}

>>>>>>> 386bb27d51a888c90027c24f443077a6700bce49
	@RequestMapping("/logout")
	public String logout(HttpServletRequest request, HttpServletResponse response) {

		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		SecurityContextHolder.getContext().setAuthentication(auth);
		return "success";

	}
}
