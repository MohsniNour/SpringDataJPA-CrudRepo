import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.mockito.Mock;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.Assertions;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.boot.test.context.SpringBootTest;
import tn.esprit.rh.achat.AchatApplication; 
import tn.esprit.rh.achat.entities.Fournisseur;
import tn.esprit.rh.achat.repositories.FournisseurRepository;
import tn.esprit.rh.achat.entities.CategorieFournisseur;
import tn.esprit.rh.achat.services.FournisseurServiceImpl;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest(classes = AchatApplication.class)
public class FournisseurMockitoTest {


	 @Mock
	 FournisseurRepository fournisseurRepositoryMock;
	 @InjectMocks
	 FournisseurServiceImpl fournisseurService;


	 Fournisseur fournisseur =
			 Fournisseur.builder() .code("CODE1") .libelle("LIB1")
			 .categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build();
	 List<Fournisseur> listFournisseurs = new ArrayList<Fournisseur>(){
	     {
	         add(Fournisseur.builder() .code("CODE2") .libelle("LIB2").categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build());
	         add(Fournisseur.builder() .code("CODE3") .libelle("LIB3").categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build());
	         add(Fournisseur.builder() .code("CODE4") .libelle("LIB4").categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build());
	         add(Fournisseur.builder() .code("CODE5") .libelle("LIB5").categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build());
	     }
	 };

	 @Test
	 public void testretrieveFournisseur(){
	     Mockito.when(fournisseurRepositoryMock.findById(Mockito.anyLong())).thenReturn(Optional.of(fournisseur)); //find all
	     Fournisseur f1 = fournisseurService.retrieveFournisseur(2L);
	     Assertions.assertNotNull(f1);
			System.out.println("wererey retrieve fournisseur tekhdem !");
	 }
	 @Test
	 public void testaddfournisseur() {
	     Mockito.when(fournisseurRepositoryMock.save(fournisseur)).thenReturn(fournisseur);
	     Fournisseur f1 = fournisseurService.addFournisseur(fournisseur);
	     Assertions.assertNotNull(f1);
			System.out.println("add fournisseur tekhdem !");
	 }

	 @Test
	 public void testretrieveAllfournisseurs() {
	     Mockito.when(fournisseurRepositoryMock.findAll()).thenReturn(listFournisseurs);
	     List<Fournisseur> listF = fournisseurService.retrieveAllFournisseurs();
	     Assertions.assertNotNull(listF);
			System.out.println("all retrieve tekhdem zeda !");

	 }



	 /*@Test
	 public void testUpdateFournisseur() {
	     fournisseur.setCode("CODE9");
	     Mockito.when(fournisseurRepositoryMock.save(fournisseur)).thenReturn(fournisseur);
	     Fournisseur f1 = fournisseurService.updateFournisseur(fournisseur);
	     Assertions.assertEquals(fournisseur.getCode(),f1.getCode());
		 System.out.println("update frounisseur wroks !");
	 }*/

	 @Test
	 public void testdeletefournisseur() {
	     Fournisseur f2 = Fournisseur.builder() .code("DelTest") .libelle("LibDelete")
				 .categorieFournisseur(CategorieFournisseur.ORDINAIRE) .build();
	     fournisseurService.deleteFournisseur(f2.getIdFournisseur());
	     Mockito.verify(fournisseurRepositoryMock).deleteById(f2.getIdFournisseur());
			System.out.println("delete fournisseur works !");


	 }
}