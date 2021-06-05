package com.examples;

import java.util.Date;

public class Daire extends GeometrikNesne {
    public Daire(String etiket, Date tarih, double yaricap) {
        super(etiket, tarih);
        this.yaricap = yaricap;
    }
    Daire(){
        this.yaricap = 1.0;
    }
    public double getYaricap() {
        return yaricap;
    }

    public void setYaricap(double yaricap) {
        this.yaricap = yaricap;
    }

    private double yaricap;

    @Override
    public double alanHesapla() {
        return Math.PI * yaricap * yaricap;
    }


    // Pi kütüphanesi için double kullanımı gerçekleştirilidi
    // 2* Integer.valueOf(PI) de denebilir ama tam sonuc vermeyebilir
    @Override
    public double cevreHesapla() {
        return 2 * Math.PI * yaricap;
    }


    @Override
    public int compareTo(GeometrikNesne o) {
        if (this.getYaricap()>1){
            return 1;
        } else {
            return 0;
        }
    }

    @Override
    public String toString() {
        return "Daire " + "yaricapi = " + yaricap + " dir!!";
    }
}
