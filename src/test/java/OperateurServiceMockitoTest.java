import java.util.ArrayList;
import java.util.List;
import java.util.Optional;
import org.mockito.Mock;
import org.junit.jupiter.api.Assertions;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mockito;
import org.mockito.junit.MockitoJUnitRunner;

import tn.esprit.rh.achat.AchatApplication;
import tn.esprit.rh.achat.entities.Operateur;
import tn.esprit.rh.achat.repositories.OperateurRepository;
import tn.esprit.rh.achat.services.OperateurServiceImpl;

import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;


@SpringBootTest(classes = AchatApplication.class)
@RunWith(MockitoJUnitRunner.class)
public class OperateurServiceMockitoTest {
	
 @Mock
 OperateurRepository operateurRepositoryMock;
 @InjectMocks
 OperateurServiceImpl operateurService;


 Operateur op = Operateur.builder().nom("Gassab").prenom("Selma").password("root").build();
 List<Operateur> listOperateurs = new ArrayList<Operateur>(){
     {
         add(Operateur.builder().nom("Soua").prenom("Amira").password("root").build());
         add(Operateur.builder().nom("Talhaoui").prenom("Hassen").password("root").build());
         add(Operateur.builder().nom("mohsni").prenom("nour").password("root").build());
         add(Operateur.builder().nom("Farhat").prenom("Sabaa").password("root").build());

     }

 };

 @Test
 public void testretrieveOperateur(){
     Mockito.when(operateurRepositoryMock.findById(Mockito.anyLong())).thenReturn(Optional.of(op)); //find all
     Operateur op1 = operateurService.retrieveOperateur(2L);
     Assertions.assertNotNull(op1);
		System.out.println("woooorkiiiiing retrieve !");


 }
 @Test
 public void testaddOperateur() {
     Mockito.when(operateurRepositoryMock.save(op)).thenReturn(op);
     Operateur op1 = operateurService.addOperateur(op);
     Assertions.assertNotNull(op1);
		System.out.println("woooorkiiiiing add !");


 }

 @Test
 public void testretrieveAllOperateurs() {
     Mockito.when(operateurRepositoryMock.findAll()).thenReturn(listOperateurs);
     List<Operateur> listOp = operateurService.retrieveAllOperateurs();
     Assertions.assertNotNull(listOp);
		System.out.println("woooorkiiiiing all retrieve !");

 }



 @Test
 public void tesupdateOperateur() {
     op.setPrenom("khalil");
     Mockito.when(operateurRepositoryMock.save(op)).thenReturn(op);
     Operateur op1 = operateurService.updateOperateur(op);
     Assertions.assertEquals(op.getPrenom(),op1.getPrenom());
		System.out.println("woooorkiiiiing update !");


 }

 @Test
 public void testdeleteOperateur() {
     Operateur op2 = Operateur.builder().nom("Farhat").prenom("Sabaa").password("root").build();
     operateurService.deleteOperateur(op2.getIdOperateur());
     Mockito.verify(operateurRepositoryMock).deleteById(op2.getIdOperateur());
		System.out.println("woooorkiiiiing delete !");


 }

}