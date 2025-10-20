package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.repository.DepartementRepositoryImpl;

import java.util.List;
import java.util.Optional;

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

    public Optional<Departement> findByid(Long id) {
       return departementRepository.findById(id);
    }

    public boolean delete(Long id){
        if(departementRepository.delete(id)){ return true;}
        else{ return false;}
    }
}
