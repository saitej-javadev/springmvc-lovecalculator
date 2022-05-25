
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<%--<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>--%>
<!------ Include the above in your HEAD tag ---------->
<head>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<style>
    label{
        color: navy;
    }
</style>
</head>

<header>
    <!-- As a heading -->
    <nav class="navbar navbar-light bg-light">
        <span class="navbar-brand mb-0 h1">Registration Form</span>
    </nav>
</header>
<div class="container m-auto">
    <form:form action="registration-success" class="form-horizontal" role="form" modelAttribute="userRegDto">


        <div class="form-group">
            <label for="name" class="col-sm-3 control-label">User</label>
            <div class="col-sm-6">
                <form:input  id="name" placeholder="User" class="form-control" path="name"/>
            </div>
        </div>



        <div class="form-group">
            <label for="userName" class="col-sm-3 control-label">User Name</label>
            <div class="col-sm-6">
                <form:input  id="userName" placeholder="User Name" class="form-control" path="userName"/>
                <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
            </div>
        </div>


        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-6">
                <form:input  id="password" type="password" placeholder="Password" class="form-control" path="password"/>
            </div>
        </div>

     <%--   <div class="form-group">
            <label for="birthDate" class="col-sm-3 control-label">Date of Birth</label>
            <div class="col-sm-9">
                <input type="date" id="birthDate" class="form-control">
            </div>
        </div>
        --%>
        <div class="form-group">
            <label for="country" class="col-sm-3 control-label">Country</label>
            <div class="col-sm-6">
                <form:select id="country"  path="countryName" class="form-control">
                   <form:option value="IND" label="India"></form:option>
                   <form:option value="USA" label="USA"></form:option>
                   <form:option value="UK" label="United Kingdom"></form:option>
                   <form:option value="AUS" label="Australia"></form:option>
                   <form:option value="FR" label="France"></form:option>
                </form:select>
            </div>
        </div> <!-- /.form-group -->


        <div class="form-group">
            <label class="control-label col-sm-3">Gender</label>
            <div class="col-sm-6">
                <div class="row">
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <form:radiobutton id="femaleRadio" value="female" path="gender"/>Female
                        </label>
                    </div>
                    <div class="col-sm-4">
                        <label class="radio-inline">
                            <form:radiobutton id="maleRadio" value="male" path="gender"/>Male
                        </label>
                    </div>
                </div>
            </div>
        </div> <!-- /.form-group -->


        <div class="form-group">
            <label class="control-label col-sm-3">Hobbies</label>
            <div class="col-sm-6">
                <div class="checkbox">
                    <label>
                        <form:checkbox path="hobbies" value="Cricket"/>Cricket
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <form:checkbox path="hobbies" value="Chess"/>Chess
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <form:checkbox path="hobbies" value="Painting"/>Painting
                    </label>
                </div>
                <div class="checkbox">
                    <label>
                        <form:checkbox path="hobbies" value="Travel"/>Travel
                    </label>
                </div>
            </div>


        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-6 col-sm-offset-3">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">I accept <a href="#">terms</a>
                    </label>
                </div>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-6 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </div>
    </form:form> <!-- /form -->
</div> <!-- ./container -->