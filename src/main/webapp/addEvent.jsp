<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

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


%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>AddBlog</title>
    <link rel="stylesheet" href="assets/addBlogPageAssets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Open+Sans:400,300,600,80">
 

    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/addBlogPageAssets/css/JLX-Contact-Form-with-Placeholder-FI-1.css">
    <link rel="stylesheet" href="assets/addBlogPageAssets/css/JLX-Contact-Form-with-Placeholder-FI.css">
  

</head>
 <jsp:include page="nav.html" /> 
<body style="color: rgb(112,145,177);">

    <section>
    <form id="Form1" action="home.jsp" method="post"></form>
     <form method="post" action="addEventServlet">
        <div id="multple-step-form-n" class="container overflow-hidden" style="margin-top: 0px;margin-bottom: 10px;padding-bottom: 300px;padding-top: 57px;">
            <div class="row" id="contact">
                <div class="col-md-12">
                    <div>
                        <h1 class="text-center" style="margin-bottom: 31px;margin-top: 10px;font-size: 50px;font-weight: bold;">ADD BLOG</h1>
                        <h1>Blog Detail</h1>
                        <hr class="mt-0">
                    </div>
                </div>
                <div class="col-md-6">
                   
                        <div class="form-group mb-3"><label class="form-label">Blog name</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="eventname"></div>
                        <div class="form-group mb-3"><label class="form-label">Blog Description</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="college"></div>
                        <div class="form-group mb-3"><label class="form-label">Category</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="department"></div>
                 
                </div>
                <div class="col-md-6">
                    <div>
                        <h1 style="font-size: 35px;">Write Blog Here</h1>
                        <hr class="mt-0">
                    </div>
                    
                        <div class="form-group mb-3"><textarea class="form-control" data-bss-hover-animate="pulse" style="font-size: 20px;background: rgb(255,255,255);" name="eventdetail"></textarea></div>
                   <button class="btn btn-light link-dark text-bg-warning" data-bss-hover-animate="pulse" type="submit" style="margin-right: 10px;background: rgb(255,255,255);">POST</button>
                   <button class="btn btn-light" data-bss-hover-animate="pulse" type="submit" style="margin-left: 10px;background: rgb(232,232,232);" form="Form1">Cancel</button>
                </div>
            </div>
        </div>
         </form>
    </section>
    <script src="assets/addBlogPageAssets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/addBlogPageAssets/js/bs-init.js"></script>
    <script src="https://geodata.solutions/includes/countrystate.js"></script>
   
</body>

</html>
