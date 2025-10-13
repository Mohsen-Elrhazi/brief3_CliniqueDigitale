package ma.project.brief3_cliniquedigitale.repository;

import java.util.List;
import java.util.Optional;

public interface IGenericRepository<T> {
    T save(T entity);
    T update(T entity);
    boolean delete(Long id);
    Optional<T> findByid(Long id);
    List<T> findAll();
}
