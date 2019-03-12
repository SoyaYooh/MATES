import com.soya.hellomates.domain.IepIotCardQuartz;
import com.soya.hellomates.repository.IepIotCardQuartzDao;
import imp.BaseTest;
import org.junit.Test;
import org.springframework.context.ApplicationContext;
import org.springframework.context.support.ClassPathXmlApplicationContext;

import java.util.List;


public class Tests extends BaseTest {
	@Test
	public void getallMenuTest() throws  Exception{
		ApplicationContext applicationContext = new ClassPathXmlApplicationContext("classpath:springconfig/applicationContext-ds.xml");
		IepIotCardQuartzDao userDao = (IepIotCardQuartzDao) applicationContext.getBean("iepIotCardQuartzDao");
		List<IepIotCardQuartz> lt=userDao.queryAll();
	}
}
