package com.example;

import jakarta.servlet.jsp.tagext.PageData;
import jakarta.servlet.jsp.tagext.ValidationMessage;

@jakarta.servlet.annotation.WebListener
public class TagLibrary extends jakarta.servlet.jsp.tagext.TagLibraryValidator {
	@Override
	public ValidationMessage[] validate(String prefix, String uri, PageData page) {
		return null;
	}
}
