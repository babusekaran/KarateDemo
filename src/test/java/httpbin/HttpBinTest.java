package httpbin;

import org.junit.runner.RunWith;

import com.intuit.karate.junit4.Karate;

import cucumber.api.CucumberOptions;

@RunWith(Karate.class)
@CucumberOptions(plugin = {"pretty", "html:target/cucumber"})
public class HttpBinTest {

}
