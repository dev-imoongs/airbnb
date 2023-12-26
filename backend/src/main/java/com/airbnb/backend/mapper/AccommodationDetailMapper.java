package com.airbnb.backend.mapper;

import com.airbnb.backend.domain.vo.AccommodationVO;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.Optional;

@Mapper
public interface AccommodationDetailMapper {
    // 예약
    public Optional<AccommodationVO> selectAccommodationDetail(@Param("id") Long id);
    //
}
