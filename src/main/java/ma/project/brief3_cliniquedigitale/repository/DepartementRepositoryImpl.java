package ma.project.brief3_cliniquedigitale.repository;

import ma.project.brief3_cliniquedigitale.model.Departement;

import java.util.List;
import java.util.Optional;

public class DepartementRepositoryImpl implements IGenericRepository<Departement>{
    @Override
    public Departement save(Departement entity) {
        return null;
    }

    @Override
    public Departement update(Departement entity) {
        return null;
    }

    @Override
    public boolean delete(Long id) {
        return false;
    }

    @Override
    public Optional<Departement> findByid(Long id) {
        return Optional.empty();
    }

    @Override
    public List<Departement> findAll() {
        return List.of();
    }
}
