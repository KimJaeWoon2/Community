package com.project.community.user;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAO {
    @Autowired
    private SqlSessionTemplate sqlSessionTemplate;

    public UserTblVO selectOneUser(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectOneUser", vo);
    }

    public int insertUser(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.insert("insertUser", vo);
    }

    public UserTblVO selectOneUserByEmail(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectOneUserByEmail", vo);
    }

    public UserTblVO selectOneUserById(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectOneUserById", vo);
    }

    public UserTblVO selectOneUserName(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectOneUserName", vo);

    }

    public UserTblVO selectOneUserExist(UserTblVO vo) throws Exception
    {
        return sqlSessionTemplate.selectOne("selectOneUserExist", vo);
        
    }
}
