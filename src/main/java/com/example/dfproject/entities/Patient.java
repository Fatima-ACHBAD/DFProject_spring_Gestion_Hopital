package com.example.dfproject.entities;

import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import org.hibernate.annotations.NotFound;
import org.springframework.format.annotation.DateTimeFormat;

import java.util.Date;

@Entity // entite jpa qui a un id
public class Patient {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;
    @NotFound
    private String nom;
    @DateTimeFormat (pattern = "yyyy-MM-dd")
    private Date dateNaissance;
    private boolean malade;
    private String adresse;
    private String codePostal;
    private String numeroTelephone;
    //private Titre titre;

    public Patient(

    ) {
        super();
    }

    public Patient(String nom, Date dateNaissance, boolean malade, String adresse, String codePostal, String numeroTelephone) {
        this.nom = nom;
        this.dateNaissance = dateNaissance;
        this.malade = malade;
        this.adresse = adresse;
        this.codePostal = codePostal;
        this.numeroTelephone = numeroTelephone;
    }

    @Override
    public String toString() {
        return "Patient{" +
                "id=" + id +
                ", nom='" + nom + '\'' +
                ", dateNaissance=" + dateNaissance +
                ", malade=" + malade +
                ", adresse='" + adresse + '\'' +
                ", codePostal='" + codePostal + '\'' +
                ", numeroTelephone='" + numeroTelephone + '\'' +
                '}';
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNom() {
        return nom;
    }

    public void setNom(String nom) {
        this.nom = nom;
    }

    public Date getDateNaissance() {
        return dateNaissance;
    }

    public void setDateNaissance(Date dateNaissance) {
        this.dateNaissance = dateNaissance;
    }

   public boolean isMalade() {
        return malade;
    }

    public void setMalade(boolean malade) {
        this.malade = malade;
    }



    public String getAdresse() {
        return adresse;
    }

    public void setAdresse(String adresse) {
        this.adresse = adresse;
    }

    public String getCodePostal() {
        return codePostal;
    }

    public void setCodePostal(String codePostal) {
        this.codePostal = codePostal;
    }

    public String getNumeroTelephone() {
        return numeroTelephone;
    }

    public void setNumeroTelephone(String numeroTelephone) {
        this.numeroTelephone = numeroTelephone;
    }

   /* public Titre getTitre() {
        return titre;
    }

    public void setTitre(Titre titre) {
        this.titre = titre;
    }

    */


}

