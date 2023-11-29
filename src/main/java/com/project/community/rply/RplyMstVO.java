package com.project.community.rply;

import java.util.List;
import lombok.Data;

@Data

public class RplyMstVO {
     private int rowCount;               // 게시물의 전체 개수
    private List<RplyTblVO> rplyList;     // 게시물의 리스트
}
