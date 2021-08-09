package pl.akademiaqa.cucumber.steps.transformers;

import io.cucumber.java.DataTableType;
import pl.akademiaqa.dto.AccountDto;

import java.math.BigDecimal;
import java.util.Map;

public class AccountDataTable {

    @DataTableType
    public AccountDto transform(Map<String, String> data) {
        return new AccountDto(
                data.get("account"),
                new BigDecimal(data.get("balance"))
        );
    }
}
