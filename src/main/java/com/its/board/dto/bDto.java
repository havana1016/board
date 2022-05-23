package com.its.board.dto;

import lombok.*;


import java.sql.Timestamp;





@Getter @Setter @ToString  @NoArgsConstructor @AllArgsConstructor
public class bDto {
    Long id;
    String btitle;
    String bname;

    String bpw;
    String btext;

    int bhit;

    String bdate;


}

