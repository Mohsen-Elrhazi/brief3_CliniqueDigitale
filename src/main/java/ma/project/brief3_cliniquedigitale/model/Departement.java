package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name= "departement")
public class Departement {
    @Id
    @GeneratedValue(strategy= GenerationType.IDENTITY)
    private Long idDepartement;

    @Column(nullable= false)
    private String nom;

    @OneToMany(mappedBy = "departement", cascade= CascadeType.ALL)
    private List<Docteur> docteurs= new ArrayList<>();

    public Departement(){}

    public Departement(String nom) {
        this.nom = nom;
    }
}
