
package com.tripeasy.web.TripEasy.resource;

import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.tripeasy.web.TripEasy.pojo.Booking;
import com.tripeasy.web.TripEasy.pojo.Flight;
import com.tripeasy.web.TripEasy.pojo.Seat;
import com.tripeasy.web.TripEasy.service.FlightService;

@Controller
@RequestMapping("/flight")
public class FlightController {

	@Autowired
	FlightService flightService;

	@RequestMapping(value = "/flights", method = RequestMethod.GET)
	public String flights(@RequestParam String source, @RequestParam String destination, Model model) {

		ResponseEntity<List> flights = flightService.flightsFromSourceToDestination(source, destination);

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

	@RequestMapping(value = "/bookFlight", method = RequestMethod.POST)
	public String bookFlights(Model model) {
<<<<<<< HEAD
		// http://10.246.92.145:8989/?type=flight

//		restTemplate.postForObject("http://10.246.92.145:8989/?type=flight", request, Booking.class);

		model.addAttribute("message", "Booked Successfully");
=======
		Flight flight1 = new Flight();
		flight1.setFlightId(3);
		flight1.setFlightName("AI-852 Updated");
		flight1.setAirline("Airjet");
		flight1.setSource("Pune");
		flight1.setDestination("Mumbai");
		flight1.setTime(LocalDateTime.now());

		List<Seat> seats = new ArrayList<Seat>();
		seats.add(new Seat("Economy", 1, 'C', true, 5000.00));
		seats.add(new Seat("Economy", 2, 'B', true, 2500.00));
		seats.add(new Seat("Economy", 2, 'A', true, 3500.00));
		flight1.setSeats(seats);

		
		//http://10.246.92.145:8989/?type=flight
		flightService.bookFlight(flight1);
		
		
		model.addAttribute("message","Booked Successfully");
>>>>>>> 4accda30044e92d3ee5d81213698db6a94747228
		return "success";
	}
}
