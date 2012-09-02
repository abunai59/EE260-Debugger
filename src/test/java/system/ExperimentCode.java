package system;

import java.io.BufferedReader;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStreamReader;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

public class ExperimentCode {
    private static final Logger log = LoggerFactory
	    .getLogger(ExperimentCode.class);

    public static void main(String args[]) throws IOException {
	BufferedReader reader = new BufferedReader(new InputStreamReader(
		new FileInputStream("SampleData/AsmSample.s")));
	String line;
	while ((line = reader.readLine()) != null) {
	    log.info("line: " + line);
	}
	reader.close();
    }
}
