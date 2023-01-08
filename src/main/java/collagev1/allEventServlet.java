package collagev1;

import java.io.IOException;

import java.io.PrintWriter;
import java.sql.*;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
@WebServlet ("/allEventServlet")
public class allEventServlet extends HttpServlet {
	

	 public ResultSet rs;
	public void service(HttpServletRequest request, HttpServletResponse response)  
	        throws ServletException, IOException
	        {
		HttpSession sess=request.getSession();
		PrintWriter out = response.getWriter();
		int registerID=0;
		
		try {
			try {
		 registerID=(int) sess.getAttribute("hello");
			}catch(Exception e)
			{
				String errormsg=" Need to Login First";	
				request.setAttribute("error",errormsg);
				RequestDispatcher rd=request.getRequestDispatcher("login.jsp"); 	
				rd.forward(request,response);
			}
		String query="select * from eventlist;";	
		String db="student";
		Connection con=database.connect(db);
		Statement st=con.createStatement();
		//PreparedStatement st=con.prepareStatement(query);
		//st.setInt(1,registerID);
		ResultSet rs=st.executeQuery(query);
		
		int i=1;
		String blogerror="";
		RequestDispatcher rd=request.getRequestDispatcher("nav.html"); 	
		rd.include(request,response);
		
		if(request.getAttribute("error")!=null) {
		blogerror=request.getAttribute("error").toString();	
//		out.print(request.getAttribute("error"));
		}
		
		if(!rs.next()) {
			blogerror= "No Blog Found";
//			out.print("No event Found");
		}
		
		
		
		out.print("<!DOCTYPE html>\r\n"
				+ "<html lang=\"en\">\r\n"
				+ "\r\n"
				+ "<head>\r\n"
				+ "    <meta charset=\"utf-8\">\r\n"
				+ "    <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0, shrink-to-fit=no\">\r\n"
				+ "    <title>eventList</title>\r\n"
				+ "    <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css\">\r\n"
				+ "    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css\">\r\n"
				+ "    <link rel=\"stylesheet\" href=\"assets/css/Apple-Navbar-Cinel.css\">\r\n"
				+ "    <link rel=\"stylesheet\" href=\"https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css\">\r\n"
				+ "</head>");
		out.print("<body style=\"background: rgb(255,255,255);\">");
		out.print("    <div class=\"container\">\r\n"
				+ "        <div class=\"row\">\r\n"
				+ "            <div class=\"col-md-12\">\r\n"
				+ "                \r\n"
				+ "\r\n"
				+ "                \r\n"
				+ "            </div>\r\n"
				+ "        </div>\r\n"
				+ "        <div class=\"row\">\r\n"
				+ "            <div class=\"col\" style=\"background: rgba(77,53,53,0);color: rgba(255,255,255,0);\">\r\n"
				+ "                <h1>Description</h1>\r\n"
				+ "            </div>\r\n"
				+ "        </div>\r\n"
				+ "    </div>");

		out.print("<h1 style=\"margin-left: 20px;padding-top: 27px;\">BLOG</h1>");
		out.print("<h6 style=\"margin-left: 20px; color: rgb(239,72,0); padding-top: 5px;\">"+blogerror+"</h6>");	
		
			
					do {
						
						
				
						int eventID =Integer.parseInt( rs.getString(10));
						
						
						out.print(" <div class=\"col-md-12\">\r\n"
								+ "        <h3 style=\"margin-left: 20px;padding-top: 27px;\"><b>Blog Name</b> <i>"+rs.getString(3)+"</i></h3>\r\n"
								+ "        <h4 style=\"margin-left: 20px;\"><b>Description</b> <i>"+rs.getString(4)+"</i></h4>\r\n"
								+ "        <h6 style=\"margin-left: 20px;\"><b>Upload Date</b> "+rs.getString(8)+"</h6>\r\n"
								+ "      <h6 style=\"margin-left: 20px;width: 1171px;font-size: 18px;margin-top: 5px;\"><a class=\"btn btn-warning btn-sm\" role=\"button\" style=\"margin-right: 5px;background: rgb(255,191,0);border-radius: 10px;\" href =\"viewEventServlet?eventID="+eventID+"\">View</a>\r\n"
								+ "    </div>");
				
						out.print("<hr class=\"mt-0\">");	
						
						
						
						
//			int eventID =Integer.parseInt( rs.getString(10));
//			out.print("<div class=\"card\">\r\n"
//					+ "  <div class=\"card-body\">");
//			out.println();
//			out.println("<p> <h3> Event Id");
//			out.println(" "+eventID+"<br> ");
//			out.println(" </h3></p> ");
//			out.print("<b>registerID  </b> "+rs.getInt(1)+"<br> ");
//			
//			out.print("<b>name  </b> "+rs.getString(2)+"<br> ");
//			out.print("<b>Event Name  </b>  "+rs.getString(3)+"<br> ");
//			out.print("<b>College  </b>  "+rs.getString(4)+"<br> ");
//			out.print("<b>Persion Incharge  </b>  "+rs.getString(5)+"<br> ");
//			
//			out.print("<b>Department  </b>  "+rs.getString(6)+"<br> ");
//			
//			out.print("<b>Event Detail  </b>"+rs.getString(7)+"<br> ");
//			out.print("<b>Upload Date</b>  "+rs.getString(8)+"<br> ");
//			out.println("<b>Time</b>  "+rs.getString(9)+"<br> ");
//		
			
			
			
//			out.println("<a href='viewEventServlet?eventID="+eventID+"'>view</a>");
//			out.print("<a href='editEventServlet?eventID="+eventID +"'>edit</a>  ");
//			out.println("<a href='deleteEventServlet?eventID="+eventID+"'>delete</a>");
//			
//			out.print("</div>\r\n"
//					+ "</div>");
			i++;
		}while(rs.next());

					out.print(" <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js\"></script>\r\n"
							+ "    <script src=\"assets/eventlistPageAssets/eventlistPageassets/eventlistPageAssets/js/bs-init.js\"></script>\r\n"
							+ "</body>\r\n"
							+ "\r\n"
							+ "</html>");		
							
					
					
					
					
		}catch(Exception e)
		{
			System.out.println(e);
		}
		
	}
	
	
}

