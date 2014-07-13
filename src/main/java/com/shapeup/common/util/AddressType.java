/**
 * 
 */
package com.shapeup.common.util;

/**
 * @author Jeyakaran
 * 
 */
public enum AddressType {

	PERSONAL("PERSONAL"), OFFICE("OFFICE");

	private String type;

	private AddressType(final String type) {
		this.type = type;
	}

	public String getType() {
		return type;
	}

}
