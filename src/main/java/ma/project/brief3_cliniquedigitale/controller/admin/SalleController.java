package ma.project.brief3_cliniquedigitale.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ma.project.brief3_cliniquedigitale.model.Departement;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/salles")
public class SalleController extends HttpServlet {


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        request.setAttribute("page", "/view/dashboard/admin/pages/salles.jsp");

        request.getRequestDispatcher("/view/dashboard/admin/layouts/layout.jsp").forward(request, response);
    }
}
