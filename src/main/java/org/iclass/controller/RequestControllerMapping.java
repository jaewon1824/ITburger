package org.iclass.controller;

import java.util.HashMap;
import java.util.Map;

import org.iclass.controller.user.LoginActionController;
import org.iclass.controller.user.LoginViewController;




public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();
	
	public static void init() {
		mapping.put(new RequestKeyValue("/login", "GET"), new LoginViewController());
		mapping.put(new RequestKeyValue("/login", "POST"), new LoginActionController());
	}
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
