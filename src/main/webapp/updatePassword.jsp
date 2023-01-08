<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!--  <!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form action="updatePasswordServlet" method="post">

Enter current password<br>
<input type="password" name="currentPassword">${wrongPassword }<br>
Enter New password
<br>
<input type= "password" name="newpassword">
<br>
Confirm new password<br>
<input type = "password" name ="renewpassword"> 
<br>
<br>
${notMatch }
<input type= "submit" value="update Password">
</form>
</body>
</html>

-->






<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Change Password</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/css/bootstrap.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
   
</head>

<body>
     <jsp:include page="nav.html" /> 
    <div class="container">
        <div class="row">
            <div class="col">
                <div class="shadow" style="width: 100%;min-height: 630px;margin-top: 119px;background-color: rgba(255,255,255,0.79);">
                    <form style="padding-top: 70px;" action="updatePasswordServlet" method="post">
                        <div class="form-group mb-3">
                            <h1 class="text-center">Change Password</h1>
                            <h5 class="text-center text-danger tada animated">${wrongPassword }</h5>
                        </div>
                        <div class="form-group mb-3"><input class="form-control form-control-lg" type="password" data-bss-hover-animate="pulse" style="width: 50%;margin-left: 25%;margin-bottom: 10px;" required placeholder="Current Password" name="currentPassword">
                        <input class="form-control form-control-lg" type="password" data-bss-hover-animate="pulse" style="width: 50%;margin-left: 25%;margin-bottom: 10px;" required placeholder="New Password" name="newpassword">
                        <input class="form-control form-control-lg" type="password" data-bss-hover-animate="pulse" style="width: 50%;margin-left: 25%;" required placeholder="Confirm Password" name="renewpassword"></div>
                        <div class="form-group mb-3"><button class="btn btn-warning btn-lg" data-bss-hover-animate="pulse" style="width: 50%;margin-left: 25%;" type="submit">Update Password</button></div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="assets/passupPagaAssets/js/bs-init.js"></script>
   
</body>

</html>