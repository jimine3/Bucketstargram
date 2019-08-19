package co.bucketstargram.command.myBucket;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import co.bucketstargram.common.Command;
import co.bucketstargram.dao.ReplyDao;
import co.bucketstargram.dto.ReplyDto;

public class GetReply implements Command {

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
	
	private String getJSON(String imageId, String userId) {
		if(imageId == null) {
			imageId="";
		}
		
		StringBuffer result = new StringBuffer("");
//		result.append("{\"result\":[");
//		ReplyDao dao = new ReplyDao();
//		ArrayList<ReplyDto> replyList = dao.select(imageId, userId);
//		for(int i =0; i<replyList.size();i++) {
//			//System.out.println("replyList.get("+i+").getReMemberId() = " + replyList.get(i).getReMemberId());
//			result.append("[{\"value\": \"" + replyList.get(i).getReMemberId()+ "\"},");
//			//System.out.println("replyList.get("+i+").getReReplyContents() = " + replyList.get(i).getReReplyContents());
//			if((i+1)!=replyList.size()) {
//				result.append("{\"value\": \"" + replyList.get(i).getReReplyContents()+ "\"}],");
//			}else {
//				result.append("{\"value\": \"" + replyList.get(i).getReReplyContents()+ "\"}]");
//			}
//		}
//		result.append("]}");
		
		//result.append("{\"result\":[");
		ReplyDao dao = new ReplyDao();
		ArrayList<ReplyDto> replyList = dao.select(imageId, userId);
		for(int i =0; i<replyList.size();i++) {
			if((i+1)!=replyList.size()) {
				if(i==0) {
					result.append("{\""+replyList.get(i).getReMemberId()+"\":\"" + replyList.get(i).getReReplyContents() + "\",");
				}else {
					result.append("\""+replyList.get(i).getReMemberId()+"\":\"" + replyList.get(i).getReReplyContents() + "\",");
				}
				
			}else {
				result.append("\""+replyList.get(i).getReMemberId()+"\":\"" + replyList.get(i).getReReplyContents() + "\"}");
			}
		}
		//result.append("]}");
		return result.toString();
	}
}
