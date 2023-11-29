package com.project.community.file;

import org.springframework.web.multipart.MultipartFile;

import com.fasterxml.jackson.annotation.JsonIgnore;

import lombok.Data;

@Data
public class FileVO {
    
    private String fileCode;
    private String filePath;
    private String storedName;
    private String originName;
    
     @JsonIgnore     // MemberVO를 JSON으로 만들 때 thumbnail은 생략하세요.
    private MultipartFile multiFile;
}
