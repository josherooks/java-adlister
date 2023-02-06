package models;

import java.io.Serializable;

public class Quote implements Serializable {

    private long id;
    private String content;



    public long getId() {
        return id;
    }

    public void setId(long id) {
        this.id = id;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
