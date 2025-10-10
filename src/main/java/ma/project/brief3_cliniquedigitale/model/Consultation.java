package ma.project.brief3_cliniquedigitale.model;

import jakarta.persistence.*;
import ma.project.brief3_cliniquedigitale.enums.StatutConsultation;

import java.time.LocalDate;
import java.time.LocalTime;

@Entity
@Table(name= "consultation")
public class Consultation {
    @Id
    @GeneratedValue( strategy= GenerationType.IDENTITY)
    private Long idConsultation;

    @Column( nullable= false)
    private LocalDate date;

    @Column( nullable= false)
    private LocalTime heure;

    @Enumerated(EnumType.STRING)
    @Column(nullable = false)
    private StatutConsultation statut;

    @Column(length = 500)
    private String compteRendu;

    @ManyToOne
    @JoinColumn(name="patient_id", nullable= false)
    private Patient patient;

    @ManyToOne
    @JoinColumn(name="docteur_id", nullable = false)
    private Docteur docteur;

    @ManyToOne
    @JoinColumn(name="salle_id", nullable=false)
    private Salle salle;

    public Consultation(){}

    public Consultation(LocalDate date, LocalTime heure, StatutConsultation statut, String compteRendu, Patient patient, Docteur docteur, Salle salle) {
        this.date = date;
        this.heure = heure;
        this.statut = statut;
        this.compteRendu = compteRendu;
        this.patient = patient;
        this.docteur= docteur;
        this.salle= salle;
    }
}
