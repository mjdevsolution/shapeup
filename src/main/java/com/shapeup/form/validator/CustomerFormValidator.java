/**
 * 
 */
package com.shapeup.form.validator;

import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.shapeup.form.CustomerForm;

/**
 * @author Jeyakaran
 * 
 */
public class CustomerFormValidator implements Validator {

	private Pattern emailPattern;
	private Pattern nicNoPattern;
	private Matcher matcher;

	private static final String EMAIL_PATTERN = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@" + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";

	private static final String NIC_NO_PATTERN = "^[0-9]{9}[vVxX]$";

	public CustomerFormValidator() {
		emailPattern = Pattern.compile(EMAIL_PATTERN);
		nicNoPattern = Pattern.compile(NIC_NO_PATTERN);
	}

	@Override
	public boolean supports(Class<?> clazz) {
		return CustomerForm.class.equals(clazz);
	}

	@Override
	public void validate(Object obj, Errors errors) {

		CustomerForm customerForm = (CustomerForm) obj;

		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customer.firstName", "customer.firstName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customer.lastName", "customer.lastName.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customer.nicNo", "customer.nicNo.required");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customer.dateOfBirth", "customer.dateOfBirth.required");

		// NIC No validation

		matcher = nicNoPattern.matcher(customerForm.getCustomer().getNicNo());
		if (!matcher.matches()) {
			errors.rejectValue("customer.nicNo", "customer.nicNo.invalid");
		}

		// if (customerForm.getCustomer().get <= 0) {
		// errors.rejectValue("id", "negativeValue", new Object[] { "'id'" },
		// "id can't be negative");
		// }

	}

	public static void main(String args[]) {
		Pattern nicNoPattern;
		Matcher matcher;

		nicNoPattern = Pattern.compile(NIC_NO_PATTERN);

		matcher = nicNoPattern.matcher("873220040V");
		System.out.println(matcher.matches());
	}

}
