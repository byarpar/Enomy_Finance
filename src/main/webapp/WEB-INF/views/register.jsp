<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html>
<html>
<head>
    <title>Registration Page</title>
    <!-- Enable Bootstrap -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
    <!-- Add your custom CSS if needed -->
    <link rel="stylesheet" type="text/css" href="custom.css">
     <style>
    body {
        background-image: url('images/logo.png');
        background-size: contain;
        background-repeat: no-repeat;
        background-attachment: fixed; 
        background-size: 100% 100%;
    }
</style>
</head>
<%@ page isELIgnored="false" %>
<body>
    <div class="container">
        <%@ include file="header.jsp"%>
        
        <div class="row justify-content-center mt-5">
            <div class="col-md-6">
                <h3 class="text-center">Register Here!</h3>
                
                <c:if test="${register_success != null}">
                    <div class="alert alert-success">
                        <p>${register_success} Click <a href="login">Sign In</a> to use our portal...</p>
                    </div>
                </c:if>
                
                <form:form action="register_process" method="post" modelAttribute="user">
                    <div class="form-group">
                        <label for="fullname">Enter Email:</label>
                        <form:input path="name" class="form-control" required="true" />
                    </div>
                    
                    <div class="form-group">
                        <label for="loginname">Enter Name:</label>
                        <form:input path="userName" class="form-control" required="true" />
                    </div>
                    
                    <div class="form-group">
                        <label for="password">Enter Password:</label>
                        <form:password path="password" class="form-control" required="true" />
                    </div>
                    
                    <button type="submit" class="btn btn-primary">Register</button>
                </form:form>
            </div>
        </div>
    </div>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
