
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<div class="container">
    <form:form action="registration-success" class="form-horizontal" role="form" modelAttribute="userRegDto">
        <h2 class="text-center">Registration Form</h2>

        <div class="form-group">
            <label for="name" class="col-sm-3 control-label">User</label>
            <div class="col-sm-9">
                <form:input  id="name" placeholder="User" class="form-control" path="name"/>
            </div>
        </div>



        <div class="form-group">
            <label for="userName" class="col-sm-3 control-label">User Name</label>
            <div class="col-sm-9">
                <form:input  id="userName" placeholder="User Name" class="form-control" path="userName"/>
                <span class="help-block">Last Name, First Name, eg.: Smith, Harry</span>
            </div>
        </div>


        <div class="form-group">
            <label for="password" class="col-sm-3 control-label">Password</label>
            <div class="col-sm-9">
                <form:input  id="password" placeholder="Password" class="form-control" path="password"/>
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
            <div class="col-sm-9">
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
            <div class="col-sm-9">
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
            <div class="col-sm-9 col-sm-offset-3">
                <div class="checkbox">
                    <label>
                        <input type="checkbox">I accept <a href="#">terms</a>
                    </label>
                </div>
            </div>
        </div> <!-- /.form-group -->
        <div class="form-group">
            <div class="col-sm-9 col-sm-offset-3">
                <button type="submit" class="btn btn-primary btn-block">Register</button>
            </div>
        </div>
    </form:form> <!-- /form -->
</div> <!-- ./container -->