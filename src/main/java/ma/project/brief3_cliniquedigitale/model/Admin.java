package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;

@Entity
@Table(name= "admin")
public class Admin extends Personne{
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long idAdmin;

    public Admin(){
        super();
    }

    public Admin(String nom, String prenom, String email, String motDePasse) {
        super(nom, prenom, email, motDePasse);
    }

}
