
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
import tn.esprit.rh.achat.entities.Operateur;
import tn.esprit.rh.achat.services.IOperateurService;

@TestMethodOrder(MethodOrderer.OrderAnnotation.class)
@SpringBootTest(classes = AchatApplication.class)
@RunWith(SpringRunner.class)

public class OperateurServiceImplTest {

	 @Autowired
	    IOperateurService os;
	    @Test
	    @Order(2)
	    public void testretrieveAllOperateurs(){
	       int listOperateur = os.retrieveAllOperateurs().size();
	        List<Operateur> listOperateurs = os.retrieveAllOperateurs();
	        Assertions.assertEquals(listOperateur,listOperateurs.size());
	    }

	    @Test
	    @Order(3)
	     public void testretrieveOperateur(){
	       Operateur op = os.addOperateur(Operateur.builder()
	               .nom("Soua")
	               .prenom("Amira")
	               .password("root")
	               .build());
	        Assertions.assertEquals(op.getIdOperateur() , os.retrieveOperateur(op.getIdOperateur()).getIdOperateur()) ;
			System.out.println("retrieve junit !");

	    }

	    @Test
	    @Order(1)
	    public void testaddOperateur(){
	        Operateur op = os.addOperateur(Operateur.builder()
	                .nom("Gassab")
	                .prenom("Selma")
	                .password("root")
	                .build());
	        Assertions.assertNotNull(op);
			System.out.println("add junit !");



	    }

	    @Test
	    @Order(5)
	    public void testdeleteOperateur(){
	       Operateur op = os.addOperateur(Operateur.builder()
	               .nom("Maria")
	               .prenom("Trifi")
	               .password("root")
	               .build());
	        os.deleteOperateur(op.getIdOperateur());
	        //Assertions.assertEquals(- 1,os.retrieveAllOperateurs().size());
	        Assertions.assertNull(os.retrieveOperateur(op.getIdOperateur()));
			System.out.println("delete junit !");


	    }

	    @Test
	    @Order(4)
	    public void tesupdateOperateur(){
	       Operateur op = os.addOperateur(Operateur.builder()
	               .nom("Farhat")
	               .prenom("Sabaa")
	               .password("root")
	               .build());
	        op.setPrenom("test");
	        os.updateOperateur(op);
	        Assertions.assertEquals("test", os.updateOperateur(op).getPrenom());
			System.out.println("update junit !");


	    }


}
