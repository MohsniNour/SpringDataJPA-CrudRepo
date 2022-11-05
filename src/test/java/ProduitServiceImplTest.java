import java.util.List;

import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.MethodOrderer;
import org.junit.jupiter.api.Order;
import org.junit.jupiter.api.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import tn.esprit.rh.achat.AchatApplication;
import tn.esprit.rh.achat.entities.Produit;
import tn.esprit.rh.achat.services.IProduitService;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@SpringBootTest(classes = AchatApplication.class)
@RunWith(SpringRunner.class)
public class ProduitServiceImplTest {

		@Autowired
	    IProduitService ps;
		@Test
		@Order(2)
		void testTestretrieveAllProduits() {
			int listProduit = ps.retrieveAllProduits().size();
	        List<Produit> listProduits = ps.retrieveAllProduits();
	        Assertions.assertEquals(listProduit,listProduits.size());
		}

		@Test
		@Order(3)
		void testTestretrieveProduit() {
			Produit op = ps.addProduit(Produit.builder()
		               .codeProduit("785")
		               .libelleProduit("gazouz")
		               .prix(52f)
		               .build());
		        Assertions.assertEquals(op.getIdProduit() , ps.retrieveProduit(op.getIdProduit()).getIdProduit()) ;
				System.out.println("retrieve junit !");
		}

		@Test
		@Order(1)
		void testTestaddProduit() {
			Produit op = ps.addProduit(Produit.builder()
	    			.codeProduit("777")
		            .libelleProduit("yaourt")
		            .prix(52f)
	                .build());
	        Assertions.assertNotNull(op);
			System.out.println("add junit !");
		}

		@Test
		@Order(5)
		void testTestdeleteProduit() {
			Produit op = ps.addProduit(Produit.builder()
	    			.codeProduit("777")
		            .libelleProduit("yaourt")
		            .prix(52f)
	                .build());
	       ps.deleteProduit(op.getIdProduit());
	        Assertions.assertNull(ps.retrieveProduit(op.getIdProduit()));
			System.out.println("delete junit !");
		}

		@Test
		@Order(4)
		void testTesupdateProduit() {
			Produit op = ps.addProduit(Produit.builder()
	    			.codeProduit("777")
		            .libelleProduit("yaourt")
		            .prix(52f)
	                .build());
	        op.setCodeProduit("8888");
	        ps.updateProduit(op);
	        Assertions.assertEquals("8888", ps.updateProduit(op).getCodeProduit());
			System.out.println("update junit !");

		}


}
