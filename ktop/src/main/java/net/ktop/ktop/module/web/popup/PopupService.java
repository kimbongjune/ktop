package net.ktop.ktop.module.web.popup;

import java.util.List;

public interface PopupService {
    List<PopupDto> getPopupList(PopupDto params);
    PopupDto getPopup(int id);
    void createPopup(PopupDto popup);
    void updatePopup(PopupDto popup);
    void deletePopup(int id);
    List<PopupDto> getActivePopupList();
} 