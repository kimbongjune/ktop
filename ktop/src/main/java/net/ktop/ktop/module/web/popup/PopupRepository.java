package net.ktop.ktop.module.web.popup;

import java.util.List;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class PopupRepository {
    private final SqlSessionTemplate template;
    private final static String MAPPER_NAME = "popupMapper.";

    @Autowired
    public PopupRepository(SqlSessionTemplate template) {
        this.template = template;
    }

    public List<PopupDto> getPopupList(PopupDto params) {
        return template.selectList(MAPPER_NAME + "getPopupList", params);
    }

    public int getPopupCount(PopupDto params) {
        return template.selectOne(MAPPER_NAME + "getPopupCount", params);
    }

    public PopupDto getPopup(int id) {
        return template.selectOne(MAPPER_NAME + "getPopup", id);
    }
    public void createPopup(PopupDto dto) {
        template.insert(MAPPER_NAME + "createPopup", dto);
    }
    public void updatePopup(PopupDto dto) {
        template.update(MAPPER_NAME + "updatePopup", dto);
    }
    public void deletePopup(int id) {
        template.delete(MAPPER_NAME + "deletePopup", id);
    }
    public List<PopupDto> getActivePopupList() {
        return template.selectList(MAPPER_NAME + "getActivePopupList");
    }
} 