/*
 * import java.util.List;
 * 
 * 
 * import org.junit.jupiter.api.Assertions; import
 * org.junit.jupiter.api.MethodOrderer; import org.junit.jupiter.api.Order;
 * import org.junit.jupiter.api.Test; import
 * org.junit.jupiter.api.TestMethodOrder; import org.junit.runner.RunWith;
 * import org.springframework.beans.factory.annotation.Autowired; import
 * org.springframework.boot.test.context.SpringBootTest; import
 * org.springframework.test.context.junit4.SpringRunner; import
 * tn.esprit.rh.achat.AchatApplication; import
 * tn.esprit.rh.achat.entities.Stock; import
 * tn.esprit.rh.achat.services.IStockService;
 * 
 * 
 * @TestMethodOrder(MethodOrderer.OrderAnnotation.class)
 * 
 * @SpringBootTest(classes = AchatApplication.class)
 * 
 * @RunWith(SpringRunner.class) public class StockServiceImplTest {
 * 
 * @Autowired IStockService ss;
 * 
 * @Test
 * 
 * @Order(2) public void testretrieveAllStocks(){ int listStock =
 * ss.retrieveAllStocks().size(); List<Stock> listStocks =
 * ss.retrieveAllStocks(); Assertions.assertEquals(listStock,listStocks.size());
 * }
 * 
 * @Test
 * 
 * @Order(3) public void testretrieveStock(){ Stock s =
 * ss.addStock(Stock.builder() .libelleStock("stock1") .qte(27) .qteMin(7)
 * .build()); Assertions.assertEquals(s.getIdStock(),
 * ss.retrieveStock(s.getIdStock()).getIdStock()) ;
 * System.out.println("retrieve junit !");
 * 
 * }
 * 
 * @Test
 * 
 * @Order(1) public void testaddStock(){ Stock s = ss.addStock(Stock.builder()
 * .libelleStock("stock2") .qte(30) .qteMin(10) .build());
 * Assertions.assertNotNull(s); System.out.println("add junit !");
 * 
 * 
 * 
 * }
 * 
 * @Test
 * 
 * @Order(5) public void testdeleteStock(){ Stock s =
 * ss.addStock(Stock.builder() .libelleStock("stock3") .qte(20) .qteMin(5)
 * .build()); ss.deleteStock(s.getIdStock()); //Assertions.assertEquals(-
 * 1,os.retrieveAllOperateurs().size());
 * Assertions.assertNull(ss.retrieveStock(s.getIdStock()));
 * System.out.println("delete junit !");
 * 
 * 
 * }
 * 
 * @Test
 * 
 * @Order(4) public void tesupdateOperateur(){ Stock s =
 * ss.addStock(Stock.builder() .libelleStock("stock4") .qte(23) .qteMin(15)
 * .build()); s.setLibelleStock("Libelle Stock Updated"); ss.updateStock(s);
 * Assertions.assertEquals("Libelle Stock Updated",
 * ss.updateStock(s).getIdStock()); System.out.println("update junit !");
 * 
 * 
 * } }
 */