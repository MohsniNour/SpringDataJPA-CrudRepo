package tn.esprit.rh.achat;

import java.util.List;


import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import tn.esprit.rh.achat.AchatApplication;

import tn.esprit.rh.achat.entities.Fournisseur;
import tn.esprit.rh.achat.repositories.FournisseurRepository;
import tn.esprit.rh.achat.entities.CategorieFournisseur;
import tn.esprit.rh.achat.services.IFournisseurService;

@SpringBootTest(classes = AchatApplication.class)
@RunWith(SpringRunner.class)
@TestMethodOrder(MethodOrderer.OrderAnnotation.class)

public class FournisseurRepositoryTest {

	@Autowired
	private FournisseurRepository fournisseurRepository;
	
	@Autowired
	private IFournisseurService fs;
	
    @Order(1)
	@Test
	public void saveFournisseurTest(){
		Fournisseur fournisseur = Fournisseur.builder()
				.code("CODE1")
				.libelle("LIB2")
				.categorieFournisseur(CategorieFournisseur.ORDINAIRE)
				.build();
		fs.addFournisseur(fournisseur);
		
		Assertions.assertNotNull(fournisseur);
		System.out.println("add junit !aaaaaa");

		
		
	}
	
    @Order(2)
	@Test
	public void getListFournisseurTest() {
		List<Fournisseur> fournisseurs = fs.retrieveAllFournisseurs();
		Assertions.assertNotEquals(fournisseurs.size(), 0L);
	}
	
	@Test
    @Order(3)
	public void updateFournisseurTest() {
		Fournisseur fournisseur = Fournisseur.builder()
				.code("CODE1")
				.libelle("LIB2")
				.categorieFournisseur(CategorieFournisseur.ORDINAIRE)
				.build();
		fs.addFournisseur(fournisseur);
		fournisseur.setCode("UPCODE");
		Fournisseur fournisseurUpdated = fournisseurRepository.save(fournisseur);
		Assertions.assertEquals(fournisseurUpdated.getCode(), "UPCODE");
	
	}
	
	  @Test
	    @Order(4)
	     public void testretrieveFournisseur(){
	       Fournisseur f = fs.addFournisseur(Fournisseur.builder()
	               .code("aaaa")
	               .libelle("aaaaaaaaaaaaa")
	               .categorieFournisseur(CategorieFournisseur.ORDINAIRE)
	               .build());
	       Fournisseur fournisseur = fournisseurRepository.findById(f.getIdFournisseur()).get();
	        Assertions.assertEquals(f.getIdFournisseur() , fournisseur.getIdFournisseur()) ;
			System.out.println("retrieve junit !");

	    }
	
	@Test
    @Order(5)
	public void deleteFournisseurTest() {
		Fournisseur fournisseur = Fournisseur.builder()
				.code("CODE1")
				.libelle("LIaaB2")
				.categorieFournisseur(CategorieFournisseur.ORDINAIRE)
				.build();
		fs.addFournisseur(fournisseur);
		
		System.out.println("add junit !");
		fournisseurRepository.delete(fournisseur);
		Fournisseur fournisseur2 = fs.retrieveFournisseur(fournisseur.getIdFournisseur());
		Assertions.assertNull(fournisseur2);
		System.out.println("finish");
	}
	
}
