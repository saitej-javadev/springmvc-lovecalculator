
<%@ page contentType="text/html;charset=UTF-8" language="java"  isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!doctype html>
<html lang="en">
<head>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="../css/style.css">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

    <title>Love Calculator</title>
   <style>
       h2{
           color:crimson;
       }
   </style>
</head>
<body>
<header>
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <a class="navbar-brand" href="#">Love Calculator</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="#">Link</a>
                </li>
                <li class="nav-item dropdown">
                    <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        Dropdown
                    </a>
                    <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                        <a class="dropdown-item" href="${pageContext.request.contextPath}/register">User Registration Page</a>
                        <a class="dropdown-item" href="#">Another action</a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item" href="#">Something else here</a>
                    </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link disabled" href="#">Disabled</a>
                </li>
            </ul>
            <form class="form-inline my-2 my-lg-0">
                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
            </form>
        </div>
    </nav>
</header>

<hr>
<div style="width: 40%" class="container mt-5">

<%--
    <form:form action="process-homepage" method="get" modelAttribute="userInfoDto" onsubmit="return validateUserName()" >
--%>
    <form:form action="process-homepage" method="get" modelAttribute="userInfoDto" >
        <div class="form-group">
            <label for="yourName">Your Name</label>
            <form:input  class="form-control" id="yourName" aria-describedby="yourName" placeholder="Romeo" path="yourName"/>
            <form:errors path="yourName" cssStyle="color: red"/>
        </div>
        <div class="form-group">
            <label for="crushName">Your Beau Name</label>
            <form:input  class="form-control" id="crushName" aria-describedby="crushName" placeholder="Juliet" path="crushName"/>
        </div>

        <div class="form-group">

            <form:checkbox  id="termAndCondition" aria-describedby="termAndCondition"  path="termAndCondition"/>
            <label for="termAndCondition">Am agreeing for the terms and conditions</label>
            <form:errors path="termAndCondition" cssStyle="color: red"/>
        </div>

        <button type="submit" class="btn btn-danger">Calculate</button>
    </form:form>
</div>

<script>
   function validateUserName(){
       var yourName=document.getElementById("yourName").value;
       var crushName=document.getElementById("crushName").value;
       if(yourName.length<3 || crushName.length<3 ){
           alert("Name cannot be Blank!!!");
           return  false;
       }
       else {
           return true
       }
   }
</script>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>


<%--
https://stackoverflow.com/questions/30374651/form-error-messages-are-not-displaying-in-jsp-in-spring-mvc--%>
