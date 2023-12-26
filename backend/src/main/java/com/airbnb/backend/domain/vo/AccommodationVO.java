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

    private String bedtype;

    private String bedicon;

    private String amenities;

    private String accommodationPhoto;

    private String accommodationPhone;

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

    private String cancellation_policy;

    private Long memberId;

    private Long hostId;

}