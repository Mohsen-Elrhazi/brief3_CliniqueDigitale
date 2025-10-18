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

    public Long getIdDepartement() {
        return idDepartement;
    }

    public List<Docteur> getDocteurs() {
        return docteurs;
    }

    public String getNom(){
        return this.nom;
    }

    public void setIdDepartement(Long idDepartement) {
        this.idDepartement = idDepartement;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public void setDocteurs(List<Docteur> docteurs) {
        this.docteurs = docteurs;
    }
}
