import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import java.util.stream.Collectors;
import java.util.stream.Stream;


import org.junit.jupiter.api.MethodOrderer;
import org.junit.Test;
import org.junit.jupiter.api.TestMethodOrder;
import org.junit.jupiter.api.extension.ExtendWith;
import org.junit.runner.RunWith;
import org.mockito.junit.jupiter.MockitoExtension;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import static org.mockito.Mockito.when;
import static org.junit.jupiter.api.Assertions.assertEquals;
import static org.junit.jupiter.api.Assertions.assertNotNull;

import tn.esprit.rh.achat.AchatApplication;
import tn.esprit.rh.achat.entities.Operateur;
import tn.esprit.rh.achat.repositories.OperateurRepository;
import tn.esprit.rh.achat.services.IOperateurService;

@RunWith(SpringRunner.class)
@SpringBootTest(classes = AchatApplication.class)


public class OperateurServiceImplTest {

	@MockBean
	private OperateurRepository operateurRepository;
	private Operateur operateur1 = new Operateur(1L,"test1","tes1","546125",null);
	private Operateur operateur2 = new Operateur(2L,"test2","test2","546125",null);

	@Autowired
	IOperateurService operateurService;
	
	  @Test
		public void addOperateurTest() {
	    	when(operateurRepository.save(operateur1)).thenReturn(operateur1);
	    	assertNotNull(operateur1);
	    	
	    	Operateur persisted = operateurService.addOperateur(operateur1);
			assertEquals(operateur1, persisted); 
	    	
			System.out.println("add works !");
		}
	
	 @Test 
	    public void retrieveAllOperateursTest() {
	    	when(operateurRepository.findAll()).thenReturn(Stream
	    			.of(operateur1,operateur2)
	    			.collect(Collectors.toList()));
	    	
	    	assertEquals(2,operateurService.retrieveAllOperateurs().size());
	    	System.out.println("Retrieve all operators works !");
	    }
	
	   @Test 
	    public void UpdateOperateurTest() {
	    	when(operateurRepository.save(operateur1)).thenReturn(operateur1);
	    	assertNotNull(operateur1);
	    	assertEquals(operateur1, operateurService.updateOperateur(operateur1));
	    	System.out.println("Update works!");
	    }
	    
	    @Test
	    public void retrieveOperateurTest() {
	    	when(operateurRepository.findById(operateur1.getIdOperateur())).thenReturn(Optional.of(operateur1));
	    	assertEquals(operateur1, operateurService.retrieveOperateur(operateur1.getIdOperateur()));
	    	System.out.println("Retrieve operator by id works !");
	    }
	

}
