<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
HttpSession sess=request.getSession(false);
if(sess.getAttribute("hello")==null)//need to improve later
{
	//out.print(sess.getAttribute(password));
	String errormsg=" Need to Login First";	
	request.setAttribute("error",errormsg);
	RequestDispatcher rd=request.getRequestDispatcher("login.jsp"); 	
	rd.forward(request,response);
}
if(request.getAttribute("registerID")==null)
{
	//String errormsg=" select event first";	
	//request.setAttribute("error",errormsg);
	//RequestDispatcher rd=request.getRequestDispatcher("editProfileServlet"); 	
	//rd.forward(request,response);
	response.sendRedirect("viewProfileServlet");
}



%>
<!--  
<form action="updateProfileServlet" method="post">
Enter Registration number
<input type ="text" value="${registerID }" name="rgnumber" readonly>Only be edited by admin
<br><br>
Enter college name

<input type ="text" value="${college }" name="college">
<br><br>
Enter your name

<input type ="text" value="${name }" name="name">
<br><br>
Enter email
<input type ="email" value="${email }" name="email">
<br><br>

Enter department
<input type ="text" value="${department }" name="department">
<br><br>

<input type="submit" value ="update Profile">




</form>
<br><br>
change password click  <a href ="updatePassword.jsp" >here</a>


-->

 <!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>profile</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=ABeeZee">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Lato">
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Muli">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/profilePageAssets/css/LinkedIn-like-Profile-Box.css">
    <link rel="stylesheet" href="assets/profilePageAssets/css/Profile-Edit-Form-styles.css">
    <link rel="stylesheet" href="assets/profilePageAssets/css/Profile-Edit-Form.css">
</head>

<body>
   <jsp:include page="nav.html" /> 
    <div class="container profile profile-view" id="profile">
        <div class="row">
            <div class="col-md-12 alert-col relative">
                <div class="alert alert-info alert-dismissible absolue center" role="alert"><button type="button" class="btn-close" data-bs-dismiss="alert" aria-label="Close"></button><span>Profile save with success</span></div>
            </div>
        </div>
        <form action="updateProfileServlet" method="post">
            <div class="row profile-row">
                <div class="col-md-4 relative">
                    <div class="avatar" style="background: #dedede;">
                        <div class="avatar-bg center" style="margin-top: 100px;"></div>
                    </div>
                </div>
                <div class="col-md-8">
                    <h1 style="color: rgb(1,57,113);">Edit Profile </h1>
                    <hr>
                    <div class="row">
                        <div class="col-sm-12 col-md-9 col-lg-9 col-xl-8">
                            <div class="form-group mb-3" style="color: rgb(0,42,84);"><label class="form-label">Number</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="rgnumber" placeholder="Enter Your Samsung number" value="${registerID }" required></div>
                            <div class="form-group mb-3" style="color: rgb(0,42,84);"><label class="form-label">Name</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="name" placeholder="Name" value="${name }" required></div>
                            <div class="form-group mb-3" style="color: rgb(0,42,84);"><label class="form-label">Qualification</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="department" placeholder="Qualification" value="${department }" required></div>
                            <div class="form-group mb-3" style="color: rgb(0,42,84);"><label class="form-label">Email</label><input class="form-control" type="text" data-bss-hover-animate="pulse" name="email" placeholder="Email" value="${email }" required></div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12 content-right">
                        <button class="btn btn-primary font-monospace form-btn" data-bss-hover-animate="pulse" type="submit" style="background: rgb(198,190,2);font-size: 15px;height: 30.5px;">SAVE </button>
                        <a class="btn btn-danger font-monospace form-btn" role="button" data-bss-hover-animate="pulse" href="home.jsp" style="background: rgb(119,119,119);font-size: 15px;width: 100px;height: 30.5px;">CANCEL </a>
                        <a class="btn btn-light font-monospace form-btn" role="button" data-bss-hover-animate="pulse" href="updatePassword.jsp" style="height: 30px;width: 160.383px;">Change Password</a></div>
                    </div>
                </div>
            </div>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/profilePageAssets/js/bs-init.js"></script>
    <script src="assets/profilePageAssets/js/Profile-Edit-Form.js"></script>
</body>

</html>







