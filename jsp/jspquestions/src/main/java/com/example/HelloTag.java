package com.example;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.JspWriter;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class HelloTag extends SimpleTagSupport {
	private String name;

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void doTag() throws JspException, IOException {
		JspWriter out = getJspContext().getOut();
		out.println("Hello, " + name + "!");
	}
}
