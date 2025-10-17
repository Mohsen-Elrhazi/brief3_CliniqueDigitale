package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.repository.PatientRepositoryImpl;

public class PatientService {
    private PatientRepositoryImpl patientRepository;

    public PatientService(){
         this.patientRepository= new PatientRepositoryImpl();

    }

    public boolean save(Patient patient){
        try{
         patientRepository.save(patient);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }
}
