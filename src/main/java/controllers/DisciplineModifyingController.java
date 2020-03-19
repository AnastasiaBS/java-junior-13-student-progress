package controllers;

import database.DBManager;
import entity.Discipline;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "DisciplineModifyingController", urlPatterns = "/discipline-modify")
public class DisciplineModifyingController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idDisc = req.getParameter("idModifyDisc");
        Discipline discipline = DBManager.getDisciplineById(idDisc);

        req.setAttribute("disc", discipline);
        req.setAttribute("currentPage", "/WEB-INF/disciplineModifying.jsp");
        req.getRequestDispatcher("/WEB-INF/template.jsp").forward(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String idModifyDisc = req.getParameter("idModifyDisc");
        String modifyDisc = req.getParameter("modifyDisc");

        DBManager.modifyDiscipline(modifyDisc, idModifyDisc);

        resp.sendRedirect("/disciplines");
    }
}
