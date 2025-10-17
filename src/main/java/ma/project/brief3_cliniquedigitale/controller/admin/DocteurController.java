package ma.project.brief3_cliniquedigitale.controller.admin;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/admin/docteurs")
public class DocteurController extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // définir la page à inclure dans le layout
        request.setAttribute("page", "/view/dashboard/admin/pages/docteurs.jsp");

        // renvoyer vers le layout principal
        request.getRequestDispatcher("/view/dashboard/admin/layouts/layout.jsp").forward(request, response);
    }
}
