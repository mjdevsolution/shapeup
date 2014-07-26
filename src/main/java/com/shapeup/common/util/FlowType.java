/**
 * 
 */
package com.shapeup.common.util;

/**
 * @author Jeyakaran
 * 
 */
public enum FlowType {

	NEW("NEW"), EDIT("EDIT");

	private String flow;

	private FlowType(final String flow) {
		this.flow = flow;
	}

	public String getFlow() {
		return flow;
	}

}
