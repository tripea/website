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