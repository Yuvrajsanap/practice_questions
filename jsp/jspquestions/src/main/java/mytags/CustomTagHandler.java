package mytags;

import java.io.IOException;

import jakarta.servlet.jsp.JspException;
import jakarta.servlet.jsp.tagext.SimpleTagSupport;

public class CustomTagHandler extends SimpleTagSupport {

	private String name;

	public void setName(String name) {
		this.name = name;
	}

	@Override
	public void doTag() throws JspException, IOException {
		// Output a greeting message
		getJspContext().getOut().write("Hello, " + name + "!");
	}
}
