package com.jerimiahwoods.howareyoutoday;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/MyOtherControllerServlet")
public class MyOtherControllerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
       public MyOtherControllerServlet() {
        super();

    }

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		String status = request.getParameter("status");
		String message;
		switch (status) {
			case "good":
				message = "I'm glad you're doing well. I'm having a pretty great day myself.";
				break;
			case "okay":
				message = "That's good to hear. Not great. Not bad. 'Okay' days are a blessing in their own way.";
				break;
			case "bad":
				message = "That's a bummer. I'm sorry you're not having a good day. Keep looking up.";
				break;
			default:
				message = "We seem to be encountering technical difficulties. I apologize.";		
		}
		request.setAttribute("message", message);
		
		getServletContext().getRequestDispatcher("/reply.jsp").forward(request, response);

	}
}
