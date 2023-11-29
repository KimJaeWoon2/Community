package com.project.community.bbs;

import java.util.List;

import lombok.Data;

@Data
public class BbsMstVO {
    private int rowCount;               // 게시물의 전체 개수
    private List<BbsTblVO> bbsList;     // 게시물의 리스트

}
