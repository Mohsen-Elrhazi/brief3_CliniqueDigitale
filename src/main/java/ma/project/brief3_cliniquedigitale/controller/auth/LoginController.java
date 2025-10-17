package ma.project.brief3_cliniquedigitale.controller.auth;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
import ma.project.brief3_cliniquedigitale.enums.Role;
import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.model.Personne;
import ma.project.brief3_cliniquedigitale.service.PersonneService;

import java.io.IOException;
import java.util.Optional;


@WebServlet("/login")
public class LoginController extends HttpServlet {
    private PersonneService personneService= new PersonneService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Afficher la page d'inscription
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/auth/login.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");
         Optional<Personne> personneOpt= personneService.findByEmailAndPassword(email, motDePasse);

         if(personneOpt.isPresent()){
             Personne personne= personneOpt.get();
             HttpSession session = request.getSession();
             session.setAttribute("user", personne);

             switch (personne.getRole()){
                 case ADMIN:    response.sendRedirect(request.getContextPath() + "/admin/stats");
                    break;
                 case DOCTEUR:response.sendRedirect("docteurDashboard.jsp");
                    break;
                 case PATIENT: response.sendRedirect("view/patientDashboard.jsp");
                    break;
             }

         }else{
             request.setAttribute("erreur", "Email ou mot de passe incorrect !");
             RequestDispatcher dispatcher = request.getRequestDispatcher("view/auth/login.jsp");
             dispatcher.forward(request, response);
         }


       
    }
}
