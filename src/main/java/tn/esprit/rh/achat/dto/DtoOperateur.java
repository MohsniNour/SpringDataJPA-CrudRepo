package tn.esprit.rh.achat.dto;

import java.util.Set;

import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.OneToMany;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Getter;
import lombok.Setter;
import tn.esprit.rh.achat.entities.Facture;
@Getter
@Setter
public class DtoOperateur {

	private Long idOperateur;
	private String nom;
	private String prenom;
	
	private String password;

	private Set<Facture> factures;

	public DtoOperateur(String nom, String prenom, String password) {
		super();
		this.nom = nom;
		this.prenom = prenom;
		this.password = password;
	}
	

}
