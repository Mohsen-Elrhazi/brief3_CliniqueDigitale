//package ma.project.brief3_cliniquedigitale.repository;
//
//import jakarta.persistence.EntityManager;
//import jakarta.persistence.EntityManagerFactory;
//import ma.project.brief3_cliniquedigitale.model.Admin;
//import ma.project.brief3_cliniquedigitale.util.JPAUtil;
//
//import java.util.Optional;
//
//public class GenericRepositoryImpl implements IGenericRepository<Admin> {
//
//private EntityManagerFactory emf= JPAUtil.getEntityManagerFactory();
//    @Override
//    public void save(Admin admin) {
//
//    }
//
//    @Override
//    public Optional<Admin> findByid(int id) {
//        EntityManager em= emf.createEntityManager();
//        try{
//            Optional<Admin> admin= Optional.ofNullable(em.find(Admin.class, id));
//            if(admin.isPresent()) return admin;
//            else throw new Exception("admin id not found");
//        }catch(Exception e){
//            throw new RuntimeException( e.getMessage());
//        }
//    }
//}
