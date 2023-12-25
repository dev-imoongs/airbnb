package com.airbnb.backend.domain.vo;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class MemberVO {
    private Long id;
    private String Email;
    private String Password;
    private String firstName;
    private String lastName;
    private String birthday;
    private String memberPhoto;
    private String Phone;
    private String yearOfMembership;
    private String introduce;
}
