package ma.project.brief3_cliniquedigitale.service;

import ma.project.brief3_cliniquedigitale.model.Patient;
import ma.project.brief3_cliniquedigitale.model.Personne;
import ma.project.brief3_cliniquedigitale.repository.PersonneRepositoryImpl;

import java.util.Optional;

public class PersonneService {
    private PersonneRepositoryImpl personneRepository;

    public PersonneService(){
        this.personneRepository= new PersonneRepositoryImpl();
    }

    public boolean save(Personne personne){
        try{
            personneRepository.save(personne);
            return true;
        }catch(Exception e){
            e.printStackTrace();
            return false;
        }
    }

    public Optional<Personne> findByEmail(String email){
        return personneRepository.findByEmail(email);
    }

   public  Optional<Personne> findByEmailAndPassword(String email, String MotDePasse){
        return personneRepository.findByEmailAndPassword(email, MotDePasse);
   }
}

