package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Docteur;
import ma.project.brief3_cliniquedigitale.repository.DepartementRepositoryImpl;
import ma.project.brief3_cliniquedigitale.repository.DocteurRepositoryImpl;

public class DocteurService {
    private DocteurRepositoryImpl docteurRepository;
    private DepartementRepositoryImpl departementRepository;

    public DocteurService(){
        this.docteurRepository =new DocteurRepositoryImpl();
        this.departementRepository= new DepartementRepositoryImpl();
    }

    public Docteur save(Docteur docteur){
        return docteurRepository.save(docteur);
    }
}
