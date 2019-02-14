package com.tripeasy.web.TripEasy.service;

import java.util.List;

import org.apache.jasper.tagplugins.jstl.core.Set;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import com.tripeasy.web.TripEasy.pojo.Booking;
import com.tripeasy.web.TripEasy.pojo.Flight;
import com.tripeasy.web.TripEasy.pojo.Seat;

/**
 * 
 * @author Shubham Raut
 *
 */
@Service
public class FlightServiceImpl implements FlightService {

	@Autowired
	RestTemplate restTemplate;

	@Override
	public ResponseEntity<List> flightsFromSourceToDestination(String source, String destination) {
		String url = "http://10.246.92.123:7070/flight?source=" + source + "&destination=" + destination;
		return restTemplate.getForEntity(url, List.class);
	}

	@Override
	public Booking bookFlight(Booking booking) {
		return restTemplate.postForObject("http://10.246.92.145:7878/bookings/type/?bookingType=flight", booking, Booking.class);
	}

	@Override
	public ResponseEntity<Seat> getSeatsOfFlight(Integer flightId) {
		String url="";
		restTemplate.getForEntity(url, Set.class);
		return null;
	}


}
