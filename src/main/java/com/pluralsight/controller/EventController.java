package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.pluralsight.model.Event;

@Controller
@SessionAttributes("myEventCommand")	// store the object into session
public class EventController {
	
	@RequestMapping(value="/event", method=RequestMethod.GET)
	public String displayEventPage(Model model){
		Event event = new Event();
		event.setName("Java user group");
		model.addAttribute("myEventCommand", event);
				
		return "event";
	}

	
	@RequestMapping(value="/event", method=RequestMethod.POST)
	public String processEvent(@ModelAttribute("myEventCommand") Event event){
		System.out.println(event);
		
		return "forward:index.html";
	}
}
