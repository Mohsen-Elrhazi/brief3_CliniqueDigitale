package ma.project.brief3_cliniquedigitale.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.service.DepartementService;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/departements")
public class DepartementController extends HttpServlet {
    DepartementService departementService= new DepartementService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // définir la page à inclure dans le layout
        request.setAttribute("page", "/view/dashboard/admin/pages/departements.jsp");

        List<Departement> departements= departementService.findAll();
        request.setAttribute("departements", departements);
        // renvoyer vers le layout principal
        request.getRequestDispatcher("/view/dashboard/admin/layouts/layout.jsp").forward(request, response);
    }

    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          String action= request.getParameter("action");

          switch(action){
              case "save": save(request, response);
                  break;
              case "update":
                  break;
              case "delete":
                  break;
              default:
                  response.sendRedirect(request.getContextPath() + "/admin/departements");
          }
    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nom= request.getParameter("nom");
        Departement departement= new Departement(nom);
        departementService.save(departement);
        response.sendRedirect(request.getContextPath() + "/admin/departements");
    }
}
