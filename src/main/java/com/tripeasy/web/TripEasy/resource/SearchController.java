package com.tripeasy.web.TripEasy.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.tripeasy.web.TripEasy.entity.Hotel;

@Controller
public class SearchController {
	@Autowired
	private RestTemplate restTemplate;
	 
	 
	 
	 @RequestMapping("/searchFlights")
		public ModelAndView getAllCityForFlight() {
			List<Hotel> flightList = restTemplate.getForObject("http://localhost:8989/cities/Flight",List.class);
	 		return new ModelAndView("FlightSearch", "flightList", flightList);
		}
	 
	 @RequestMapping("/searchHotels")
		public ModelAndView getAllCityForHotel() {
			List<Hotel> flightList = restTemplate.getForObject("http://localhost:8989/cities/Hotel",List.class);
	 		return new ModelAndView("FlightSearch", "flightList", flightList);
		}
}
