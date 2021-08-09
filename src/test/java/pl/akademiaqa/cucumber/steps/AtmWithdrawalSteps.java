package pl.akademiaqa.cucumber.steps;

import io.cucumber.datatable.DataTable;
import io.cucumber.java.en.Given;
import io.cucumber.java.en.Then;
import io.cucumber.java.en.When;
import pl.akademiaqa.dto.AccountDto;

import java.util.List;
import java.util.Map;

public class AtmWithdrawalSteps {

    @Given("I have {int} PLN in my account(s)/bank")
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

//    @Given("I have positive balance on my accounts")
//    public void i_have_positive_balance_on_my_accounts(DataTable dataTable) {
//        List<List<String>> lists = dataTable.asLists();
//
//        for (List<String> columns : lists) {
//            System.out.println(columns.get(0) + " " + columns.get(1));
//        }
//    }
//
//    @Given("I have positive balance on my accounts")
//    public void i_have_positive_balance_on_my_accounts(DataTable dataTable) {
//        List<Map<String, String>> maps = dataTable.asMaps();
//
//        for (Map<String, String> columns : maps) {
//            System.out.println(columns.get("account") + " " + columns.get("balance"));
//        }
//    }

    @Given("I have positive balance on my accounts")
    public void i_have_positive_balance_on_my_accounts(List<AccountDto> accounts) {
        // 1. LISTA LIST
        // 2. LISTA MAP
        // 3. TRANSFORMERS

        for (AccountDto account : accounts) {
            System.out.println("TR " + account.getAccount() + " " + account.getBalance());
        }
    }

    @When("I request {int} PLN")
    public void i_request_pln(Integer int1) {
        // Write code here that turns the phrase above into concrete actions

    }

    @When("I send confirmation letter")
    public void i_send_confirmation_letter(String docString) {
        // Write code here that turns the phrase above into concrete actions
        System.out.println(docString);
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
