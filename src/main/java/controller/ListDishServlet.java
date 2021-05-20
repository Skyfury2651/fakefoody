package controller;

import service.DishService;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(value = "/dish")
public class ListDishServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        String page = req.getParameter("name");
        String perPage = req.getParameter("code");

        DishService dishService = new DishService();
        dishService.getListDish();

        req.getRequestDispatcher("/resources/dish/list.jsp").forward(req, resp);
    }
}
