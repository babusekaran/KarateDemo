package appium;

import com.intuit.karate.ui.App;
import org.junit.Test;

/**
 *
 * @author babusekaran
 */
public class CalcUiRunner {
    
    @Test
    public void testApp() {
        App.run("src/test/java/appium/calc.feature", "mock");
    }    
    
}
