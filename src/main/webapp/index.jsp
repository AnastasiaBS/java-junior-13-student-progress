<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html style="background-color: floralwhite;" style="background-size: cover;">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap&subset=cyrillic" rel="stylesheet">
    <title>Title page</title>
    <style>
        section {
            font-size: large;
        }
    </style>
</head>

<body>
<header>
    <br><br>
    <div style="display: flex;
        flex-direction: row;
        justify-content: center;
        flex-wrap: wrap;
        align-items: center">
        <table style="color: rgb(150, 76, 101);
        border: 2px solid palevioletred;
        border-collapse: collapse;
        overflow: auto;">
            <thead>
            <tr style="font-family: 'Pacifico', cursive; font-size: x-large">
                <th>Система управления студентами и их успеваемостью</th>
            </tr>
            </thead>
        </table>
        <a style=" padding: 15px;
            text-align: left;" href="/out.jsp">
            <button style="color: rgb(150, 76, 101);
            font-family: 'Pacifico', cursive;
            font-size: medium;
            background-color: ghostwhite;
            border: none;
            padding: 2px 8px;
            text-align: center;
            text-decoration: none;
            display: inline-block;
            border-radius: 12px;
            box-shadow: 0 8px 16px 0 rgba(0,0,0,0.2), 0 6px 20px 0 rgba(0,0,0,0.19);
            font-size: 16px;" type="button">Выйди, ${userName}
            </button>
        </a>
    </div>
</header>

<%@ include file="/WEB-INF/home.jsp" %>

</body>
</html>