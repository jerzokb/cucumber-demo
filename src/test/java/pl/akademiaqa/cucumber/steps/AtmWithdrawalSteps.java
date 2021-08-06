package pl.akademiaqa.cucumber.steps;

import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;

public class AtmWithdrawalSteps {

    @Given("I have {int} PLN in my account")
    public void i_have_pln_in_my_account(Integer balance) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println("I have balance account " + balance);
    }

    @Given("My name is {string}")
    public void my_name_is(String imie) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println(imie);
    }

    @Given("I have {double} EUR")
    public void i_have_eur(Double double1) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println(double1);
    }

    @When("I request {int} PLN")
    public void i_request_pln(Integer int1) {
        // Write code here that turns the phrase above into concrete actions

    }

    @Then("{int} PLN should be dispensed")
    public void pln_should_be_dispensed(Integer int1) {
        // Write code here that turns the phrase above into concrete actions

    }

    @Then("{int} PLN should stay on my account")
    public void pln_should_stay_on_my_account(Integer int1) {
        // Write code here that turns the phrase above into concrete actions

    }
}
