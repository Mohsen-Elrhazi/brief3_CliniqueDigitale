package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;
import ma.project.brief3_cliniquedigitale.enums.Role;

import java.util.ArrayList;
import java.util.List;

@Entity
@Table(name= "patient")
public class Patient extends Personne {

    @Column( nullable = false)
    private double poids;

    @Column( nullable = false)
    private double taille;

    @OneToMany(mappedBy= "patient", cascade= CascadeType.ALL)
    private List<Consultation> consultations= new ArrayList<>();

    public Patient() {
        this.role= Role.PATIENT;
    }


    public Patient(String nom, String prenom, String email, String motDePasse, double poids, double taille) {
        super(nom, prenom, email, motDePasse,Role.PATIENT);
        this.poids= poids;
        this.taille= taille;
    }

    public double getPoids() {
        return poids;
    }

    public double getTaille() {
        return taille;
    }

    public List<Consultation> getConsultations() {
        return consultations;
    }

    public void setPoids(double poids) {
        this.poids = poids;
    }

    public void setTaille(double taille) {
        this.taille = taille;
    }

    public void setConsultations(List<Consultation> consultations) {
        this.consultations = consultations;
    }
}
