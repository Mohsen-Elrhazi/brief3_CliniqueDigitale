package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.Column;
import jakarta.persistence.*;
import ma.project.brief3_cliniquedigitale.enums.Role;
import ma.project.brief3_cliniquedigitale.enums.StatutConsultation;

@Entity
@Table(name = "personne")
@Inheritance(strategy = InheritanceType.JOINED)
public class Personne {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    protected Long id;

    @Column( nullable = false, length = 50)
    protected String nom;

    @Column( nullable=false, length= 50)
    protected String prenom;

    @Column( nullable= false, length= 50)
    protected String email;

    @Column( nullable= false, length=50)
    protected String motDePasse;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false,  length=20)
    protected Role role;

    public Personne(){}

    public Personne(String nom, String prenom, String email, String motDePasse, Role role) {
        this.nom = nom;
        this.prenom = prenom;
        this.email = email;
        this.motDePasse = motDePasse;
        this.role= role;
    }

    public String getNom(){return nom;}
    public void setNom(String nom){ this.nom= nom;}

    public String getPrenom(){return prenom;}
    public void setPrenom(String prenom){ this.prenom= prenom;}

    public String getEmail(){return email;}
    public void setEmail(String email){ this.email= email;}

    public String getMotDePasse(){return motDePasse;}
    public void setMotDePasse(String motDePasse){ this.motDePasse= motDePasse;}

    public Role getRole() { return role; }
    public void setRole(Role role) { this.role = role; }

}
