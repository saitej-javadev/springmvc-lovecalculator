
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<html>
<head>
    <link href="https://fonts.googleapis.com/css?family=Nunito+Sans:400,400i,700,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<style>
    body {
        text-align: center;
        padding: 40px 0;
        background: #EBF0F5;
    }
    h1 {
        color: #88B04B;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-weight: 900;
        font-size: 40px;
        margin-bottom: 10px;
    }
    p {
        color: #404F5E;
        font-family: "Nunito Sans", "Helvetica Neue", sans-serif;
        font-size:20px;
        margin: 0;
    }
    i {
        color: #9ABC66;
        font-size: 100px;
        line-height: 200px;
        margin-left:-15px;
    }
    .card {
        background: white;
        padding: 60px;
        border-radius: 4px;
        box-shadow: 0 2px 3px #C8D0D8;
        display: inline-block;
        margin: 0 auto;
    }
</style>
<body>
<div class="card">
    <div style="border-radius:250px; height:250px; width:250px; background: #F8FAF5; margin:0 auto;">
        <i class="checkmark">✓</i>
    </div>
    <h1>Success</h1>
    <p>Registration Sucess;<br/> Check the below details!</p>
<pre></pre>
             Name :            ${userRegDto.name}
         User Name:            ${userRegDto.userName}
          Password:            ${userRegDto.password}
           Country:            ${userRegDto.countryName}
            Gender:            ${userRegDto.gender}
           Hobbies:            ${userRegDto.hobbies}
             Email:            ${userRegDto.communicatonDto.email}
      MobileNumber:            ${userRegDto.communicatonDto.phoneDto}
    </pre>
     <a href="${pageContext.request.contextPath}/register" class="btn btn-success">HOME</a>
</div>

</body>
</html>