<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
          integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
            integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
            integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
            crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
            integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
            crossorigin="anonymous"></script>
    <style>
        label {
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

<div style="width: 75%" class="container mt-5 ">
    <form:form action="registration-success" class="form-horizontal" role="form" modelAttribute="userRegistrationDto">

        <div class="row">

            <div class="form-group">
                <label for="name" class="col-md-12 control-label">User</label>
                <div class="col-md-12">
                    <form:input id="name" placeholder="User" class="form-control" path="name"/>
                    <form:errors path="name" cssStyle="color: red"/>
                </div>
            </div>


            <div class="form-group">
                <label for="userName" class="col-md-12 control-label">User Name</label>
                <div class="col-md-12">
                    <form:input id="userName" placeholder="User Name" class="form-control" path="userName"/>
                    <form:errors path="userName" cssStyle="color: red"/>
                </div>
            </div>
        </div>

        <div class="row">
            <div class="form-group">
                <label for="password" class="col-md-12 control-label">Password</label>
                <div class="col-md-12">
                    <form:input id="password" type="password" placeholder="Password" class="form-control"
                                path="password"/>
                </div>
            </div>

            <div class="form-group">
                <label for="country" class="col-md-12 control-label">Country</label>
                <div class="col-md-12">
                    <form:select id="country" path="countryName" class="form-control">
                        <form:option value="IND" label="India"></form:option>
                        <form:option value="USA" label="USA"></form:option>
                        <form:option value="UK" label="United Kingdom"></form:option>
                        <form:option value="AUS" label="Australia"></form:option>
                        <form:option value="FR" label="France"></form:option>
                    </form:select>
                </div>
            </div> <!-- /.form-group -->

        </div>

        <div class="row">
            <div class="form-group">
                <label class="control-label col-md-12">Gender</label>
                <div class="col-md-12">
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
                <label class="control-label col-md-12">Hobbies</label>
                <div class="col-md-12">
                    <div class="row ">
                        <div class="checkbox ">
                            <label>
                                <form:checkbox path="hobbies" value="Cricket"/>Cricket
                            </label>
                        </div>
                        &nbsp;&nbsp;
                        <div class="checkbox">
                            <label>
                                <form:checkbox path="hobbies" value="Chess"/>Chess
                            </label>
                        </div>
                        &nbsp;&nbsp;
                        <div class="checkbox">
                            <label>
                                <form:checkbox path="hobbies" value="Painting"/>Painting
                            </label>
                        </div>
                        &nbsp;&nbsp;
                        <div class="checkbox">
                            <label>
                                <form:checkbox path="hobbies" value="Travel"/>Travel
                            </label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <div class="row">

            <div class="form-group">
                <label for="email" class="col-md-12 control-label">Email</label>
                <div class="col-md-12">
                    <form:input id="email" placeholder="john@gmail.com" class="form-control"
                                path="communicatonDto.email"/>

                </div>
            </div>
            <div class="form-group">
                <label for="mobileNumber" class="col-md-12 control-label">Mobile Number</label>
                <div class="col-md-12">
                    <form:input id="mobileNumber" placeholder="91-999999999" class="form-control"
                                path="communicatonDto.phoneDto"/>

                </div>
            </div>
        </div>
        <!-- /.form-group -->

        <div class="container">
            <div class="form-group">
                <div class="col-md-12 ">
                    <div class="checkbox">
                        <label>
                            <input type="checkbox">I accept <a href="#">terms</a>
                        </label>
                    </div>
                </div>
            </div> <!-- /.form-group -->

            <div class="form-group">
                <div class="col-sm-6 col-sm-offset-3">
                    <button type="submit" class="btn btn-primary ">Register</button>
                </div>
            </div>
        </div>
    </form:form> <!-- /form -->
</div>
<!-- ./container -->