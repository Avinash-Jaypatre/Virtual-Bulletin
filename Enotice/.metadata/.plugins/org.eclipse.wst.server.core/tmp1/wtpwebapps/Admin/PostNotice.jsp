<%@page import="java.sql.*" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
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
    <title>Post Notice</title>
</head>
<body>
<!--Navbar Start-->
    <nav class="navbar navbar-expand-sm bg-dark navbar-dark sticky-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">
                <img src="" alt="">
            </a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#collapsibleNavbar">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse justify-content-end " id="collapsiblenavbar">
                <ul class="navbar-nav d-flex">
                    <li class="nav-item">
                        <a href="index.jsp" class="nav-link">HOME</a>
                    </li>                 
                
                   
                    <li class="nav-item">
                        <a href="PostNotice.jsp" class="nav-link">POST NOTICE</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>
    <!--Navbar End-->
    <div class="container">
        <h1 class="text-center mt-3">POST NOTICE</h1>
        <div class="row mt-3">
            <div class="col-md-6 offset-md-3 rounded border border-dark px-5">
                <form action="">
                    <div class="text-center px-5 mt-5">
                        <input type="text" name="postnotice" class="form-control" placeholder="Enter title of notice" >
                    </div>
                    <div class="my-4">
                        <label>Message</label>
                        <textarea id="" class="form-control" name="post" rows="4" cols="50"></textarea>
                    </div>
                    <div class="text-center mb-3">
                        <input class="btn btn-success" type="submit" name="submit" value="POST">
                    </div>
                </form>
                <!-- Database Code start -->
                    <%
                    	String postnotice = request.getParameter("postnotice");
                    	String post = request.getParameter("post");
                    	
                     	String x = request.getParameter("submit");
                     	if(x!=null && x.equals("POST"))
                     	{
         	          	 	String url = "jdbc:mysql://localhost:3306?user=root&password=root";
       
                    	 	try
                    	 	{
                    	 		Class.forName("com.mysql.jdbc.Driver");
                    	 		Connection con = DriverManager.getConnection(url);
                    	 		
                    	 		String query = "insert into ragistration.notice(postnotice,post) values(?,?)";
                    	 		
                    	 		PreparedStatement pstmt = con.prepareStatement(query);
                    	 		pstmt.setString(1,postnotice);
                    	 		pstmt.setString(2,post);
                    	 		pstmt.executeUpdate();
                    	 		System.out.println("Data entered....");
                    	 	}
                    	 	catch(Exception e)
                    	 	{
                    	 		e.printStackTrace();
                    	 		System.out.println("Exception handled....!");
                    	 	}
                     	}
                    %>
                    <!-- Database Code End -->
            </div>
        </div>
    </div>
</body>
</html>