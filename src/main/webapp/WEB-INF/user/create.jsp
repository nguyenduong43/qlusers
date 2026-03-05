<%--<%@ page language="java" contentType="text/html; charset=UTF-8"--%>
<%--         pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>User Management Application</title>--%>
<%--    <style>--%>
<%--        body{--%>
<%--            margin:0;--%>
<%--            font-family: Arial, sans-serif;--%>
<%--            background: linear-gradient(135deg,#667eea,#764ba2);--%>
<%--            display:flex;--%>
<%--            justify-content:center;--%>
<%--            align-items:center;--%>
<%--            height:100vh;--%>
<%--        }--%>

<%--        .card{--%>
<%--            background:white;--%>
<%--            width:400px;--%>
<%--            padding:30px;--%>
<%--            border-radius:12px;--%>
<%--            box-shadow:0 15px 35px rgba(0,0,0,0.2);--%>
<%--        }--%>

<%--        h1{--%>
<%--            text-align:center;--%>
<%--            margin-bottom:10px;--%>
<%--        }--%>

<%--        .back-link{--%>
<%--            text-align:center;--%>
<%--            margin-bottom:20px;--%>
<%--        }--%>

<%--        .back-link a{--%>
<%--            text-decoration:none;--%>
<%--            color:#007bff;--%>
<%--            font-weight:bold;--%>
<%--        }--%>

<%--        .form-group{--%>
<%--            margin-bottom:15px;--%>
<%--        }--%>

<%--        label{--%>
<%--            display:block;--%>
<%--            margin-bottom:5px;--%>
<%--            font-weight:bold;--%>
<%--        }--%>

<%--        input[type="text"]{--%>
<%--            width:100%;--%>
<%--            padding:8px;--%>
<%--            border-radius:6px;--%>
<%--            border:1px solid #ccc;--%>
<%--            transition:0.3s;--%>
<%--        }--%>

<%--        input[type="text"]:focus{--%>
<%--            border-color:#667eea;--%>
<%--            outline:none;--%>
<%--            box-shadow:0 0 5px rgba(102,126,234,0.5);--%>
<%--        }--%>

<%--        .btn{--%>
<%--            width:100%;--%>
<%--            padding:10px;--%>
<%--            background:#28a745;--%>
<%--            border:none;--%>
<%--            color:white;--%>
<%--            font-size:16px;--%>
<%--            border-radius:6px;--%>
<%--            cursor:pointer;--%>
<%--            transition:0.3s;--%>
<%--        }--%>

<%--        .btn:hover{--%>
<%--            background:#218838;--%>
<%--        }--%>

<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>

<%--<div class="card">--%>
<%--    <h1>Add New User</h1>--%>

<%--    <div class="back-link">--%>
<%--        <a href="users?action=users">← Back to List</a>--%>
<%--    </div>--%>

<%--    <form method="post" onsubmit="return validateEmail()">--%>

<%--        <div class="form-group">--%>
<%--            <label>User Name</label>--%>
<%--            <input type="text" name="name" required/>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label>User Email</label>--%>
<%--            <input type="text" name="email" id="email" onblur="checkEmail()" required/>--%>
<%--            <small id="emailError" style="color:red;"></small>--%>
<%--        </div>--%>

<%--        <div class="form-group">--%>
<%--            <label>Country</label>--%>
<%--            <input type="text" name="country" required/>--%>
<%--        </div>--%>

<%--        <button type="submit" class="btn">Save User</button>--%>

<%--    </form>--%>
<%--</div>--%>

<%--</body>--%>
<%--<script>--%>
<%--    function checkEmail() {--%>
<%--        let email = document.getElementById("email").value;--%>
<%--        let error = document.getElementById("emailError");--%>
<%--        let pattern = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;--%>

<%--        if (!pattern.test(email)) {--%>
<%--            error.innerText = "Email không hợp lệ!";--%>
<%--            return false;--%>
<%--        } else {--%>
<%--            error.innerText = "";--%>
<%--            return true;--%>
<%--        }--%>
<%--    }--%>

<%--    function validateEmail() {--%>
<%--        return checkEmail(); // kiểm tra khi submit--%>
<%--    }--%>
<%--</script>--%>
<%--</html>--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>User Management Application</title>
</head>
<body>
<center>
    <h1>User Management</h1>
    <h2>
        <a href="users?action=users">List All Users</a>
    </h2>
</center>
<div align="center">
    <form method="post">
        <table border="1" cellpadding="5">
            <caption>
                <h2>Add New User</h2>
            </caption>
            <tr>
                <th>User Name:</th>
                <td>
                    <input type="text" name="name" id="name" size="45"/>
                </td>
            </tr>
            <tr>
                <th>User Email:</th>
                <td>
                    <input type="text" name="email" id="email" size="45"/>
                </td>
            </tr>
            <tr>
                <th>Country:</th>
                <td>
                    <input type="text" name="country" id="country" size="15"/>
                </td>
            </tr>
            <tr>
                <th>Permission:</th>
                <td>
                    <input type="checkbox" name="add" size="15"/> add |
                    <input type="checkbox" name="edit" size="15"/> edit |
                    <input type="checkbox" name="delete" size="15"/> delete |
                    <input type="checkbox" name="view" size="15"/> view
                </td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <input type="submit" value="Save"/>
                </td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>