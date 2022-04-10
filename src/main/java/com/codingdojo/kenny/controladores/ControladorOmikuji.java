package com.codingdojo.kenny.controladores;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ControladorOmikuji {
	
	/*
	 * Routes
	 */
	@RequestMapping(value="/omikuji", method=RequestMethod.GET)
	public String formulario(Model model) {
		ArrayList<Integer> lista_5_to_25 = new ArrayList<Integer>();
		
		for (Integer i = 5; i < 26; i++) {
			lista_5_to_25.add(i);
		}
		model.addAttribute("lista_5_to_25",lista_5_to_25);
		
		
		return "formulario.jsp";
	}
	
	@RequestMapping(value="/submit", method=RequestMethod.POST)
	public String submit(@RequestParam(value="number") Number number,
						 @RequestParam(value="city") String city,
						 @RequestParam(value="person") String person,
						 @RequestParam(value="hobby") String hobby,
						 @RequestParam(value="thing") String thing,
						 @RequestParam(value="message") String message,
						 HttpSession session){
		
		session.setAttribute("number", number);
		session.setAttribute("city", city);
		session.setAttribute("person", person);
		session.setAttribute("hobby", hobby);
		session.setAttribute("thing", thing);
		session.setAttribute("message", message);
		
		
		return "redirect:/omikuji/show";
	}
	@RequestMapping("/omikuji/show")
	public String dashboard() {
		
		return "show.jsp";
	}
	
	
}
