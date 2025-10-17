package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;
import ma.project.brief3_cliniquedigitale.enums.Role;

@Entity
@Table(name= "admin")
public class Admin extends Personne{

    public Admin(){
       this.role= Role.ADMIN;
    }

    public Admin(String nom, String prenom, String email, String motDePasse) {
        super(nom, prenom, email, motDePasse, Role.ADMIN);
    }

}
