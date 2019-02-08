package com.tripeasy.web.TripEasy.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
<<<<<<< HEAD
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
=======
>>>>>>> 789c8e8bb4becf8755c1cf2f4b3bf3916634d10e
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.tripeasy.web.TripEasy.entity.Hotel;

@Controller
public class AppController {

	@RequestMapping("/")
	public String index() {
		System.out.println("HI");
		return "index";
	}


	
	@Autowired
	private RestTemplate restTemplate;

	private static Hotel staticHotel =new Hotel();
	
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


	@RequestMapping("/getHotel")
	public ModelAndView getHotel(@RequestParam("hotelId") Integer hotelId) {
		ResponseEntity<Hotel> hotel = restTemplate.getForEntity("http://localhost:9095/hotels/" + hotelId, Hotel.class);
		staticHotel = hotel.getBody();
		System.out.println(hotel.getBody().getDescription());
		return new ModelAndView("HotelInfo", "hotel", hotel.getBody());
	}

	@RequestMapping("/getAllhotels")
	public ModelAndView getAllhotels() {
		List<Hotel> hotelList = restTemplate.getForObject("http://localhost:9095/hotels", List.class);
		return new ModelAndView("HotelList", "hotelList", hotelList);
	}

	@RequestMapping("/bookHotel")
	public ModelAndView bookHotel(@RequestParam("hotelId") Integer hotelId, 
			@RequestParam Integer numberOfGuest,
			@RequestParam Boolean bookRoom) {
		 restTemplate.put("http://localhost:9095/hotels/" + hotelId+
				"?numberOfGuest=" +numberOfGuest+ "&bookRoom="+bookRoom, null);
		return new ModelAndView("hello", "message", "SuccessFull");
	}
}
