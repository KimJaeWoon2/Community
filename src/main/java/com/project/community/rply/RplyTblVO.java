package com.project.community.rply;

import lombok.Data;

@Data
public class RplyTblVO {
    
    // 설계속성
    private int rowsPerPage;
    private int page;
    
    // 기본속성
    private String rowNum;
    private String userId;
    private String name;
    private String seq;
    private String content;
    private String regDate;
    private String bbsNo;
    private String rno;
    private String parentRno;
    private String originName;
}
