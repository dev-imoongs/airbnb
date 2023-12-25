package com.airbnb.backend.domain.vo;

import lombok.Data;
import org.springframework.stereotype.Component;

@Component
@Data
public class AccommodationVO {
    private Long id;

    private String mainName;

    private String subName;

    private int price;

    private int maximumPeople;

    private int numberOfBathrooms;

    private int numberOfBedrooms;

    private int numberOfBed;

    private String bedType;

    private String bedIcon;

    private String amenities;

    private String accommodationPhoto;

    private String accommodationPhone;
// 위도, 경도 2개로 나눠야 할듯
    private float geometry;

    private String address;

    private String locationDescription;

    private String checkInOutRules;

    private String cleanlinessProgram;

    private String checkRemainingRoom;

    private String hostMessage;

    private String accommodationType;

    private String houseRules;

    private String safetyProperty;

    private String instantBook;

    private String  cancellationPolicy;

    private Long memberId;

    private Long hostId;

}
