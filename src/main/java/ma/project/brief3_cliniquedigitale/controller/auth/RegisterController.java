package ma.project.brief3_cliniquedigitale.controller.auth;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import ma.project.brief3_cliniquedigitale.enums.Role;
import ma.project.brief3_cliniquedigitale.model.Admin;
import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.model.Personne;
import ma.project.brief3_cliniquedigitale.service.AdminService;
import ma.project.brief3_cliniquedigitale.service.PatientService;
import ma.project.brief3_cliniquedigitale.service.PersonneService;

import java.io.IOException;
import java.util.Optional;

@WebServlet("/register")
public class RegisterController extends HttpServlet {
    private PersonneService personneService= new PersonneService();
    private PatientService patientService= new PatientService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Afficher la page d'inscription
        RequestDispatcher dispatcher = request.getRequestDispatcher("view/auth/register.jsp");
        dispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String nom = request.getParameter("nom");
        String prenom = request.getParameter("prenom");
        String email = request.getParameter("email");
        String motDePasse = request.getParameter("motDePasse");
        double poids= Double.parseDouble(request.getParameter("poids"));
        double taille= Double.parseDouble(request.getParameter("taille"));

        Optional<Personne> exists= personneService.findByEmail(email);
        if(exists.isEmpty()){
//            Personne personne= new Personne(nom, prenom, email, motDePasse, Role.PATIENT);
//            personneService.save(personne);

            Patient patient=new Patient(nom, prenom, email, motDePasse, poids, taille);
            patientService.save(patient);

            response.sendRedirect("login");
        }else{
            request.setAttribute("erreur", "Email déja utillisé");
            RequestDispatcher dispatcher = request.getRequestDispatcher("view/auth/register.jsp");
            dispatcher.forward(request, response);
        }
    }


}
