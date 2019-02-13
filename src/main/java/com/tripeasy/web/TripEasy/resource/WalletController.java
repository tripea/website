package com.tripeasy.web.TripEasy.resource;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;

import com.tripeasy.web.TripEasy.pojo.Statement;
import com.tripeasy.web.TripEasy.pojo.Wallet;
/**
 * 
 * @author kanak soni
 *
 */
@Controller
@RequestMapping("/wallet")
public class WalletController {
	@Autowired
	RestTemplate restTemplate;
	
	@RequestMapping("/statements")
	public String getStatement(Model model,@RequestParam Integer profileId) {
		ResponseEntity<Set> statement=restTemplate.getForEntity("http://localhost:8080/wallet?profileId="+profileId, Set.class);
		model.addAttribute("statements",statement.getBody());
		return "Wallet";}
}
