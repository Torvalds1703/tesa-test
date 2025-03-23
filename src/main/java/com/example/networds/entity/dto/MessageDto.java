package com.example.networds.entity.dto;

import com.example.networds.entity.Task;
import com.example.networds.entity.User;

public class MessageDto {
    private Long id;
    private String text;
    private String tag;
    private User author;
    private String filename;
    private Long likes;
    private Boolean meLiked;

    public MessageDto(Task task, Long likes, Boolean meLiked) {
        this.id = task.getId();
        this.text = task.getText();
        this.tag = task.getTag();
        this.author = task.getAuthor();
        this.filename = task.getFilename();
        this.likes = likes;
        this.meLiked = meLiked;
    }



    public Long getId() {
        return id;
    }

    public String getText() {
        return text;
    }

    public String getTag() {
        return tag;
    }

    public User getAuthor() {
        return author;
    }

    public String getFilename() {
        return filename;
    }

    public Long getLikes() {
        return likes;
    }

    public Boolean getMeLiked() {
        return meLiked;
    }

    @Override
    public String toString() {
        return "MessageDto{" +
                "id=" + id +
                ", author=" + author +
                ", likes=" + likes +
                ", meLiked=" + meLiked +
                '}';
    }
}
