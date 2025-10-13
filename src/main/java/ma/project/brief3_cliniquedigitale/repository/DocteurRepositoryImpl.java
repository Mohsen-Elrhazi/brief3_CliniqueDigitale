package ma.project.brief3_cliniquedigitale.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityManagerFactory;
import jakarta.persistence.EntityTransaction;
import ma.project.brief3_cliniquedigitale.model.Docteur;
import ma.project.brief3_cliniquedigitale.util.JPAUtil;

import java.util.List;
import java.util.Optional;

public class DocteurRepositoryImpl implements IGenericRepository<Docteur> {
    private EntityManager em;

    public DocteurRepositoryImpl(){
        this.em= JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Docteur save(Docteur docteur) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            em.persist(docteur);
            tx.commit();
            return docteur;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Docteur update(Docteur docteur) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
           Docteur updated= em.merge(docteur);
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
            Docteur docteur= em.find(Docteur.class, id);
            if(docteur!= null){
                em.remove(docteur);
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
    public Optional<Docteur> findByid(Long id) {
        try{
            Docteur docteur= em.find(Docteur.class, id);
            return Optional.ofNullable(docteur);
        }catch(Exception e){
            e.printStackTrace();
            return Optional.empty();
        }
    }

    @Override
    public List<Docteur> findAll() {
        return List.of();
    }
}
