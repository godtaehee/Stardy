package com.stardy.entity;


import lombok.AllArgsConstructor;
import lombok.Data;

import java.util.Date;

@Data
@AllArgsConstructor

public class Study {
//    TITLE, LEADER, CATEGORY, LIMIT, OPEN, DUEDATE, INTRO, REGDATE, UPDATEDATE, BG, PATH

    int sId;
    String title;
    String leader;
    int category;
    int limit;
    int open;
    String dueDate;
    String intro;
    String regDate;
    String updateDate;
    String bg;
    String path;
    int crnt;

    public Study() {

    }
}
