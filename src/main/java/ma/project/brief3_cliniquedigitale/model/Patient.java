package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name= "patient")
public class Patient extends Personne {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idPatient;

    @Column( nullable = false)
    private double poids;

    @Column( nullable = false)
    private double taille;

    @OneToMany(mappedBy= "patient", cascade= CascadeType.ALL)
    private List<Consultation> consultations= new ArrayList<>();

    public Patient() {
        super();
    }

    public Patient(String nom, String prenom, String email, String motDePasse, double poids, double taille) {
        super(nom, prenom, email, motDePasse);
        this.poids= poids;
        this.taille= taille;
    }
}
