package com.jerimiahwoods.howareyoutoday;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyLastControllerServlet")
public class MyLastControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       public MyLastControllerServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String firstName = (String) request.getAttribute("firstName");
		String lastName = (String) request.getAttribute("lastName");
		PersonModel myPerson = new PersonModel();
		myPerson.setFirstName(firstName);
		myPerson.setLastName(lastName);
		
		request.setAttribute("person", myPerson);
		request.setAttribute("test", firstName);
		//getServletContext().getRequestDispatcher("/final.jsp").forward(request, response);
		request.getRequestDispatcher("/final.jsp").forward(request, response);
	}
}
