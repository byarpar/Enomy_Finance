<%@ page contentType="text/html; charset=US-ASCII"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

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

<%@ page isELIgnored="false"%>
<head>
<title>Save and Invest Plan</title>

<style>


.container {
    background-color: #f0f0f0;
    padding: 20px;
}


h3 {
    text-align: center;
}


form {
    margin-top: 20px;
}

label {
    display: block;
    margin-top: 10px;
}

select, input[type="text"] {
    width: 100%;
    padding: 5px;
    margin-top: 5px;
}


#submit {
    background-color: #007bff;
    color: #fff;
    padding: 10px 20px;
    border: none;
    cursor: pointer;
}


.nav-tabs {
    margin-top: 20px;
}

.nav-link {
    padding: 10px 20px;
}

.tab-pane {
    padding: 20px;
    background-color: #fff;
    border: 1px solid #ddd;
    border-radius: 5px;
    margin-top: 10px;
}



</style>
</head>
<body>

	<div class="container">

		<%@ include file="header.jsp"%>



		<div class="row">

			<h3 class="text-center">Save and Investment Plan</h3>
			<br />
			
			<div class="row">
			
			<div class="col-xs-6 ">
			
			<form:form action="save_invest_plan" method="post">
			
				<label>Year: </label>
				<select name="year">
					<option value="1">1 Year Plan</option>
					<option value="2">2 Year Plan</option>
					<option value="3">3 Year Plan</option>
					<option value="4">4 Year Plan</option>
					<option value="5">5 Year Plan</option>
					<option value="6">6 Year Plan</option>
					<option value="7">7 Year Plan</option>
					<option value="8">8 Year Plan</option>
					<option value="9">9 Year Plan</option>
					<option value="10">10 Year Plan</option>
					
					
				</select>
				<br>
				
				<label>Investment Type: </label>
				<select name="investment_type">
					<option value="1">Basic Savings Plan</option>
					<option value="2">Savings Plan Plus</option>
					<option value="3">Managed Stock Investments</option>
				</select>
				
				<br>
				
				
				<label>Monthly Amount To Be Invested: </label>
				<input type="text" name="month_amount" placeholder="Enter Monthly Amount" unable="true">
				<br>
				
				<input type="submit" id="submit" value="Calculate">
			</form:form>
			
			</div>
			
			<div class="col-xs-6">
			
			<c:if test="${not empty invest_result}">
			
			<h3> Investment Results For ${year} Year:</h3>
			
			<p> Predicted returns for ${year} year: ${min_predict_returns}% to ${max_predict_returns}%. </p>
			<p> Estimated tax: ${taxes}%. </p>
			<p> RBSX group fees per month: ${fees}%.</p>
							
			</c:if>
			
			</div>

	
		
		</div>
		</div>
	
		<br/>
		<br/>

			

			<div class="row">
				<div class="col-xs-12 ">
						<nav>
						<div class="nav nav-tabs nav-fill" id="nav-tab" role="tablist">
					    <a class="nav-item nav-link active" id="nav-home-tab"
					        data-toggle="tab" href="#nav-home" role="tab"
					        aria-controls="nav-home" aria-selected="true" style="color:blue;">Basic Savings Plan</a>
					    <a class="nav-item nav-link" id="nav-profile-tab"
					        data-toggle="tab" href="#nav-profile" role="tab"
					        aria-controls="nav-profile" aria-selected="false" style="color: blue;">Savings Plan Plus</a>
					    <a class="nav-item nav-link" id="nav-contact-tab"
					        data-toggle="tab" href="#nav-contact" role="tab"
					        aria-controls="nav-contact" aria-selected="false" style="color: blue;">Managed Stock Investments</a>
					</div>
				
					</nav>
					<div class="tab-content py-3 px-3 px-sm-0" id="nav-tabContent">
						<div class="tab-pane active" id="nav-home"
							role="tabpanel" aria-labelledby="nav-home-tab">

							<p>Maximum investment per year: 20 000 </p>
							<p>Minimum monthly investment: 50 </p>
							<p> Minimum initial investment lump sum: N/A</p>
							<p> Predicted returns per year: 1.2% to 2.4%. </p>
							<p> Estimated tax: 0%. </p>
							<p> RBSX group fees per month: 0.25%.</p>
						</div>
						<div class="tab-pane fade" id="nav-profile" role="tabpanel"
							aria-labelledby="nav-profile-tab">
							
							<p>Maximum investment per year: 30 000 </p>
							<p>Minimum monthly investment: 50 </p>
							<p> Minimum initial investment lump sum: 300</p>
							<p> Predicted returns per year: 3% to 5.5% </p>
							<p> Estimated tax:  10% on profits above 12 000. </p>
							<p> RBSX group fees per month: 0.3%.</p>
							
							
							</div>
						<div class="tab-pane fade" id="nav-contact" role="tabpanel"
							aria-labelledby="nav-contact-tab">
							<p>Maximum investment per year: Unlimited </p>
							<p>Minimum monthly investment: 150 </p>
							<p> Minimum initial investment lump sum: 1000</p>
							<p> Predicted returns per year: 4% to 23%.
							 </p>
							<p> Estimated tax: 
							10% on profits above 12 000
							20% on profits above 40 000.
							 </p>
							<p> RBSX group fees per month: 1.3%.</p>
							
							</div>

					</div>

				</div>
			</div>
		</div>
</body>
</html>