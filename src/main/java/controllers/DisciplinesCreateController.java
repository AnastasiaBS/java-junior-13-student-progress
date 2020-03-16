package controllers;

import database.DBManager;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisciplinesCreateController", urlPatterns = "/discipline-create")
public class DisciplinesCreateController extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setAttribute("currentPage", "/WEB-INF/disciplineCreating.jsp");
        req.getRequestDispatcher("/WEB-INF/template.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String nameOfDisc = req.getParameter("discName");
        DBManager.insertNewDiscipline(nameOfDisc);
        resp.sendRedirect("/disciplines");
    }
}
