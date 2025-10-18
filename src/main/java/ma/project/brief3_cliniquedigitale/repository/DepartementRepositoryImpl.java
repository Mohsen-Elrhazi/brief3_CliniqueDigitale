package ma.project.brief3_cliniquedigitale.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import ma.project.brief3_cliniquedigitale.model.Departement;
import ma.project.brief3_cliniquedigitale.model.Docteur;
import ma.project.brief3_cliniquedigitale.util.JPAUtil;

import java.util.List;
import java.util.Optional;

public class DepartementRepositoryImpl implements IGenericRepository<Departement>{
    private EntityManager em;

    public DepartementRepositoryImpl(){
        this.em= JPAUtil.getEntityManagerFactory().createEntityManager();
    }
    @Override
    public Departement save(Departement departement) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            em.persist(departement);
            tx.commit();
            return departement;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Departement update(Departement departement) {
        EntityTransaction tx= em.getTransaction();
        try{
            Departement updated= em.merge(departement);
            tx.commit();
            return updated;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public boolean delete(Long id) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            Departement departement= em.find(Departement.class, id);
            if(departement!= null){
                em.remove(departement);
                tx.commit();
                return true;
            }else{
                tx.rollback();
                return false;
            }

        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return false;
        }
    }

    @Override
    public Optional<Departement> findByid(Long id) {
        try{
            Departement departement= em.find(Departement.class, id);
            return Optional.ofNullable(departement);
        }catch(Exception e){
            e.printStackTrace();
            return Optional.empty();
        }
    }

    @Override
    public List<Departement> findAll() {
        try{
            List<Departement> departements=  em.createQuery("select d from Departement d", Departement.class).getResultList();
            return departements;
        }catch(Exception e){
            e.printStackTrace();
            return List.of();
        }
    }
}
