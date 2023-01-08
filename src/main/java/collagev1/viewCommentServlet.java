package collagev1;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet ("/viewCommentServlet")
public class viewCommentServlet extends HttpServlet {
	public void service(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException
	        {
		
		HttpSession sess = request.getSession();
		//String ps=request.getParameter("password");
		//out.print(sess.getAttribute("hello"));
		if(sess.getAttribute("hello")==null)//need to improve later
		{
			//out.print(sess.getAttribute(password));
			String errormsg=" Need to Login First";	
			request.setAttribute("error",errormsg);
			RequestDispatcher rd=request.getRequestDispatcher("login.jsp"); 	
			rd.forward(request,response);
		}
		PrintWriter out=response.getWriter();
	
		RequestDispatcher rd=request.getRequestDispatcher("viewEvent.jsp"); 	
		rd.include(request,response);
		
		try
		{	int postID=Integer.parseInt(request.getParameter("eventID"));
			
			String query="select * from comment where postID=? order by date desc , time desc;";
			String queryn="select name from studentdetail where registerID=?;";
			String db="student";
			Connection con =database.connect(db);
			PreparedStatement st=con.prepareStatement(query);
			PreparedStatement stn=con.prepareStatement(queryn);
			st.setInt(1,postID);
			
			ResultSet rs=st.executeQuery();
			if(!rs.next())
			{
				out.print("No Comment Yet");
			}
			stn.setInt(1,rs.getInt(3));
			ResultSet rsn=stn.executeQuery();
			rsn.next();
			String namen=rsn.getString(1);
			
		
			
			
			
			out.print("<!DOCTYPE html>\r\n"
					+ "<html lang=\"en\">\r\n"
					+ "\r\n"
					+ "<head>\r\n"
					+ "    <meta charset=\"utf-8\">\r\n"
					+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\r\n"
					+ "    <title>viewEvent</title>\r\n"
					+ "    <link rel=\"stylesheet\" href=\"assets/viewblogPageAssets/bootstrap/css/bootstrap.min.css\">\r\n"
					+ "    <link rel=\"stylesheet\" href=\"assets/viewblogPageAssets/fonts/font-awesome.min.css\">\r\n"
					+ "    \r\n"
					+ "    <link rel=\"stylesheet\" href=\"assets/viewblogPageAssets/css/Community-ChatComments.css\">\r\n"
					+ "    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css\">\r\n"
					+ "</head>\r\n"
					+ "\r\n"
					+ "<body>");
			
			do {
				
				
				out.print(" <div class=\"card\">\r\n"
						+ "        <div class=\"d-flex media\">\r\n"
						+ "            <div></div>\r\n"
						+ "            <div class=\"media-body\">\r\n"
						+ "                <div class=\"d-flex media\" style=\"overflow:visible;\">\r\n"
						+ "                    <div style=\"overflow: visible;margin-left: 10px;\" class=\"media-body\">\r\n"
						+ "                        <div class=\"row\">\r\n"
						+ "                            <div class=\"col-md-12\" style=\"padding-left: 10px;margin-left: 10px;\">\r\n"
						+ "                                <p><a href=\"#\">"+namen+":</a> "+rs.getString(4)+" <br>\r\n"
						+ "<small class=\"text-muted\">August 6, 2016 @ 10:35am </small></p>\r\n"
						+ "                            </div>\r\n"
						+ "                        </div>\r\n"
						+ "                    </div>\r\n"
						+ "                </div>\r\n"
						+ "            </div>\r\n"
						+ "        </div>\r\n"
						+ "    </div>");
				
				
				
				
				
////				out.print(rs.getInt(1));
////				out.println(rs.getInt(2));
//				out.println(rs.getInt(3));
//				out.println("<br>");
//				out.println(rs.getString(4));
////				out.println(rs.getString(5));
////				out.println(rs.getString(6));
//				out.println("<br>");
				
				
			}while(rs.next());
			
			out.print("    <script src=\"assets/viewblogPageAssets/bootstrap/js/bootstrap.min.js\"></script>\r\n"
					+ "    <script src=\"assets/viewblogPageAssets/js/bs-init.js\"></script>\r\n"
					+ "</body>\r\n"
					+ "\r\n"
					+ "</html>");
			
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
	        }
}
