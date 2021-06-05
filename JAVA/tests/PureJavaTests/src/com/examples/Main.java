package com.examples;

import javax.swing.plaf.synth.SynthOptionPaneUI;
import java.math.BigDecimal;
import java.text.SimpleDateFormat;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.ZoneId;
import java.util.*;

public class Main {

    public static void main(String[] args) {
        List<String> myList = Arrays.asList("  A", "B  ", "  C  ","B");
        int count = 0;
        BigDecimal on = new BigDecimal("100.6789");
        BigDecimal se = new BigDecimal("-114.567");
        BigDecimal la = on.add(se);
        System.out.println(la);
       // getCustomerProfileAndAccountGroupMatrix(customerProfile,accountGroupMatrix);

    }
    private static String getCustomerProfileAndAccountGroupMatrix(String customerProfile, String accountGroupMatrix){

        if(Objects.isNull(customerProfile) || !customerProfile.startsWith(accountGroupMatrix))
        {
            return "Kaldı";

        }else
        {
            return "Geçti";
        }
    }
    private void testDate(){
        Date date = new Date();
        Calendar c = Calendar.getInstance();
        c.setTime(date);
        c.add(Calendar.MONTH, -3);
        SimpleDateFormat sdf = new SimpleDateFormat("MMMM");
        String currentDate = sdf.format(c.getTime()).toLowerCase();
        LocalDate localDate = date.toInstant().atZone(ZoneId.systemDefault()).toLocalDate();
        int month = localDate.getMonthValue();
        System.out.println(month);

        StringBuilder s = new StringBuilder();
        s.append("\n").append("heblee").append("\n").append("gurara");
        System.out.println(s.toString());
    }
}
