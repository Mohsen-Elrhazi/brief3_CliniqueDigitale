package ma.project.brief3_cliniquedigitale.repository;

import jakarta.persistence.EntityManager;
import jakarta.persistence.EntityTransaction;
import jakarta.persistence.TypedQuery;
import ma.project.brief3_cliniquedigitale.model.Personne;
import ma.project.brief3_cliniquedigitale.util.JPAUtil;

import java.util.List;
import java.util.Optional;

public class PersonneRepositoryImpl implements IGenericRepository<Personne>{
    private EntityManager em;

    public PersonneRepositoryImpl(){
        this.em= JPAUtil.getEntityManagerFactory().createEntityManager();
    }

    @Override
    public Personne save(Personne personne) {
        EntityTransaction tx= em.getTransaction();
        try{
            tx.begin();
            em.persist(personne);
            tx.commit();
            return personne;
        }catch(Exception e){
            if(tx.isActive()) tx.rollback();
            e.printStackTrace();
            return null;
        }
    }

    @Override
    public Personne update(Personne personne) {

        return personne;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public Optional<Personne> findByid(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Personne> findAll() {
        return List.of();
    }

    public Optional<Personne> findByEmail(String email) {
        TypedQuery<Personne> query = em.createQuery(
                "SELECT p FROM Personne p WHERE p.email = :email", Personne.class);
        query.setParameter("email", email);
        try {
            return Optional.of(query.getSingleResult());
        } catch (Exception e) {
            return Optional.empty();
        }
    }

    public Optional<Personne> findByEmailAndPassword(String email, String motDePasse) {
        TypedQuery<Personne> query = em.createQuery(
                "SELECT p FROM Personne p WHERE p.email = :email AND p.motDePasse = :motDePasse",
                Personne.class);
        query.setParameter("email", email);
        query.setParameter("motDePasse", motDePasse);

        try {
            return Optional.of(query.getSingleResult());
        } catch (Exception e) {
            return Optional.empty();
        }
    }


}

