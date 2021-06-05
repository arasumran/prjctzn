package com.examples;

import java.util.Date;

public class Dikdortgen extends GeometrikNesne {
    private double en;

    public Dikdortgen(double en, double boy) {
        this.en = en;
        this.boy = boy;
    }

    public Dikdortgen(String etiket, Date tarih, double en, double boy) {
        super(etiket, tarih);
        this.en = en;
        this.boy = boy;
    }

    Dikdortgen() {
        this.boy = 1.0;
        this.en = 1.0;
    }

    @Override
    public String toString() {
        return "Dikdortgen{" +
                "en=" + en +
                ", boy=" + boy +
                '}';
    }

    @Override
    public double alanHesapla() {
        return en * boy;
    }

    @Override
    public double cevreHesapla() {
        return 2 * (en + boy);
    }

    public double getEn() {
        return en;
    }

    public void setEn(double en) {
        this.en = en;
    }

    public double getBoy() {
        return boy;
    }

    public void setBoy(double boy) {
        this.boy = boy;
    }

    private double boy;

    @Override
    public int compareTo(GeometrikNesne o) {
        if (this.alanHesapla()>){

        } else {

        }
    }
}
