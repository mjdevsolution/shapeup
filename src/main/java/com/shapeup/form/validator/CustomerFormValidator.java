/**
 * 
 */
package com.shapeup.form.validator;

import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.shapeup.form.CustomerForm;

/**
 * @author Jeyakaran
 * 
 */
public class CustomerFormValidator implements Validator {

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
		// ValidationUtils.rejectIfEmptyOrWhitespace(errors, "customer.nicNo", "nicNo.required");

		
//		if (customerForm.getCustomer().get <= 0) {
//			errors.rejectValue("id", "negativeValue", new Object[] { "'id'" }, "id can't be negative");
//		}

	}

}
