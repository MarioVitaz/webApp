package sk.Turnaments;

import java.io.File;
import java.util.Date;

public class Turnament {
    private Integer id, startovne, id_cat, kategoria;
    private String nazov, popis, cat;
    private String datum;


    public Turnament(Integer id, Integer startovne, String nazov, String popis, Integer kategoria, String datum) {
        this.id = id;
        this.startovne = startovne;
        this.nazov = nazov;
        this.popis = popis;
        this.kategoria = kategoria;
        this.datum = datum;
    }

    public Turnament(Integer startovne, String nazov, String popis, String datum, Integer kategoria) {
        this.startovne = startovne;
        this.nazov = nazov;
        this.popis = popis;
        this.kategoria = kategoria;
        this.datum = datum;
    }

    public Turnament(Integer id, Integer startovne, String nazov, String popis, Integer kategoria, Integer id_cat, String cat) {
        this.id = id;
        this.startovne = startovne;
        this.id_cat = id_cat;
        this.nazov = nazov;
        this.popis = popis;
        this.kategoria = kategoria;
        this.cat = cat;
    }

    public Turnament(Integer id_cat, String cat) {
        this.id_cat = id_cat;
        this.cat = cat;
    }


    public String getDatum() {
        return datum;
    }

    public void setDatum(String datum) {
        this.datum = datum;
    }

    public Integer getId_cat() {
        return id_cat;
    }

    public void setId_cat(Integer id_cat) {
        this.id_cat = id_cat;
    }

    public String getCat() {
        return cat;
    }

    public void setCat(String cat) {
        this.cat = cat;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getStartovne() {
        return startovne;
    }

    public void setStartovne(Integer startovne) {
        this.startovne = startovne;
    }

    public String getNazov() {
        return nazov;
    }

    public void setNazov(String nazov) {
        this.nazov = nazov;
    }

    public String getPopis() {
        return popis;
    }

    public void setPopis(String popis) {
        this.popis = popis;
    }

    public Integer getKategoria() {
        return kategoria;
    }

    public void setKategoria(Integer kategoria) {
        this.kategoria = kategoria;
    }
}
