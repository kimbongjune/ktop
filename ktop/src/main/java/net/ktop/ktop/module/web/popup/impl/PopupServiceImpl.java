package net.ktop.ktop.module.web.popup.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import net.ktop.ktop.module.web.popup.PopupDto;
import net.ktop.ktop.module.web.popup.PopupRepository;
import net.ktop.ktop.module.web.popup.PopupService;

import java.util.Collections;

@Service
public class PopupServiceImpl implements PopupService {
    private final PopupRepository popupRepository;

    @Autowired
    public PopupServiceImpl(PopupRepository popupRepository) {
        this.popupRepository = popupRepository;
    }

    @Override
    public List<PopupDto> getPopupList(PopupDto params) {
        // Repository에 getPopupCount가 없으므로 일단 주석처리. 필요시 추가 구현.
        // int totalCount = popupRepository.getPopupCount(params);
        // if (totalCount < 1) {
        //     return Collections.emptyList();
        // }
        // params.getPaginationInfo().setTotalRecordCount(totalCount);
        return popupRepository.getPopupList(params);
    }

    @Override
    public PopupDto getPopup(int id) {
        return popupRepository.getPopup(id);
    }

    @Override
    public void createPopup(PopupDto popup) {
        popupRepository.createPopup(popup);
    }

    @Override
    public void updatePopup(PopupDto popup) {
        popupRepository.updatePopup(popup);
    }

    @Override
    public void deletePopup(int id) {
        popupRepository.deletePopup(id);
    }

    @Override
    public List<PopupDto> getActivePopupList() {
        return popupRepository.getActivePopupList();
    }
} 