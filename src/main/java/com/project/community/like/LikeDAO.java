package com.project.community.like;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;




@Repository
public class LikeDAO {
    
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public void insertLike(LikeVO likeVO) throws Exception
    {
       sqlSessionTemplate.insert("insertLike",likeVO);
    }

    public void deleteLike(LikeVO likeVO) throws Exception
    {
       sqlSessionTemplate.delete("deleteLike",likeVO);
    }

    public int checkLike(LikeVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("checkLike", vo);
    }
}
