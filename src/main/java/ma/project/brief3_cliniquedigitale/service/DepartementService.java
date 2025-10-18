package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.repository.DepartementRepositoryImpl;

import java.util.List;

public class DepartementService {
    private DepartementRepositoryImpl departementRepository ;

    public DepartementService(){
        this.departementRepository= new DepartementRepositoryImpl();
    }

    public Departement save(Departement departement){
        return departementRepository.save(departement);
    }

    public List<Departement> findAll(){
        return departementRepository.findAll();
    }
}
