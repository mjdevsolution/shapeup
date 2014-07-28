/**
 * 
 */
package com.shapeup.controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.shapeup.common.util.CalendarStringConverter;
import com.shapeup.common.util.FlowType;
import com.shapeup.form.CustomerForm;
import com.shapeup.form.CustomerJsonObject;
import com.shapeup.persistence.entity.Customer;
import com.shapeup.service.CustomerService;

/**
 * Handles requests for the application blank page.
 */
@Controller
// @RequestMapping(value = "/customer")
public class CustomerController {

	@Resource
	private CustomerService customerService;

	@RequestMapping(value = "/newCustomer", method = RequestMethod.GET)
	public String createNew(@ModelAttribute("customerForm") CustomerForm customerForm, ModelMap model) {

		model.put("customerForm", customerForm);
		model.put("flowType", FlowType.NEW);

		return "/customer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String add(@ModelAttribute("customerForm") CustomerForm customerForm, ModelMap model) {
		customerService.create(customerForm.getCustomer());
		return "/home";
	}

	@RequestMapping(value = "/editCustomer", method = RequestMethod.POST)
	public String edit(ModelMap model) {
		return "login/logout";
	}

	@RequestMapping(value = "/removeCustomer", method = RequestMethod.GET)
	public String delete(ModelMap model) {
		return "login/logout";
	}

	@RequestMapping(value = "/customerDetails", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody
	String springPaginationDataTables() throws IOException {

		List<Customer> allCustomers = customerService.getAllCustomers();

		CustomerJsonObject personJsonObject = new CustomerJsonObject();
		personJsonObject.setiTotalDisplayRecords(allCustomers.size());
		personJsonObject.setiTotalRecords(allCustomers.size());
		personJsonObject.setAaData(allCustomers);

		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json2 = gson.toJson(personJsonObject);

		return json2;
	}

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Calendar.class, new CalendarStringConverter());
	}

}