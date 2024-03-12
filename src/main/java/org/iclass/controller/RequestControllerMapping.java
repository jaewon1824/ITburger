package org.iclass.controller;

import java.util.HashMap;
import java.util.Map;






public class RequestControllerMapping {
	private static final Map<RequestKeyValue,Controller> mapping = new HashMap<>();
	
	public static void init() {
//		mapping.put(new RequestKeyValue("/notice/list", "GET"), new NoticeListController());
//		mapping.put(new RequestKeyValue("/notice/read", "GET"), new NoticeReadController());
//		mapping.put(new RequestKeyValue("/notice/write", "GET"), new NoticeWriteController());
//		mapping.put(new RequestKeyValue("/notice/save", "POST"),new NoticeWriteSaveController());
//		mapping.put(new RequestKeyValue("/notice/update", "GET"), new NoticeUpdateController());
//		mapping.put(new RequestKeyValue("/notice/update", "POST"), new NoticeUpdateSaveController());
//		mapping.put(new RequestKeyValue("/notice/delete", "GET"), new NoticeDeleteController());
//		mapping.put(new RequestKeyValue("/notice/download", "POST"), new NoticeFileDownloadController());
	}
	public static Controller getController(RequestKeyValue key) {
		return mapping.get(key);
	}
}
