package com.airbnb.backend.service.MyService.Accommodation;

import com.airbnb.backend.domain.vo.AccommodationVO;
import java.util.List;

public interface AccommodationDetailService {
    AccommodationVO getAccommodationDetail(Long id);
}
