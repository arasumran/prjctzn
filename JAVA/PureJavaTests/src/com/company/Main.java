package com.company;

import java.math.BigDecimal;
import java.time.LocalDate;
import java.time.OffsetDateTime;
import java.util.*;

public class Main {

    public static void main(String[] args) {
	// write your code here

        LocalDate lo = LocalDate.now();
        System.out.println(lo.toString().replace("-",""));

        List<BigDecimal> items = Arrays.asList(BigDecimal.TEN,new BigDecimal(20),BigDecimal.TEN);

       BigDecimal result =  items.stream().filter(Objects::nonNull).reduce(BigDecimal.ZERO, BigDecimal::add);

        System.out.println(result);
    }
}
