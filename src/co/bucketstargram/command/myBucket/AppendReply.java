package co.bucketstargram.command.myBucket;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.bucketstargram.common.Command;

public class AppendReply implements Command {

	@Override
	public void execute(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession session = request.getSession(true);
		String userId = (String) session.getAttribute("userid");
		System.out.println("GetReply.java | usersId = " + userId);
		
		response.setContentType("text/html;charset=UTF-8");
		
		String imageId = request.getParameter("imageId");
		System.out.println("GetReply.java | userNamed = " + imageId);
		
		response.getWriter().write(getJSON(imageId, userId));
	}

	private char[] getJSON(String imageId, String userId) {
		// TODO Auto-generated method stub
		return null;
	}

}
