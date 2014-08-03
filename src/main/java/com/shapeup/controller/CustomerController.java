/**
 * 
 */
package com.shapeup.controller;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.Calendar;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.multipart.MultipartHttpServletRequest;
import org.springframework.web.multipart.support.ByteArrayMultipartFileEditor;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.shapeup.common.util.AddressType;
import com.shapeup.common.util.CalendarStringConverter;
import com.shapeup.common.util.FlowType;
import com.shapeup.form.CustomerForm;
import com.shapeup.form.CustomerJson;
import com.shapeup.form.FileMeta;
import com.shapeup.persistence.entity.Address;
import com.shapeup.persistence.entity.Customer;
import com.shapeup.service.CustomerService;

/**
 * Handles requests for the application blank page.
 */
@Controller
// @RequestMapping(value = "/customer")
@SessionAttributes("customerForm")
public class CustomerController {

	private static final String UPLOAD_DIRECTORY = "imageuploads";
	private static final String RESOURCES_DIRECTORY = "resources";

	@Resource
	private CustomerService customerService;

	@Autowired
	private ServletContext context;

	@InitBinder
	public void initBinder(WebDataBinder binder) {
		binder.registerCustomEditor(Calendar.class, new CalendarStringConverter());
		binder.registerCustomEditor(byte[].class, new ByteArrayMultipartFileEditor());
	}

	@ModelAttribute("customerForm")
	public CustomerForm populateForm() {
		// populates form for the first time if its null
		return new CustomerForm();
	}

	@RequestMapping(value = "/newCustomer", method = RequestMethod.GET)
	public String createNew(@ModelAttribute("customerForm") CustomerForm customerForm, ModelMap model) {

		Customer customer = new Customer();

		Address personalAddress = new Address();
		personalAddress.setType(AddressType.PERSONAL);

		Address officeAddress = new Address();
		officeAddress.setType(AddressType.OFFICE);

		customer.getAddresses().add(personalAddress);
		customer.getAddresses().add(officeAddress);

		customerForm.init(customer);

		customer.setImageFileName("default_profile_picture.png");
		customerForm.setImage(RESOURCES_DIRECTORY + "/" + UPLOAD_DIRECTORY + "/" + customer.getImageFileName());

		customerForm.setFlowType(FlowType.NEW);

		return "/customer";
	}

	@RequestMapping(value = "/addCustomer", method = RequestMethod.POST)
	public String add(@ModelAttribute("customerForm") CustomerForm customerForm, ModelMap model, HttpSession session) {

		if (FlowType.NEW.equals(customerForm.getFlowType())) {
			customerService.create(customerForm.getCustomer());
		} else if (FlowType.EDIT.equals(customerForm.getFlowType())) {
			customerService.update(customerForm.getCustomer());
		}

		customerForm.clear();

		return "/customerDetails";
	}

	@RequestMapping(value = "/editCustomer", method = RequestMethod.GET)
	public String edit(@RequestParam(value = "customerId", required = true) Long customerId,
			@ModelAttribute("customerForm") CustomerForm customerForm, ModelMap model, HttpSession session) {
		Customer customer = customerService.getCustomerById(customerId);

		customerForm.init(customer);
		customerForm.setFlowType(FlowType.EDIT);
		customerForm.setImage(RESOURCES_DIRECTORY + "/" + UPLOAD_DIRECTORY + "/" + customer.getImageFileName());

		return "/customer";
	}

	@RequestMapping(value = "/removeCustomer", method = RequestMethod.GET)
	public String delete(ModelMap model) {
		return "login/logout";
	}

	@RequestMapping(value = "/customers", method = RequestMethod.GET)
	public String customers() throws IOException {
		return "/customerDetails";
	}

	@RequestMapping(value = "/customerDetails", method = RequestMethod.GET, produces = "application/json")
	public @ResponseBody
	String springPaginationDataTables() throws IOException {

		List<Customer> allCustomers = customerService.getAllCustomers();

		CustomerJson personJsonObject = new CustomerJson();
		personJsonObject.setiTotalDisplayRecords(allCustomers.size());
		personJsonObject.setiTotalRecords(allCustomers.size());
		personJsonObject.setAaData(allCustomers);

		Gson gson = new GsonBuilder().setPrettyPrinting().create();
		String json2 = gson.toJson(personJsonObject);

		return json2;
	}

	@RequestMapping(value = "/upload", method = RequestMethod.POST)
	public @ResponseBody
	FileMeta upload(@ModelAttribute("customerForm") CustomerForm customerForm, MultipartHttpServletRequest request, HttpServletResponse response) {

		Iterator<String> itr = request.getFileNames();
		MultipartFile mpf = request.getFile(itr.next());

		customerForm.getCustomer().setImageFileName(mpf.getOriginalFilename());
		customerForm.setImage(RESOURCES_DIRECTORY + "/" + UPLOAD_DIRECTORY + "/" + customerForm.getCustomer().getImageFileName());

		try {
			this.saveMultipartToDisk(mpf, customerForm.getCustomer());
		} catch (Exception e) {
			e.printStackTrace();
		}

		FileMeta fileMeta = new FileMeta();
		fileMeta.setFileName(customerForm.getImage());
		return fileMeta;
	}

	@RequestMapping(value = "/" + RESOURCES_DIRECTORY + "/" + UPLOAD_DIRECTORY + "/{customerimage:.*}", method = RequestMethod.GET)
	public ResponseEntity<byte[]> showImage(@PathVariable("customerimage") String damageImage) {
		HttpHeaders headers = new HttpHeaders();
		headers.setContentType(MediaType.IMAGE_JPEG);
		headers.set("Content-Disposition", "attachment");
		String destination = context.getRealPath("/") + RESOURCES_DIRECTORY + "\\" + UPLOAD_DIRECTORY + "\\" + damageImage;
		File file = new File(destination);
		byte[] fileContent;
		FileInputStream fin = null;
		try {
			fin = new FileInputStream(file);
			fileContent = new byte[(int) file.length()];
			fin.read(fileContent);
		} catch (FileNotFoundException e) {
			return new ResponseEntity<byte[]>(new byte[0], headers, HttpStatus.CONFLICT);
		} catch (IOException e) {
			return new ResponseEntity<byte[]>(new byte[0], headers, HttpStatus.CONFLICT);
		} finally {
			try {
				if (fin != null) {
					fin.close();
				}
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
		headers.setContentLength(fileContent.length);
		return new ResponseEntity<byte[]>(fileContent, headers, HttpStatus.OK);
	}

	private String calculateDestinationDirectory(Customer customer) {
		String result = this.context.getRealPath("");
		result += "\\";
		result += RESOURCES_DIRECTORY;
		result += "\\";
		result += UPLOAD_DIRECTORY;
		return result;
	}

	private String calculateDestinationPath(MultipartFile file, Customer customer) {
		String result = this.calculateDestinationDirectory(customer);
		result += "\\";
		result += file.getOriginalFilename();
		return result;
	}

	private void saveMultipartToDisk(MultipartFile file, Customer customer) throws Exception {
		File dir = new File(this.calculateDestinationDirectory(customer));
		if (!dir.exists()) {
			dir.mkdirs();
		}
		File multipartFile = new File(this.calculateDestinationPath(file, customer));
		file.transferTo(multipartFile);
	}
}