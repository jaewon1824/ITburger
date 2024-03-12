package org.iclass.controller;

import java.util.HashMap;
import java.util.Map;




public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();
	
	public static void init() {

	}
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
