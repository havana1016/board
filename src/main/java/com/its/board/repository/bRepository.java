package com.its.board.repository;

import com.its.board.dto.bDto;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import java.util.List;



@Repository
public class bRepository {
    @Autowired
    SqlSessionTemplate sql;
    public int save(bDto text) {
        return sql.insert("data.save",text);
    }

    public List<bDto> findall() {
        List<bDto> flist=sql.selectList("data.findall");
        System.out.println("bRepository"+flist);
        return flist;
    }

    public bDto findmem(Long id) {
        sql.update("data.hit",id);
       return sql.selectOne("data.findmem",id);
    }

    public bDto bpwc(bDto mem) {
        return sql.selectOne("data.bpwc",mem);
    }
}
