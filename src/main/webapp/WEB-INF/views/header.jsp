<spring:url value="/images/logo.png" var="myLogo" />
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags"%>
<nav class="navbar navbar-expand-md navbar-light mynav">
    <div class="container">
        <div class="navbar-header">
           
        </div>
        <div class="collapse navbar-collapse" id="myNavbar">
            <img src="${myLogo}" width="120px" />
            <ul class="nav navbar-nav navbar-right">
                <sec:authorize access="!isAuthenticated()">
                    <li><a href="login" class="animated-button">Login</a></li>
                    <li><a href="register_form" class="animated-button">Register</a></li>
                </sec:authorize>
	   			
				<sec:authorize access="isAuthenticated()">
				<sec:authorize access="hasRole('Client')">
				    <sec:authorize access="hasRole('Client')">
				    <li><a href="converter" class="mylink-blue-bold"><span class="mylink"><h4>Currency Conversion</h4></span></a></li>
				    <li><a href="save_invest_plan" class="mylink-blue-bold"><span class="mylink"><h4>Saving and Investment</h4></span></a></li>
				    <li style="margin-top: 3%">
				        <form action="logout" method="post" style="display: inline; margin: 0; padding: 0;">
				            <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
				            <input type="submit" name="Logout" value="Logout" class="btn btn-primary"></input>
				        </form>
				    </li>
				</sec:authorize>
				</sec:authorize>
				</sec:authorize>
				</ul>
	        </div>
	    </div>
	</nav>
		
<style> 
    .animated-button {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px;
        background-color: #007BFF;
        color: #fff;
        border-radius: 5px;
        text-decoration: none;
        transition: background-color 0.3s, transform 0.3s;
    }

    .animated-button:hover {
        background-color: #0056b3;
        transform: scale(1.1);
    }
    
    .mylink-blue-bold {
    color: blue;
    font-weight: bold;
}
    
</style>

