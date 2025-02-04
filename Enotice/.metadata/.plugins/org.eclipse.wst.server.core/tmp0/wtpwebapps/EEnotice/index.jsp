<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <!--Bootstrap link-->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <!--Javascript link-->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <!--CSS file-->
    <link rel="stylesheet" href="style.css">
    <title>Agro-Tourism</title>
    <link rel="icon" type="image/x-icon" href="Banner1.jpg">
    <style>
     .banner-image
     {
        background-image: url(Banner.jpg);
        height: auto;
        width: auto;
        background-repeat: no-repeat;
        /*background-position: left center;*/
        /* background-position: right center; */
        background-position: 100% 40%;
        background-size: cover;
      }
      .banner-heading
      {
        /* font-size:large;*/
        font-weight:bolder;
        /* font-weight:normal;
        /* font-weight:normal;*/
      }
      .Main-heading
      {
        font-weight:bolder;
      }
    </style>
</head>
<body>
	<%@include file="Navbar.jsp" %>
    <!--Banner Start-->
    <div class="container-fluid banner-image">
        <div class="row py-5">
            <div class="col-md-10 offset-md-1 my-5 py-5">
                <div class="row py-5">
                    <div class="col-md-12 pt-5">
                        <h1 class="pt-5 mt-4 banner-heading display-4"><span class="text-light"></span></h1>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--Banner End-->
    
    <%@include file="Footer.jsp" %>
</body>
</html>