package com.tripeasy.web.TripEasy.service;

import java.util.List;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import com.tripeasy.web.TripEasy.pojo.Flight;

@Service
public interface FlightService {

	ResponseEntity<List> flightsFromSourceToDestination(String source, String destination);

	void bookFlight(Flight flight1);

}
