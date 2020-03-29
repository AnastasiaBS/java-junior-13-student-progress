<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<html style="background-color: floralwhite;" style="background-size: cover">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link href="https://fonts.googleapis.com/css?family=Pacifico&display=swap&subset=cyrillic" rel="stylesheet">
    <title>Disciplines list</title>
</head>
<body style="margin-right: 16px">
<nav>
    <div>
        <a style="padding: 37px;
            text-align: left;" href="/index.jsp">
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
            font-size: 16px;" type="button">На главную
            </button>
        </a>
    </div>
</nav>

<div>
    <section>
        <div style="text-align: left;
    padding: 0 228px;
    padding-top: 30px;">
            <h4 style="font-family: 'Pacifico', cursive; font-size: x-large">Список дисциплин:</h4>
        </div>
    </section>
    <div style="column-count: 2;
    display: flex;
    flex-direction: row-reverse">
        <c:if test="${role eq 1}">
            <div>
                <section style="padding-bottom: 276px;
    text-indent: 275px;
    display: flex;
    flex-wrap: wrap;
    flex-direction: column-reverse">
                    <div style="padding: 15px" id="divDisciplineList3" class="row">
                        <div class="divDisciplineList col-sm-12">
                            <a onclick="deleteDisciplines()">
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
            font-size: 16px;" type="button">
                                    Удалить выбранные дисциплины
                                </button>
                            </a>
                        </div>
                    </div>
                    <div style="padding: 15px" id="divDisciplineList2" class="row">
                        <div class="divDisciplineList col-sm-12">
                            <a onclick="modifyDiscipline()">
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
            font-size: 16px;" type="button">
                                    Модифицировать выбранную дисциплину
                                </button>
                            </a>
                        </div>
                    </div>
                    <div style="padding: 15px" id="divDisciplineList1" class="row">
                        <div class="divDisciplineList col-sm-12">
                            <a href="/discipline-create">
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
            font-size: 16px;" type="button">
                                    Создать дисциплину
                                </button>
                            </a>
                        </div>
                    </div>
                </section>
            </div>
        </c:if>
        <section>
            <div>
                <div style="padding-bottom: 82px;
    text-indent: 21px;
    display: flex;
    flex-direction: column-reverse;
    align-items: self-start;">
                    <table style="border: 3px solid palevioletred;
    border-collapse: separate">
                        <thead style="padding-bottom: 26px;
    text-indent: 21px;
    display: -webkit-box">
                        <tr style="font-family: 'Pacifico', cursive; font-size: large">
                            <th>Наименование дисциплины</th>
                        </tr>
                        </thead>
                        <tbody>

                        <c:forEach items="${disces}" var="d" varStatus="i">
                            <c:if test="${d.discipline.length() > 0}">
                                <tr style="font-family: 'Pacifico', cursive">
                                <c:if test="${role eq 1}">
                                    <th>
                                    <div class="custom-control custom-checkbox">

                                    <input type="checkbox" value="${d.id}"
                                           class="custom-control-input"
                                           id="cbx${i.count}"
                                           required>
                                </c:if>
                                <label class="custom-control-label" for="cbx${i.count}"></label>
                                </div>
                                </th>
                            </c:if>
                            <td>${d.discipline}</td>
                            </tr>
                        </c:forEach>

                        </tbody>
                    </table>
                </div>
            </div>
        </section>
    </div>
</div>
</body>
</html>

<form id="formModifyingDiscipline" method="get" action="/discipline-modify">
    <input type="hidden" id="idModifyDisc" name="idModifyDisc" value="">
</form>
<form id="formDeleteDisciplines" method="post" action="/disciplines">
    <input type="hidden" id="idsDeleteDisc" name="idsDeleteDisc" value="">
</form>

