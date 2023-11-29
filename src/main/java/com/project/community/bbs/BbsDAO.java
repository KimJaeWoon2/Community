package com.project.community.bbs;

import java.util.List;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class BbsDAO {
    
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public List<BbsTblVO> selectBbsFashionList(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectBbsFashionList", vo);
    }

    public List<BbsTblVO> selectBbsBestList(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectBbsBestList", vo);
    }

    public int selectBbsFashionRowCount(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectBbsFashionRowCount", vo);
    }
    
    
    public int selectBbsBestRowCount(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectBbsBestRowCount", vo);
    }

    public BbsTblVO selectBbsFashionContent(BbsTblVO vo) throws Exception
    {   
        return sqlSessionTemplate.selectOne("selectBbsFashionContent", vo);
    }

    public int updateBbsContent(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.update("updateBbsContent",vo);
    }
    
    public int insertBbsContent(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.insert("insertBbsContent", vo);
    }

    public int deleteBbsContent(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.delete("deleteBbsContent", vo);
    }

    public void updateViewCount(BbsTblVO vo) throws Exception
    {
       sqlSessionTemplate.update("updateViewCount",vo);
    }

    public int selectBbsSearchRowCount(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectBbsSearchRowCount", vo);
    }

    public int selectBbsBestSearchRowCount(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectBbsBestSearchRowCount", vo);
    }

    public List<BbsTblVO> selectBbsSearchList(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectBbsSearchList", vo);
    }
    
    public List<BbsTblVO> selectBbsBestSearchList(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectBbsBestSearchList", vo);
    }
    
    public void updateLikeCount(BbsTblVO vo) throws Exception
    {
       sqlSessionTemplate.update("updateLikeCount",vo);
    }

    public void updateDisLikeCount(BbsTblVO vo) throws Exception
    {
       sqlSessionTemplate.update("updateDisLikeCount",vo);
    }

    public void updateRecommend() throws Exception
    {
       sqlSessionTemplate.update("updateRecommend");
    }

    public void updateHotRecommend() throws Exception
    {
       sqlSessionTemplate.update("updateHotRecommend");
    }

    public BbsTblVO selectBbsFile(BbsTblVO vo) throws Exception
    {   
        return sqlSessionTemplate.selectOne("selectBbsFile", vo);
    }

    public void updateRplyCount(BbsTblVO vo) throws Exception
    {
       sqlSessionTemplate.update("updateRplyCount",vo);
    }

    public void updateAllRplyCount() throws Exception
    {
       sqlSessionTemplate.update("updateAllRplyCount");
    }

    public List<BbsTblVO> selectBbsCombineSearchList(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectList("selectBbsCombineSearchList", vo);
    }

    public int selectBbsCombineSearchRowCount(BbsTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectBbsCombineSearchRowCount", vo);
    }
    
}
