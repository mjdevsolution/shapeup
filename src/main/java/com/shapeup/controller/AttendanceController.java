package com.shapeup.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class AttendanceController {
	
	@RequestMapping(value = "/loadAttendance", method = RequestMethod.GET)
	public String loadAttendance () {
		return "/attendance";
	}

}
