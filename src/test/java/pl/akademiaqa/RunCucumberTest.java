package pl.akademiaqa;

import io.cucumber.junit.Cucumber;
import io.cucumber.junit.CucumberOptions;
import org.junit.runner.RunWith;

@RunWith(Cucumber.class)
@CucumberOptions(
        plugin = {"pretty", "html:target/cucumber-report.html"},
        glue = {"pl.akademiaqa"},
        features = "src/test/resources/pl.akademiaqa")
public class RunCucumberTest {
}