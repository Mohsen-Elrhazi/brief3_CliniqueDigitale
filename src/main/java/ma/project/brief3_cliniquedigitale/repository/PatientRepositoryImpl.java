package ma.project.brief3_cliniquedigitale.repository;

import java.util.List;
import java.util.Optional;

public class PatientRepositoryImpl implements IGenericRepository{
    @Override
    public Object save(Object entity) {
        return null;
    }

    @Override
    public Object update(Object entity) {
        return null;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public Optional findByid(Long id) {
        return Optional.empty();
    }

    @Override
    public List findAll() {
        return List.of();
    }
}
