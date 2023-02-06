package models;

import java.io.Serializable;



public class Album implements Serializable{

    private long id;
    private String artist;
    private String title;
    private int release_date;
    private double sales;
    private String genre;


    public Album(){};

    public Album(long id, String artist, String title, int release_date, double sales, String genre) {
        this.id = id;
        this.artist = artist;
        this.title = title;
        this.release_date = release_date;
        this.sales = sales;
        this.genre = genre;
    }

    public long getid() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getArtist() {
        return artist;
    }

    public void setArtist(String artist) {
        this.artist = artist;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public int getRelease_date() {
        return release_date;
    }

    public void setRelease_date(int release_date) {
        this.release_date = release_date;
    }

    public double getSales() {
        return sales;
    }

    public void setSales(double sales) {
        this.sales = sales;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }
}
