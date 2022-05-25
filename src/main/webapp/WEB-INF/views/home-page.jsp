
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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

    <title>DEIFY CALCULATOR</title>
   <style>
       h2{
           color:crimson;
       }
   </style>
</head>
<body>
<h2 class="text-center mt-5">DEIFY CALCULATOR</h2>
<hr>
<div class="container d-flex justify-content-center mt-3 py-3">

    <form:form action="process-homepage" method="get" modelAttribute="userInfoDto">
        <div class="form-group">
            <label for="yourName">Your Name</label>
            <form:input  class="form-control" id="yourName" aria-describedby="yourName" placeholder="Romeo" path="yourName"/>
        </div>
        <div class="form-group">
            <label for="crushName">Your Beau Name</label>
            <form:input  class="form-control" id="crushName" aria-describedby="crushName" placeholder="Juliet" path="crushName"/>
        </div>
        <button type="submit" class="btn btn-danger">Calculate</button>
    </form:form>
</div>
<!-- Optional JavaScript -->
<!-- jQuery first, then Popper.js, then Bootstrap JS -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
</body>
</html>