package ma.project.brief3_cliniquedigitale.controller.admin;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.service.PatientService;

import java.io.IOException;
import java.util.List;


@WebServlet("/admin/patients")
public class PatientController extends HttpServlet {
    private PatientService patientService= new PatientService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // définir la page à inclure dans le layout
        request.setAttribute("page", "/view/dashboard/admin/pages/patients.jsp");

        List<Patient> patients= patientService.findAll();
        request.setAttribute("patients", patients);
        // renvoyer vers le layout principal
        request.getRequestDispatcher("/view/dashboard/admin/layouts/layout.jsp").forward(request, response);
    }
}
