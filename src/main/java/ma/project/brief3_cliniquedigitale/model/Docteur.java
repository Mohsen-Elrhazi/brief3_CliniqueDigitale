package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;
import ma.project.brief3_cliniquedigitale.enums.Role;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name= "docteur")
public class Docteur extends Personne{

    @Column(nullable = false)
    private String specialite;

    @ManyToOne
    @JoinColumn(name="departement_id" , nullable=false)
    private Departement departement;

    @OneToMany(mappedBy = "docteur", cascade=CascadeType.ALL)
    private List<Consultation> consultations= new ArrayList<>();

    public Docteur(){
        this.role= Role.DOCTEUR;
    }

    public Docteur(String nom, String prenom, String email, String motDePasse, String specialite, Departement departement){
        super(nom, prenom, email, motDePasse, Role.DOCTEUR);
        this.specialite= specialite;
        this.departement= departement;
    }

    public String getSpecialite() {
        return specialite;
    }

    public Departement getDepartement() {
        return departement;
    }

    public List<Consultation> getConsultations() {
        return consultations;
    }

    public void setSpecialite(String specialite) {
        this.specialite = specialite;
    }

    public void setDepartement(Departement departement) {
        this.departement = departement;
    }

    public void setConsultations(List<Consultation> consultations) {
        this.consultations = consultations;
    }
}
