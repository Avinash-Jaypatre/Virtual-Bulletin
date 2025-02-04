<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Bootstrap link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--CSS file-->
    <link rel="stylesheet" href="Style.css">
    <title>Login Page</title>
</head>
<body>
<%@include file="Navbar.jsp" %>
<div class="container">
        <div class="row">
            <div class="col-md-6 offset-md-3 rounded-2 ">
                <h2 class="text-center mt-3"><span class="Main-heading">&#10022 LOGIN PAGE &#10022</span></h2>
                <div class="bg-light border border-dark rounded-2 pt-5 px-5 mx-5 mb-5">
                    <form action="">
                        <input type="text" class="form-control my-3" name="Username" placeholder="Enter Username">
                        <input type="text" class="form-control my-3" name="Password" placeholder="Enter Password">
                        <div class="text-center py-2">
                            <input type="submit" class="btn btn-success" name="Login" value="Login">
                        </div>
                    </form>
                    <div class="row py-4">
                        <div class="col-md-6 text-center">
                            <a href="Registration.jsp" class="link text-success">Create an account</a>
                        </div>
                        <div class="col-md-6 text-center ">
                            <a href="" class="link text-danger">forgot password?</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%@include file="Footer.jsp" %>
</body>
</html>