<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title>Registration </title>
    <link rel="stylesheet" href="assets/registrationPageAssets/bootstrap/css/bootstrap.min.css">
    <link rel="stylesheet" href="assets/registrationPageAssets/fonts/fontawesome-all.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/animate.css/3.5.2/animate.min.css">
    <link rel="stylesheet" href="assets/registrationPageAssets/css/Ludens-Users---25-After-Register.css">
</head>

<body>
    <section class="clean-block clean-form dark h-100">
        <div class="container">
            <div class="block-heading" style="padding-top: 0px;">
                <h2 style="margin-top: 100px;color: #3f7fcb;">REGISTER YOUR SELF<br></h2>
            </div>
            <form action="register" method="post" enctype="multipart/form-data" role="form" style="padding-top: 29px;"><label class="form-label text-danger">${error }</label>
                <div class="form-group mb-3"><label class="form-label">Enter Your Samsung Number</label><input class="form-control" type="tel" data-bss-hover-animate="pulse" name="rgnumber" required="" placeholder="Phone Number"></div>
                <div class="form-group mb-3"><label class="form-label">Your Name</label><input class="form-control" type="text" data-bss-hover-animate="pulse" autocomplete="off" required="" placeholder="Name Given by parent" name="name" title="Debes escribir el nombre de una ciudad"></div>
                <div class="form-group mb-3"><label class="form-label">Email</label><input class="form-control" type="email" data-bss-hover-animate="pulse" autocomplete="off" required="" placeholder="Email" name="email" title="Debes escribir el nombre de una ciudad"></div>
                <div class="form-group mb-3"><label class="form-label">Qualification</label><input class="form-control" type="text" data-bss-hover-animate="pulse" autocomplete="off" required="" placeholder="Qualification" name="department" title="Debes escribir el nombre de una ciudad"></div>
                <div class="form-group mb-3"><label class="form-label">Password</label><input class="form-control" type="text" data-bss-hover-animate="pulse" autocomplete="off" required="" placeholder="Password" name="pass" title="Debes escribir el nombre de una ciudad"></div>
                <div class="form-group mb-3"><label class="form-label">Confirm Password</label><input class="form-control" type="text" data-bss-hover-animate="pulse" autocomplete="off" required="" placeholder="ReEnter Password" title="Debes escribir el nombre de una ciudad" name="repass"></div>
                <hr style="margin-top: 30px;margin-bottom: 10px;">
                <div class="form-group mb-3"><button class="btn btn-warning d-block w-100" data-bss-hover-animate="pulse" type="submit" style="font-size: 16px;"><i class="fas fa-save"></i>&nbsp;Register</button></div><label class="form-label" style="padding-left: 0px;">Already have account?</label><a class="link-danger" href="login.jsp" style="padding-left: 7px;">Login</a>
            </form>
        </div>
    </section>
    <script src="assets/registrationPageAssets/bootstrap/js/bootstrap.min.js"></script>
    <script src="assets/registrationPageAssets/js/bs-init.js"></script>
    <script src="https://geodata.solutions/includes/countrystate.js"></script>
</body>

</html>