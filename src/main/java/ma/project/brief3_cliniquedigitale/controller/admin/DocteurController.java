package ma.project.brief3_cliniquedigitale.controller.admin;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.model.Docteur;
import ma.project.brief3_cliniquedigitale.service.DepartementService;
import ma.project.brief3_cliniquedigitale.service.DocteurService;

import java.io.IOException;
import java.util.List;
import java.util.Optional;

@WebServlet("/admin/docteurs")
public class DocteurController extends HttpServlet {
    private DocteurService docteurService = new DocteurService();
    private DepartementService departementService = new DepartementService();


    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // définir la page à inclure dans le layout
        request.setAttribute("page", "/view/dashboard/admin/pages/docteurs.jsp");

        List<Departement> departements= departementService.findAll();
        request.setAttribute("departements", departements);

        List<Docteur> docteurs= docteurService.findAll();
        request.setAttribute("docteurs", docteurs);

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
            case "delete": delete(request, response);
                break;
            default:
                response.sendRedirect(request.getContextPath() + "/admin/departements");
        }

    }

    private void save(HttpServletRequest request, HttpServletResponse response) throws IOException {
        String nom= request.getParameter("nom");
        String prenom= request.getParameter("prenom");
        String email= request.getParameter("email");
        String motDePasse= request.getParameter("motDePasse");
        String specialite= request.getParameter("specialite");
        Long departementID= Long.parseLong(request.getParameter("departementID"));

        Optional<Departement> departementOpt = departementService.findByid(departementID);
        Departement departement= departementOpt.get();

        Docteur docteur= new Docteur(nom, prenom, email, motDePasse, specialite, departement );
        docteurService.save(docteur);

        response.sendRedirect(request.getContextPath() + "/admin/docteurs");
    }

    private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
        Long id= Long.valueOf(request.getParameter("id"));
        docteurService.delete(id);
        response.sendRedirect(request.getContextPath() + "/admin/docteurs");
    }


    }
