<%-- 
    Document   : register
    Created on : Nov 29, 2020, 11:28:07 PM
    Author     : ggra9
--%>

<% if(session.getAttribute("username") != null){response.sendRedirect("dashboard.jsp");}%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style><%@include file="css/styles.css"%></style>
        <script src="https://kit.fontawesome.com/6b0d0ffdec.js" crossorigin="anonymous"></script>
        <title>SmartCare User Registration</title>
    </head>
    <body>
        <div class="login-box">
            <% if(request.getAttribute("message") != null){ String message = (String) request.getAttribute("message"); out.println(message);} %>
            <h1>User Registration</h1>
            <form method="POST" action="RegisterServlet.do" name="register_form" >
                <div class="textbox">
                    <i class="fas fa-user"></i>
                    <input type ="text" placeholder="Username" name="username" required>
                </div>
                <!--<div class="textbox">
                    <i class="fas fa-envelope"></i>
                    <input type="email" placeholder="Email" name="email" required>
                </div>-->
                <div class="textbox">
                    <i class="fas fa-lock"  ></i>
                    <input type="password" placeholder="Password" name="password" required>
                </div>
                <div class="textbox">
                    <i class="fas fa-lock"  ></i>
                    <input type="password" placeholder="Repeat Password" name="password" required>
                </div>
                
                <select name="role" required>
                    <option value="role" disabled selected>Role</option>
                    <option value="patient">Patient</option>
                    <option value="doctor">Doctor</option>
                    <option value="nurse">Nurse</option>
                </select>
                
                <input class="btn" type="submit" value="Register">
            </form>
        </div>
    </body>
</html>
