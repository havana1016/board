package com.its.board.service;

import com.its.board.dto.bDto;
import com.its.board.repository.bRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class bService {
    @Autowired
    bRepository br;
    public int save(bDto text) {
       return br.save(text);
    }

    public List<bDto> findall() {
        return br.findall();
    }

    public bDto findmem(Long id) {
         return br.findmem(id);
    }

    public bDto bpwc(bDto mem) {
        return br.bpwc(mem);
    }
}
