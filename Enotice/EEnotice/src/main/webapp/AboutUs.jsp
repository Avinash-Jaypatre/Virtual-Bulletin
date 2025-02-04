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
    <title>About Us</title>
</head>
<body>
<%@include file="Navbar.jsp"%>
<!--About Us Start-->
    <section id="AboutUs">
    	<div class="container pb-3 shadow-lg">
        <h2 class="text-center mt-5"><span class="Main-heading">&#10022 ABOUT US &#10022</span></h2>
        <div class="row my-4">
            <div class="col-md-5 px-5 offset-md-1 pt-4">
                <div>
                    <img src="dyimage.jpeg" alt="About-Us" height="100%" width="100%" class="img-responsive">
                </div>
            </div>
            <div class="col-md-5 pt-4">
                <div class="text-center">Since 1983, D Y Patil Group of Institutions is leading group known amongst the top education institutions in India. The D Y Patil University, Pune was established by and under the Government of Maharashtra Act No. VI of 2019 and recognized by UGC, New Delhi, India

                D Y Patil Group of Institutions is founded to provide quality education and contribute towards the social responsibility. The foundation was laid by Father Founder Hon’ble Dr D Y Patil in the year 1983 by starting the first engineering college in Navi Mumbai. Group began to grow exponentially in all the fields of education namely, Agriculture, Medical, Science, Engineering, Management, Design and many more. Under the leadership of father founder Padma Shri Dr D Y Patil group has more 12 campuses across India those includes 6 Universities and more than 150 Institutes which are engaged in delivering education from KG to PG.</div>
            </div>
        </div>
    </div>
    </section>
    <!--About Us End-->
    <%@include file="Footer.jsp" %>
</body>
</html>