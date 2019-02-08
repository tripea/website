package com.tripeasy.web.TripEasy.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.tripeasy.web.TripEasy.entity.Hotel;

@Controller
public class AppController {

	@Autowired
	private RestTemplate restTemplate;
	
	@RequestMapping("/hii")
	public String addHotelForm() {
		System.out.println("in hii");
		return "hello";
	}

	@RequestMapping("/addhotel")
	public String addHotel() {
		return "AddHotel";
	}

	@RequestMapping("/getHotel")
	public ModelAndView getHotel(@RequestParam("hotelId") Integer hotelId) {
		ResponseEntity<Hotel> hotel = restTemplate.getForEntity("http://localhost:9095/hotels/"+hotelId, Hotel.class);
		 System.out.println(hotel.getBody().getDescription());
		return new ModelAndView("HotelInfo", "hotel", hotel.getBody());
		}
	
	@RequestMapping("/getAllhotels")
	public ModelAndView getAllhotels() {
		List<Hotel> hotelList = restTemplate.getForObject("http://localhost:9095/hotels",List.class);
 		return new ModelAndView("HotelList", "hotelList", hotelList);
	}

}
