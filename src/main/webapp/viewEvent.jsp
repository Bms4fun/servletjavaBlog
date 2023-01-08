<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>




<!-- 
${name }
<br>
${eventname }
<br>
${college }
<br>
${pname }
<br>
${department }
<br>
${eventdetail }
<br>
${eventID }
<br>
${registerID }
<br>
${date }
<br>
${time }
<br>
${msg }
<form action="postCommentServlet"></form>
<input type= "hidden" value ="${eventID }" name ="eventID" >
${error }
<textarea name="comment" placeholder="Comment here" rows="2" cols="50"></textarea>
<input type = "submit" value="Comment">
</form> -->
<% 

//String ps=request.getParameter("password");
//out.print(sess.getAttribute("hello"));
HttpSession sess = request.getSession(false);
if(sess.getAttribute("hello")==null)//need to improve later
{
	//out.print(sess.getAttribute(password));
	String errormsg=" Need to Login First";	
	request.setAttribute("error",errormsg);
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp"); 	
	rd.forward(request,response);
}

if(request.getAttribute("eventname")==null)
{
	String errormsg=" select event first";	
	request.setAttribute("error",errormsg);
	RequestDispatcher rd=request.getRequestDispatcher("myEventServlet"); 	
	rd.forward(request,response);
}



%>




<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>viewEvent</title>
    <link rel="stylesheet" href="assets/viewblogPageAssets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/viewblogPageAssets/fonts/font-awesome.min.css">

    <link rel="stylesheet" href="assets/viewblogPageAssets/css/Community-ChatComments.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
</head>

<body>
    <jsp:include page="nav.html" /> 
    <section id="content-1" class="py-5" style="margin-bottom: -48px;">
        <div class="container text-success py-3">
            <div class="row text-center mb-5">
                <div class="col-xl-9 mx-auto" style="color: rgb(44,70,96);">
                    <h6 class="m-0"></h6>
                    <h2 class="mb-3" style="margin-bottom: 10px;"><span style="text-transform:uppercase;">${eventname }</span></h2><small class="text-black-50">${college }</small>
                    <p style="color: rgb(0,57,113);font-size: 20px;">${eventdetail }<br></p>
                <h6 class="text-end">UPLOADED DATE ${date } @ ${time }</h6>
                </div>
            </div>
            <form action="postCommentServlet" method="get">
            <input type= "hidden" value ="${eventID }" name ="eventID" >
            <div><textarea style="width: 205px;height: 30px;" placeholder="Add a comment" name="comment"></textarea><button class="btn btn-warning" type="submit" style="padding-top: 0px;padding-bottom: 0px;margin-bottom: 10px;margin-top: -10px;" >Comment</button>
            </div></form>
           
            <div>
                <h6 class="text-success">${msg }</h6>
                <hr class="mt-0">
            </div>
        </div>
    </section>
 
    <script src="assets/viewblogPageAssets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/viewblogPageAssets/js/bs-init.js"></script>
</body>

</html>