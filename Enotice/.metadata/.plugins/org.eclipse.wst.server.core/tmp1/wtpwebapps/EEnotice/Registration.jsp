<%@page import="java.sql.*" %>
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
    <title>Registration Page</title>
</head>
<body>
    <%@include file="Navbar.jsp"%>
    <div class="container">
        <div class="row pt-2">
            <div class="col-md-6 offset-md-3 pt-3 border border-dark rounded-3">
                <h2 class="text-center mb-3"><span class="Main-heading">&#10022 REGISTRATION PAGE  &#10022</span></h2>
                <div>
                    <form action="">
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="Fname" placeholder="First Name" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="Lname" placeholder="Last Name" required>
                            </div>
                        </div>
                        <input type="email" class="form-control my-2 " name="Email" placeholder="Enter an Email" required>
                        <input type="number" class="form-control" name="Mobile" placeholder="Enter Mobile Number" required>
                        <input type="text" class="form-control my-2" name="Address" placeholder="Enter Address" required>
                        <div class="row">
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="Password" placeholder="Enter Password" required>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="Cpassword" placeholder="Confirm Password" required>
                            </div>
                        </div> 
                        <div class="row my-2">
                            <div class="col-md-6">
                                <select name="Uquestion" id="" class="form-control" required>
                                    <option value="" selected disabled>Select any security question</option>
                                    <option value="What is your favourite book">What is your favourite book</option>
                                    <option value="What is your favourite actor">What is your favourite actor</option>
                                    <option value="What is your school name">What is your school name</option>
                                    <option value="What is your favourite sport">What is your favourite sport</option>
                                </select>
                            </div>
                            <div class="col-md-6">
                                <input type="text" class="form-control" name="Uanswer" placeholder="Answer" required>
                            </div>
                        </div> 
                        <div class="text-center my-3">
                            <input type="submit" class="btn btn-outline-success" name="submit" value="REGISTER" required >
                        </div>   
                        <div class="text-center mb-4">
                            <a href="LoginPage.jsp" class="link text-success">Already have an account?</a>
                        </div>                    
                    </form>
                    <!-- Database Code start -->
                    <%
                    	String Fname = request.getParameter("Fname");
                    	String Lname = request.getParameter("Lname");
                    	String Email = request.getParameter("Email");
                    	String Mobile = request.getParameter("Mobile");
                    	String Address = request.getParameter("Address");
                    	String Password = request.getParameter("Password");
                    	String Cpassword = request.getParameter("Cpassword");
                    	String Uquestion = request.getParameter("Uquestion");
                    	String Uanswer = request.getParameter("Uanswer");
                    	
                     	String x = request.getParameter("submit");
                     	if(x!=null && x.equals("REGISTER"))
                     	{
         	          	 	String url = "jdbc:mysql://localhost:3306?user=root&password=root";
       
                    	 	try
                    	 	{
                    	 		Class.forName("com.mysql.jdbc.Driver");
                    	 		Connection con = DriverManager.getConnection(url);
                    	 		
                    	 		String query = "insert into ragistration.newragistration(Fname,Lname,Email,Mobile,Address,Password,Cpassword,Uquestion,Uanswer) values(?,?,?,?,?,?,?,?,?)";
                    	 		
                    	 		PreparedStatement pstmt = con.prepareStatement(query);
                    	 		pstmt.setString(1,Fname);
                    	 		pstmt.setString(2,Lname);
                    	 		pstmt.setString(3,Email);
                    	 		pstmt.setString(4,Mobile);
                    	 		pstmt.setString(5,Address);
                    	 		pstmt.setString(6,Password);
                    	 		pstmt.setString(7,Cpassword);
                    	 		pstmt.setString(8,Uquestion);
                    	 		pstmt.setString(9,Uanswer);
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
    </div>
    <%@include file="Footer.jsp" %>
</body>
</html>