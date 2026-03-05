<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Search User</title>

    <style>
        body {
            font-family: Arial, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to right, #5f77d8, #7b4bb7);
        }

        .container {
            width: 85%;
            margin: 60px auto;
            background: #e9e9e9;
            padding: 30px;
            border-radius: 10px;
        }

        h2 {
            text-align: center;
            margin-bottom: 20px;
        }

        .top-actions {
            text-align: center;
            margin-bottom: 20px;
        }

        .btn {
            padding: 8px 18px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-weight: bold;
            margin: 5px;
        }

        .btn-green {
            background-color: #28a745;
            color: white;
        }

        .btn-green:hover {
            background-color: #218838;
        }

        .btn-back {
            background-color: #3095ed;
            color: white;
        }

        .btn-back:hover {
            background-color: #5a6268;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 15px;
        }

        th {
            background-color: #343a40;
            color: white;
            padding: 12px;
        }

        td {
            padding: 10px;
            text-align: center;
        }

        tr:nth-child(even) {
            background-color: #dcdcdc;
        }

        input[type="text"] {
            padding: 7px;
            width: 220px;
            border-radius: 4px;
            border: 1px solid #ccc;
        }
    </style>
</head>

<body>

<div class="container">

    <h2>User Search</h2>

    <div class="top-actions">
        <a href="users?action=user">
            <button class="btn btn-back">← Back to list</button>
        </a>
    </div>

    <div class="top-actions">
        <form method="post">
            <input type="text" name="country" placeholder="Enter country">
            <button type="submit" class="btn btn-green">Search</button>
        </form>
    </div>

    <table>
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Email</th>
            <th>Country</th>
        </tr>

        <c:forEach items="${users}" var="user">
            <tr>
                <td>${user.id}</td>
                <td>${user.name}</td>
                <td>${user.email}</td>
                <td>${user.country}</td>
            </tr>
        </c:forEach>

    </table>

</div>

</body>
</html>