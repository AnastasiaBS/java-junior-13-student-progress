<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page isELIgnored="false" %>

<nav>
    <div style="text-indent: 15px;
    display: flex;
    flex-wrap: wrap;
    flex-direction: column-reverse">
        <a style="padding: 13px;
            text-align: left;" href="/disciplines">
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
            font-size: 16px;" type="button">Назад
            </button>
        </a>
        <a style="padding: 13px;
            text-align: left;" href="/">
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
<div id="container">
    <section>
        <div style="text-align: left;
    padding: 0 228px;
    padding-top: 30px;">
            <form class="needs-validation was-validated" method="post" action="/discipline-modify">
                <input type="hidden" name="idModifyDisc" value="${disc.id}">
                <div style="font-family: 'Pacifico', cursive; font-size: x-large">
                    Для модификации дисциплины заполните соответствующее поле и нажмите кнопку "Применить":
                </div>
                <br>
                <div style="text-align: left;
    padding: 0 55px;
    padding-top: 23px;
font-family: 'Pacifico', cursive;
font-size: large">
                    <label for="name" class="col-sm-2 col-form-label">Название*</label><br>
                    <div class="col-sm-8">
                        <input style="    border: 1px solid #6c757d;
    border-radius: 13px;
    color: #6c757d;
    margin: 17px 9px;
    padding: 13px 43px;
    box-shadow: 0px 0px 12px 2px #6c757d" type="text" name="modifyDisc" class="form-control" id="name"
                               placeholder="${disc.discipline}"
                               required>
                    </div>
                </div>
                <div style="text-align: left;
                padding: 0 221px;
                padding-top: 23px;
                font-family: 'Pacifico', cursive;
                font-size: large">
                    <div id="divButton" class="col-sm-5">
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
            font-size: 16px;" type="submit" class="btn btn-outline-secondary btn btn-block">Применить
                        </button>
                    </div>
                </div>
            </form>
        </div>
    </section>
</div>