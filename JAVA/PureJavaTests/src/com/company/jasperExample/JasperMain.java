package com.company.jasperExample;

import java.math.BigDecimal;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;

public class JasperMain {

    public static void main(String[] args) {
	// write your code here

        BigDecimal test = BigDecimal.ZERO;


        List<BigDecimal> items = Arrays.asList(BigDecimal.TEN,new BigDecimal(20),BigDecimal.TEN);

       BigDecimal result =  items.stream().filter(Objects::nonNull).reduce(BigDecimal.ZERO, BigDecimal::add);

        System.out.println(result);
    }
}
