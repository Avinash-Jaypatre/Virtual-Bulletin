<%@page import="java.sql.*" %>
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
    <title>Notice Page</title>
</head>
<body>
	<%@include file="Navbar.jsp" %>
	
	<!-- Database code Start -->
        <%
        	String url ="jdbc:mysql://localhost:3306?user=root&password=root";
        
        	try
        	{
        		Class.forName("com.mysql.jdbc.Driver");
        		Connection con = DriverManager.getConnection(url);
        		Statement stmt = con.createStatement();
        		
        		String query = "select * from ragistration.notice";
        		ResultSet rs = stmt.executeQuery(query);
        		while(rs.next())
        		{
         %>
         		<div class="row my-3  py-3 shadow-lg">
            <div class="col-md-5 px-5 offset-md-1 py-4 border border-dark rounded-2">
                <div>
                    <img src="notice.webp" alt="About-Us" height="100%" width="100%" class="img-responsive">
                </div>
            </div>
            <div class="col-md-5 pt-4 border border-dark rounded-2">
                <div class="ps-4">
                    <h6 class="my-2">Topic :- <%= rs.getString(2) %></h6>
                    <h6 class="my-2">Notice :- <%= rs.getString(3) %> </h6>
                    <div class="text-center">
                        
                    </div>
                </div>
            </div>
        </div>
         <%	
        		}
        	}
        	catch(Exception e)
        	{
        		System.out.println("Exception handled...");
        	}
        %>
        <!-- Database code end -->
	<%@include file="Footer.jsp" %>
</body>
</html>