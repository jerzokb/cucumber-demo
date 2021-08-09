package pl.akademiaqa.cucumber.hooks;

import io.cucumber.java.BeforeStep;

public class Hooks {

    @BeforeStep(value = "@allMoney")
    public void beforeStep() {
        System.out.println("Before step hook!");
    }
}
