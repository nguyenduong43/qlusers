<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Edit User</title>
    <style>
        body{
            margin:0;
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg,#667eea,#764ba2);
            display:flex;
            justify-content:center;
            align-items:center;
            height:100vh;
        }

        .card{
            background:white;
            width:420px;
            padding:30px;
            border-radius:12px;
            box-shadow:0 15px 35px rgba(0,0,0,0.2);
        }

        h1{
            text-align:center;
            margin-bottom:10px;
        }

        .back-link{
            text-align:center;
            margin-bottom:20px;
        }

        .back-link a{
            text-decoration:none;
            color:#007bff;
            font-weight:bold;
        }

        .form-group{
            margin-bottom:15px;
        }

        label{
            display:block;
            margin-bottom:5px;
            font-weight:bold;
        }

        input[type="text"]{
            width:100%;
            padding:8px;
            border-radius:6px;
            border:1px solid #ccc;
            transition:0.3s;
        }

        input[type="text"]:focus{
            border-color:#667eea;
            outline:none;
            box-shadow:0 0 5px rgba(102,126,234,0.5);
        }

        .btn{
            width:100%;
            padding:10px;
            background:#007bff;
            border:none;
            color:white;
            font-size:16px;
            border-radius:6px;
            cursor:pointer;
            transition:0.3s;
        }

        .btn:hover{
            background:#0056b3;
        }

    </style>
</head>
<body>

<div class="card">

    <h1>Edit User</h1>

    <div class="back-link">
        <a href="users?action=users">← Back to List</a>
    </div>

    <form method="post">

        <c:if test="${user != null}">
            <input type="hidden" name="id" value="${user.id}"/>
        </c:if>

        <div class="form-group">
            <label>User Name</label>
            <input type="text" name="name" value="${user.name}" required/>
        </div>

        <div class="form-group">
            <label>User Email</label>
            <input type="text" name="email" value="${user.email}" required/>
        </div>

        <div class="form-group">
            <label>Country</label>
            <input type="text" name="country" value="${user.country}" required/>
        </div>

        <button type="submit" class="btn">Update User</button>

    </form>

</div>
</body>
</html>