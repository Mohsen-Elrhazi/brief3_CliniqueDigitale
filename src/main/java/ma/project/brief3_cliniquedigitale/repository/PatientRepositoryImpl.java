package ma.project.brief3_cliniquedigitale.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.util.JPAUtil;

import java.util.List;
import java.util.Optional;

public class PatientRepositoryImpl implements IGenericRepository<Patient>{
    private EntityManager em;

    public PatientRepositoryImpl(){
        this.em= JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Patient save(Patient patient) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            em.persist(patient);
            tx.commit();
            return patient;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Patient update(Patient entity) {
        return null;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public Optional<Patient> findByid(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Patient> findAll() {
        return List.of();
    }
}
