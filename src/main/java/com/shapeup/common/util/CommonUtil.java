/**
 * 
 */
package com.shapeup.common.util;

import java.util.Collection;

/**
 * @author Jeyakaran
 * 
 */
public class CommonUtil {

	public static boolean isNullOrEmpty(final Collection collection) {
		return (collection == null || collection.isEmpty());
	}

}
