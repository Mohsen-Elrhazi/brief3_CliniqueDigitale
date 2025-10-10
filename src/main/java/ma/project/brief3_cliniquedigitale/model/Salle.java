package ma.project.brief3_cliniquedigitale.model;


import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name="salle")
public class Salle {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idSalle;

    @Column(nullable= false , unique = true)
    private String nom;

    @Column(nullable= false)
    private int capacite;

    @OneToMany(mappedBy = "salle", cascade = CascadeType.ALL)
    private List<Consultation> consultations= new ArrayList<>();


    public Salle(){}

    public Salle(String nom, int capacite){
        this.nom= nom;
        this.capacite= capacite;
    }

}
