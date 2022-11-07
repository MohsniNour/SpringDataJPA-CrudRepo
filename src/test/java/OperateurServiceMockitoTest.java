/*
 * import java.util.ArrayList; import java.util.List; import java.util.Optional;
 * import org.mockito.Mock; import org.junit.jupiter.api.Test; import
 * org.junit.jupiter.api.extension.ExtendWith; import
 * org.junit.jupiter.api.Assertions; import org.junit.runner.RunWith; import
 * org.mockito.InjectMocks; import org.mockito.Mockito; import
 * org.mockito.junit.MockitoJUnitRunner; import
 * org.mockito.junit.jupiter.MockitoExtension; import
 * org.springframework.boot.test.context.SpringBootTest; import
 * tn.esprit.rh.achat.AchatApplication; import
 * tn.esprit.rh.achat.entities.Operateur; import
 * tn.esprit.rh.achat.repositories.OperateurRepository; import
 * tn.esprit.rh.achat.services.OperateurServiceImpl;
 * 
 * @RunWith(MockitoJUnitRunner.class)
 * 
 * @SpringBootTest(classes = AchatApplication.class)
 * 
 * @ExtendWith(MockitoExtension.class)
 * 
 * public class OperateurServiceMockitoTest {
 * 
 * @Mock OperateurRepository operateurRepositoryMock;
 * 
 * @InjectMocks OperateurServiceImpl operateurService;
 * 
 * 
 * Operateur op =
 * Operateur.builder().nom("Gassab").prenom("Selma").password("root").build();
 * List<Operateur> listOperateurs = new ArrayList<Operateur>(){ {
 * add(Operateur.builder().nom("Soua").prenom("Amira").password("root").build())
 * ; add(Operateur.builder().nom("Talhaoui").prenom("Hassen").password("root").
 * build());
 * add(Operateur.builder().nom("mohsni").prenom("nour").password("root").build()
 * );
 * add(Operateur.builder().nom("Farhat").prenom("Sabaa").password("root").build(
 * ));
 * 
 * }
 * 
 * };
 * 
 * @Test public void testretrieveOperateur(){
 * Mockito.when(operateurRepositoryMock.findById(Mockito.anyLong())).thenReturn(
 * Optional.of(op)); //find all Operateur op1 =
 * operateurService.retrieveOperateur(2L); Assertions.assertNotNull(op1);
 * System.out.println("woooorkiiiiing retrieve !");
 * 
 * 
 * }
 * 
 * @Test public void testaddOperateur() {
 * Mockito.when(operateurRepositoryMock.save(op)).thenReturn(op); Operateur op1
 * = operateurService.addOperateur(op); Assertions.assertNotNull(op1);
 * System.out.println("woooorkiiiiing add !");
 * 
 * 
 * }
 * 
 * @Test public void testretrieveAllOperateurs() {
 * Mockito.when(operateurRepositoryMock.findAll()).thenReturn(listOperateurs);
 * List<Operateur> listOp = operateurService.retrieveAllOperateurs();
 * Assertions.assertNotNull(listOp);
 * System.out.println("woooorkiiiiing all retrieve !");
 * 
 * }
 * 
 * 
 * 
 * @Test public void tesupdateOperateur() { op.setPrenom("khalil");
 * Mockito.when(operateurRepositoryMock.save(op)).thenReturn(op); Operateur op1
 * = operateurService.updateOperateur(op);
 * Assertions.assertEquals(op.getPrenom(),op1.getPrenom());
 * System.out.println("woooorkiiiiing update !");
 * 
 * 
 * }
 * 
 * @Test public void testdeleteOperateur() { Operateur op2 =
 * Operateur.builder().nom("Farhat").prenom("Sabaa").password("root").build();
 * operateurService.deleteOperateur(op2.getIdOperateur());
 * Mockito.verify(operateurRepositoryMock).deleteById(op2.getIdOperateur());
 * System.out.println("woooorkiiiiing delete !");
 * 
 * 
 * }
 * 
 * }
 */
import static org.junit.Assert.assertEquals;
import static org.mockito.ArgumentMatchers.anyInt;
import static org.mockito.ArgumentMatchers.anyList;
import static org.mockito.Mockito.*;

import java.util.ArrayList;
import java.util.List;
import java.util.UUID;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.junit.Before;
import org.junit.Rule;
import org.junit.jupiter.api.Test;
import org.junit.runner.RunWith;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.mockito.junit.MockitoJUnit;
import org.mockito.junit.MockitoJUnitRunner;
import org.mockito.junit.MockitoRule;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.web.servlet.setup.MockMvcBuilders;

import tn.esprit.rh.achat.AchatApplication;
import tn.esprit.rh.achat.entities.Operateur;
import tn.esprit.rh.achat.repositories.OperateurRepository;
import tn.esprit.rh.achat.services.OperateurServiceImpl;

@RunWith(MockitoJUnitRunner.class)
@SpringBootTest(classes = AchatApplication.class)
public class OperateurServiceMockitoTest {

    private OperateurServiceImpl service;
    private OperateurRepository repository;


    @Test
    public void getOperateurTest() {
        System.out.println("******************** get operateur test *****************************");
  

        repository = mock(OperateurRepository.class);
        service = new OperateurServiceImpl(repository);
        List<Operateur> operateurList = new ArrayList<>();

        operateurList.add(new Operateur( "nom", "prenom", "password"));
        operateurList.add(new Operateur( "nom2", "prenom2", "password2"));

        when(repository.findAll()).thenReturn(operateurList);

        List<Operateur> expectedList = service.retrieveAllOperateurs();

        assertEquals(2, expectedList.size());
    }



}