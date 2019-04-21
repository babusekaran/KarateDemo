package appium;

import com.intuit.karate.junit4.Karate;
import org.junit.BeforeClass;
import org.junit.runner.RunWith;

/**
 *
 * @author babusekaran
 */
@RunWith(Karate.class)
public class CalcRunner {

    @BeforeClass
    public static void beforeClass() {
        System.setProperty("karate.env", "mock");
    }

}

