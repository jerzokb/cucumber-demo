package pl.akademiaqa.dto;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

import java.math.BigDecimal;

@RequiredArgsConstructor
@Getter
public class AccountDto {

    private final String account;
    private final BigDecimal balance;
}
