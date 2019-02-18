package com.tripeasy.web.TripEasy.resource;

import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.client.RestTemplate;
import org.springframework.web.servlet.ModelAndView;

import com.nimbusds.oauth2.sdk.GeneralException;
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
	public String getStatement(Model model, @RequestParam Integer profileId) {
<<<<<<< HEAD
		ResponseEntity<Set> statement = 
				restTemplate.getForEntity("http://10.246.92.163:8080/wallet?profileId=" + profileId,Set.class);
=======
		ResponseEntity<Set> statement = restTemplate.getForEntity("http://localhost:8080/wallet?profileId=" + profileId,Set.class);
>>>>>>> 2d5170e85bdaac1b47834c06275ac5fb1e0fa48c
		model.addAttribute("statements", statement.getBody());
		return "Wallet";
	}

	@RequestMapping("/wallet")
	public String getWallet(Model model, @RequestParam Integer profileId) {
<<<<<<< HEAD
		ResponseEntity<Wallet> wallet = restTemplate
				.getForEntity("http://10.246.92.163:8080/wallet/getWallet?profileId=" + profileId, Wallet.class);
=======
		ResponseEntity<Wallet> wallet = restTemplate.getForEntity("http://localhost:8080/wallet/getWallet?profileId=" + profileId, Wallet.class);
>>>>>>> 2d5170e85bdaac1b47834c06275ac5fb1e0fa48c
		model.addAttribute("wallet", wallet.getBody());
		return "Wallet";

	}
	@RequestMapping("/addMoney")
	public String AddMoney() {
		ModelAndView modelAndView;
		modelAndView=new ModelAndView("AddMoney.jsp");
		return "AddMoney";
				}
}
