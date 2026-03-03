<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>User Management</title>
    <style>
        body{
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg,#667eea,#764ba2);
            margin:0;
            padding:0;
        }

        .container{
            width: 80%;
            margin: 50px auto;
            background: white;
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 10px 25px rgba(0,0,0,0.2);
        }

        h2{
            text-align: center;
            color: #333;
        }

        .add-btn{
            display: inline-block;
            padding: 10px 20px;
            background: #28a745;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
            transition: 0.3s;
        }

        .add-btn:hover{
            background: #218838;
        }

        table{
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th{
            background: #343a40;
            color: white;
            padding: 12px;
        }

        td{
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even){
            background: #f2f2f2;
        }

        tr:hover{
            background: #ddd;
        }

        .action a{
            padding: 6px 12px;
            border-radius: 4px;
            text-decoration: none;
            font-size: 14px;
            color: white;
            margin: 0 3px;
            transition: 0.3s;
        }

        .edit{
            background: #007bff;
        }

        .edit:hover{
            background: #0056b3;
        }

        .delete{
            background: #dc3545;
        }

        .delete:hover{
            background: #a71d2a;
        }

    </style>
</head>
<body>

<div class="container">

    <h2>User Management</h2>

    <div style="text-align:center;">
        <a href="/users?action=create" class="add-btn">+ Add New User</a>
        <a href="/users?sort=asc" class="add-btn">Sort user</a>
        <a href="/users?action=search" class="add-btn">+ Search users</a>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
            <th>Action</th>
        </tr>

        <c:forEach items="${listUser}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
                <td class="action">
                    <a href="/users?action=edit&id=${user.id}" class="edit">Edit</a>
                    <a href="/users?action=delete&id=${user.id}" class="delete">Delete</a>
                </td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>