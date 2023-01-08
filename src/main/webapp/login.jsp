<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%

HttpSession sess = request.getSession();
//String ps=request.getParameter("password");
//out.print(sess.getAttribute("hello"));
if(sess.getAttribute("hello")!=null)//need to improve later
{
	//out.print(sess.getAttribute(password));
	String errormsg=" Your already logged";	
	request.setAttribute("error",errormsg);
	RequestDispatcher rd=request.getRequestDispatcher("home.jsp"); 	
	rd.forward(request,response);
}


%>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Login</title>
    <link rel="stylesheet" href="assets/loginPageAssets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/loginPageAssets/css/Apple-Navbar-Cinel.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/loginPageAssets/css/Login-Form-Basic-icons.css">
</head>

<body>
    <section class="position-relative py-4 py-xl-5">
        <div class="container">
            <div class="row mb-5">
                <div class="col-md-8 col-xl-6 text-center mx-auto">
                    <h2 style="padding-bottom: 0px;margin-bottom: -34px;color: rgb(23,105,187);">LOG IN</h2>
                </div>
            </div>
            <div class="row d-flex justify-content-center">
                <div class="col-md-6 col-xl-4">
                    <div class="card mb-5">
                        <div class="card-body d-flex flex-column align-items-center" style="margin-top: 0px;box-shadow: 0px 0px 10px 0px rgb(210,208,208);">
                            <div class="bs-icon-xl bs-icon-circle bs-icon-primary tada animated bs-icon my-4"><svg xmlns="http://www.w3.org/2000/svg" width="1em" height="1em" fill="currentColor" viewBox="0 0 16 16" class="bi bi-person fs-2 text-white">
                                    <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6zm2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0zm4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4zm-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10c-2.29 0-3.516.68-4.168 1.332-.678.678-.83 1.418-.832 1.664h10z"></path>
                                </svg></div>
                            <form class="text-center" method="post" action="login">
                                <div class="mb-3"><input class="form-control" type="text" data-bss-hover-animate="pulse" name="regID" placeholder="Phone Number"></div>
                                <div class="mb-3"><input class="form-control" type="password" data-bss-hover-animate="pulse" name="password" placeholder="Password"></div>
                                <div class="mb-3"><button class="btn btn-warning d-block w-100" data-bss-hover-animate="pulse" type="submit">Login</button></div>
                                <p class="text-danger pulse animated">${error }</p>
                            </form><a href="register.jsp">New Here?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <script src="assets/loginPageAssets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/loginPageAssets/js/bs-init.js"></script>
</body>

</html>