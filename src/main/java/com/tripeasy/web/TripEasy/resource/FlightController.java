<<<<<<< HEAD
/*
 * package com.tripeasy.web.TripEasy.resource;
 * 
 * 
 * 
 * import java.util.List;
 * 
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.http.ResponseEntity; import
 * org.springframework.stereotype.Controller; import
 * org.springframework.ui.Model; import
 * org.springframework.web.bind.annotation.RequestMapping; import
 * org.springframework.web.bind.annotation.RequestMethod; import
 * org.springframework.web.client.RestTemplate;
 * 
 *//**
	 * 
	 * @author Shubham Raut
	 *
	 *//*
		 * 
		 * @Controller
		 * 
		 * @RequestMapping("/flight") public class FlightController {
		 * 
		 * @Autowired RestTemplate restTemplate;
		 * 
		 * @RequestMapping(value="/flights",method=RequestMethod.GET) public String
		 * flights( @RequestParam String source, @RequestParam String destination, Model
		 * model) { ResponseEntity<List> list=restTemplate.getForEntity(
		 * "http://localhost:7070/flight?source=Pune&destination=Goa", List.class);
		 * 
		 * model.addAttribute("flights",list.getBody()); return "FlightList"; }
		 * 
		 * 
		 * 
		 * }
		 */
=======
package com.tripeasy.web.TripEasy.resource;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tripeasy.web.TripEasy.service.FlightService;

/**
 * 
 * @author Shubham Raut
 *
 */

@Controller
@RequestMapping("/flight")
public class FlightController {

	@Autowired
	FlightService flightService;
	

	@RequestMapping(value = "/flights", method = RequestMethod.GET)
	public String flights(@RequestParam String source, @RequestParam String destination, Model model) {
		
		ResponseEntity<List> flights=flightService.flightsFromSourceToDestination(source,destination);

		model.addAttribute("flights", flights.getBody());
		return "FlightList";

	}

	@RequestMapping("/selectSeats")
	public String selectSeats(@RequestParam Integer flightId) {

		return "FlightSeats";
	}

	@RequestMapping("/bookFlight")
	public String bookFlight(@RequestParam Integer flightId) {
		return "BookFlight";
	}
	
	@RequestMapping(value ="/bookFlight" ,method=RequestMethod.POST)
	public String bookFlights(Model model) {
		//http://10.246.92.145:8989/?type=flight
		
//		restTemplate.postForObject("http://10.246.92.145:8989/?type=flight", request, Booking.class);
		
		model.addAttribute("message","Booked Successfully");
		return "success";
	}
}
>>>>>>> a5b324a4146fbb82fd54483e9ee14760438715d6
