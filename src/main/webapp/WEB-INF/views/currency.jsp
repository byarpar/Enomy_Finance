<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>
<title>currency converter</title>

<!--  Enable Bootstrap -->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Lato"
	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"
	rel="stylesheet" type="text/css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link href="/SpringMVC_Enomy_Finance/css/mystyle.css" rel="stylesheet" />
<style>
         body {
        background-image: url('images/Untitled (4).png');
        background-size: contain;
       
    }

        .container {
            max-width: 600px;
            margin: 0 auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.2);
        }

        .text-center {
            text-align: center;
        }

        h3 {
            font-size: 24px;
            margin: 0;
        }

        form {
            text-align: center;
        }

        label {
            font-weight: bold;
        }

        select, input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        #submit {
            background-color: #007bff;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        #submit:hover {
            background-color: #0056b3;
        }

        p {
            color: red;
        }

        h1 {
            font-size: 28px;
        }

        h3 {
            font-size: 18px;
        }

    </style>
<%@ page isELIgnored="false"%>

</head>
<body>
<%@ include file="header.jsp"%>
	<div class="container">
		<div class="row text-center">

			<h3>Converter Module</h3>
			
			<br><br>

			<form:form action="converter" method="post">
            <label>From Currency:</label><br>
            <select name="fromCurrency">
                <option value="USD">American Dollars (USD)</option>
                <option value="GBP">Pounds Sterling (GBP)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="BRL">Brazilian Real (BRL)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
                <option value="TRY">Turkish Lira (TRY)</option>
            </select>
            <br><br><br>
            <label>To Currency:</label><br>
            <select name="toCurrency">
                <option value="USD">American Dollars (USD)</option>
                <option value="GBP">Pounds Sterling (GBP)</option>
                <option value="EUR">Euro (EUR)</option>
                <option value="BRL">Brazilian Real (BRL)</option>
                <option value="JPY">Japanese Yen (JPY)</option>
                <option value="TRY">Turkish Lira (TRY)</option>
            </select>
            <br><br><br>
            <label>Amount:</label><br>
            <input type="text" name="amount" placeholder="Add Your Amount">
            <br><br>
            <input type="submit" id="submit" value="Convert">
        </form:form>

        <c:if test="${not empty error}">
            <p style="color: red">${error}</p>
        </c:if>

        <c:if test="${not empty result1}">
            <h1>Result:</h1>
            <h1>${result1}</h1>
            <h3>${fee}</h3> 
        </c:if>

    </div>
<br><br><br>
</div>
</body>
</html>