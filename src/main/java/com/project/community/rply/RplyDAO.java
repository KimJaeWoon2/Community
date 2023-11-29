package com.project.community.rply;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;








@Repository
public class RplyDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<RplyTblVO> selectRplyFashionList(RplyTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectRplyFashionList", vo);
        
    }

    public int selectRplyFashionRowCount(RplyTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectRplyFashionRowCount", vo);
    }


    public int insertRplyContent(RplyTblVO vo) throws Exception
    {
        return sqlSessionTemplate.insert("insertRplyContent", vo);
    }

     public int deleteRplyContent(RplyTblVO vo) throws Exception
    {
        return sqlSessionTemplate.delete("deleteRplyContent", vo);
    }

    public void deleteRplyAllContent(RplyTblVO vo) throws Exception
    {
        sqlSessionTemplate.delete("deleteRplyAllContent", vo);
    }
}
