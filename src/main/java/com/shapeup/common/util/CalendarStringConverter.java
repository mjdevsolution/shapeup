/**
 * 
 */
package com.shapeup.common.util;

import java.beans.PropertyEditorSupport;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;

/**
 * @author Jeyakaran
 * 
 */
public class CalendarStringConverter extends PropertyEditorSupport {
	@Override
	public void setAsText(String text) throws IllegalArgumentException {
		try {
			Calendar cal = Calendar.getInstance();
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			cal.setTime(sdf.parse(text));
			setValue(cal);
		} catch (ParseException e) {
			setValue(null);
		}
	}

	@Override
	public String getAsText() {
		String calString = "";
		Calendar cal = (Calendar) getValue();
		if (cal != null) {
			SimpleDateFormat sdf = new SimpleDateFormat("dd-MM-yyyy");
			calString = sdf.format(cal.getTime());
		}
		return calString;
	}
}
