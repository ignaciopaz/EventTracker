package com.pluralsight.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.pluralsight.model.Attendee;

@Controller
public class AttendeeController {

	@RequestMapping(value="/attendee", method=RequestMethod.GET)
	public String displayAttendee(Model model){
		Attendee attendee = new Attendee();
		model.addAttribute("attendeeInfo", attendee);
		
		return "attendee";
	}
	
	@RequestMapping(value="/attendee", method=RequestMethod.POST)
	public String processAttendee(@ModelAttribute("attendeeInfo") Attendee attendee){
		System.out.println(attendee.getEmail());
		
		return "redirect:index.html";
	}
	
	
}
