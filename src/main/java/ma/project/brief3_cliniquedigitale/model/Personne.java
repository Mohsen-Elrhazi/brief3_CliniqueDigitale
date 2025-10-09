package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.Column;
import jakarta.persistence.MappedSuperclass;

@MappedSuperclass
public abstract class Personne {
    @Column(name = "nom", nullable = false, length = 50)
    protected String nom;

    @Column(name= "prenom", nullable=false, length= 50)
    protected String prenom;

    @Column(name= "email", nullable= false, length= 50)
    protected String email;

    @Column(name= "motDePasse", nullable= false, length=50)
    protected String motDePasse;

    public Personne(){}

    public Personne(String nom, String prenom, String email, String motDePasse) {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.motDePasse = motDePasse;
    }

    public String getNom(){return nom;}
    public void setNom(String nom){ this.nom= nom;}

    public String getPrenom(){return prenom;}
    public void setPrenom(String prenom){ this.prenom= prenom;}

    public String getEmail(){return email;}
    public void setEmail(String email){ this.email= email;}

    public String getMotDePasse(){return motDePasse;}
    public void setMotDePasse(String motDePasse){ this.motDePasse= motDePasse;}

}
