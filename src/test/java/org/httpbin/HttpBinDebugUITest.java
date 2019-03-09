package org.httpbin;

import org.junit.Test;

import com.intuit.karate.ui.App;

public class HttpBinDebugUITest {
	
	@Test
	public void karateDebugUI() {
		App.run("src/test/java/org/httpbin/test/httpbinGetTest.feature", "dev");
	}

}
