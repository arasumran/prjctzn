package com.examples;

import java.util.Date;

public abstract class GeometrikNesne implements Comparable<GeometrikNesne> {
    private  String etiket;
    private  Date tarih;

    protected GeometrikNesne(String etiket, Date tarih) {
        this.setEtiket(etiket);
        this.setTarih(tarih);
    }

    GeometrikNesne(){};

    public String getEtiket() {
        return etiket;
    }

    public void setEtiket(String etiket) {
        this.etiket = etiket;
    }

    public Date getTarih() {
        return new Date(tarih.getTime());
    }

    public void setTarih(Date tarih) {
        this.tarih = tarih;
    }

    @Override
    public String toString() {
        return "GeometrikNesne{" +
                "etiket='" + etiket + '\'' +
                ", tarih=" + tarih +
                '}';
    }

    public double alanHesapla() {
        return 0;
    }

    public double cevreHesapla() {
        return 0;
    }

}
