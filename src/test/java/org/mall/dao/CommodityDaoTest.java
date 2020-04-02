package org.mall.dao;
import org.junit.runner.RunWith;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;
@RunWith(SpringRunner.class)
@SpringBootTest(classes = CommodityDaoTest.class)
public class CommodityDaoTest {
/*    @Autowired
    private CommodityDao commodityDao;
    @Test
    public void test(){
        List<Commodity> list = commodityDao.findAll();
        list.forEach(commodity -> {
            System.out.println(commodity.toString());
        });
    }*/
}