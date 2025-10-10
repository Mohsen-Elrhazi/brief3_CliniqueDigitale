package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name= "docteur")
public class Docteur extends Personne{
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idDocteur;

    @Column(nullable = false)
    private String specialite;

    @ManyToOne
    @JoinColumn(name="departement_id" , nullable=false)
    private Departement departement;

    @OneToMany(mappedBy = "docteur", cascade=CascadeType.ALL)
    private List<Consultation> consultations= new ArrayList<>();

    public Docteur(){
        super();
    }

    public Docteur(String nom, String prenom, String email, String motDePasse, String specialite, Departement departement){
        super(nom, prenom, email, motDePasse);
        this.specialite= specialite;
        this.departement= departement;

    }


}
