package ma.project.brief3_cliniquedigitale.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import ma.project.brief3_cliniquedigitale.model.Admin;
import ma.project.brief3_cliniquedigitale.util.JPAUtil;

import java.util.List;
import java.util.Optional;

public class AdminRepositoryImpl implements  IGenericRepository<Admin>{
    private EntityManager em;

    public AdminRepositoryImpl(){
        this.em= JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Admin save(Admin admin) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            em.persist(admin);
            tx.commit();
            return admin;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Admin update(Admin entity) {
        return null;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public Optional<Admin> findById(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Admin> findAll() {
        return List.of();
    }
}
