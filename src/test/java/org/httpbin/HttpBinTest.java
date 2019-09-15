package org.httpbin;

import static org.junit.Assert.assertTrue;

import java.io.File;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

import com.intuit.karate.Results;
import com.intuit.karate.Runner;
import org.apache.commons.io.FileUtils;
import org.junit.Test;

import net.masterthought.cucumber.Configuration;
import net.masterthought.cucumber.ReportBuilder;


public class HttpBinTest {

	@Test
	public void karateTestParallel() {
		String karateOutputPath = "target/surefire-reports";
		Results results = Runner.parallel(getClass(), 5, karateOutputPath);
		generateKarateReport(karateOutputPath);
		assertTrue("there are scenario failures", results.getFailCount() == 0);
	}

	private static void generateKarateReport(String karateOutputPath) {
		Collection<File> jsonFiles = FileUtils.listFiles(new File(karateOutputPath), new String[] {"json"}, true);
		List<String> jsonPaths = new ArrayList(jsonFiles.size());
		jsonFiles.forEach(file -> jsonPaths.add(file.getAbsolutePath()));
		Configuration config = new Configuration(new File("target"), "Karate Demo");
		ReportBuilder reportBuilder = new ReportBuilder(jsonPaths, config);
		reportBuilder.generateReports();        
	}	
}
