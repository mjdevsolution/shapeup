/**
 * 
 */
package com.shapeup.controller;

import java.util.ArrayList;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.shapeup.common.util.AddressType;
import com.shapeup.common.util.FlowType;
import com.shapeup.persistence.entity.Address;
import com.shapeup.persistence.entity.Customer;

/**
 * Handles requests for the application blank page.
 */
@Controller
@RequestMapping(value = "/customer")
public class CustomerController {

	@RequestMapping(value = "/new", method = RequestMethod.GET)
	public String createNew(ModelMap model) {

		Customer customer = new Customer();

		Address personalAddress = new Address();
		personalAddress.setType(AddressType.PERSONAL);

		Address officeAddress = new Address();
		personalAddress.setType(AddressType.OFFICE);

		ArrayList<Address> addresses = new ArrayList<Address>();
		addresses.add(personalAddress);
		addresses.add(officeAddress);

		customer.setAddresses(addresses);

		model.put("customer", customer);
		model.put("flowType", FlowType.NEW);

		return "customer/customerEdit";
	}

	@RequestMapping(value = "/add", method = RequestMethod.POST)
	public String add(ModelMap model) {
		model.addAttribute("error", "true");
		return "login/denied";
	}

	@RequestMapping(value = "/edit", method = RequestMethod.POST)
	public String edit(ModelMap model) {
		return "login/logout";
	}

	@RequestMapping(value = "/delete", method = RequestMethod.GET)
	public String delete(ModelMap model) {
		return "login/logout";
	}

}