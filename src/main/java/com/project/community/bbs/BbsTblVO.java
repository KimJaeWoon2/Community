package com.project.community.bbs;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.project.community.file.FileVO;

import lombok.Data;

@Data
public class BbsTblVO {
    // 설계속성
    private int rowsPerPage;
    private int page;
    private String searchType;
    private String keyWord;
    
    // 기본속성
    private String rowNum;
    private String userId;
    private String name;
    private String seq;
    private String title;
    private String content;
    private String sub;
    private String bbsNo;
    private String regDate;
    private String count;
    private String likeCount;
    private String exception_mode;
    private int rplyRowCount;
    private String fileCode;
    private FileVO fileVO; // 조인연산을 하기위해 만들어짐
    
    @JsonIgnore     // MemberVO를 JSON으로 만들 때 thumbnail은 생략하세요.
    private MultipartFile thumbnail;
}
