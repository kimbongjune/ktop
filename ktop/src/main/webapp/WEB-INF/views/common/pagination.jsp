<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>

<c:if test="${pagination.totalPages > 1}">
<div class="pagination-wrapper">
    <div class="pagination">
        <!-- 첫 페이지로 -->
        <c:if test="${pagination.page > 1}">
            <c:url var="firstPageUrl" value="">
                <c:param name="page" value="1" />
                <c:if test="${not empty searchDto.searchType}">
                    <c:param name="searchType" value="${searchDto.searchType}" />
                </c:if>
                <c:if test="${not empty searchDto.keyword}">
                    <c:param name="keyword" value="${searchDto.keyword}" />
                </c:if>
                <c:if test="${not empty searchDto.fieldId}">
                    <c:param name="fieldId" value="${searchDto.fieldId}" />
                </c:if>
                <c:if test="${not empty searchDto.regionId}">
                    <c:param name="regionId" value="${searchDto.regionId}" />
                </c:if>
                <c:if test="${not empty searchDto.boardType and searchDto.boardType > 0}">
                    <c:param name="boardType" value="${searchDto.boardType}" />
                </c:if>
                <c:if test="${not empty searchDto.materialCategoryIdList}">
                    <c:forEach var="categoryId" items="${searchDto.materialCategoryIdList}">
                        <c:param name="materialCategoryIdList" value="${categoryId}" />
                    </c:forEach>
                </c:if>
                <c:if test="${not empty searchDto.region}">
                    <c:forEach var="regionId" items="${searchDto.region}">
                        <c:param name="region" value="${regionId}" />
                    </c:forEach>
                </c:if>
            </c:url>
            <a href="${firstPageUrl}" class="page-btn first">
                <i class="fas fa-angle-double-left"></i>
            </a>
        </c:if>
        
        <!-- 이전 페이지로 -->
        <c:if test="${pagination.hasPrevious}">
            <c:url var="prevPageUrl" value="">
                <c:param name="page" value="${pagination.page - 1}" />
                <c:if test="${not empty searchDto.searchType}">
                    <c:param name="searchType" value="${searchDto.searchType}" />
                </c:if>
                <c:if test="${not empty searchDto.keyword}">
                    <c:param name="keyword" value="${searchDto.keyword}" />
                </c:if>
                <c:if test="${not empty searchDto.fieldId}">
                    <c:param name="fieldId" value="${searchDto.fieldId}" />
                </c:if>
                <c:if test="${not empty searchDto.regionId}">
                    <c:param name="regionId" value="${searchDto.regionId}" />
                </c:if>
                <c:if test="${not empty searchDto.boardType and searchDto.boardType > 0}">
                    <c:param name="boardType" value="${searchDto.boardType}" />
                </c:if>
                <c:if test="${not empty searchDto.materialCategoryIdList}">
                    <c:forEach var="categoryId" items="${searchDto.materialCategoryIdList}">
                        <c:param name="materialCategoryIdList" value="${categoryId}" />
                    </c:forEach>
                </c:if>
                <c:if test="${not empty searchDto.region}">
                    <c:forEach var="regionId" items="${searchDto.region}">
                        <c:param name="region" value="${regionId}" />
                    </c:forEach>
                </c:if>
            </c:url>
            <a href="${prevPageUrl}" class="page-btn prev">
                <i class="fas fa-angle-left"></i>
            </a>
        </c:if>
        
        <!-- 페이지 번호들 -->
        <c:forEach var="pageNum" begin="${pagination.startPage}" end="${pagination.endPage}">
            <c:choose>
                <c:when test="${pageNum == pagination.page}">
                    <span class="page-btn current">${pageNum}</span>
                </c:when>
                <c:otherwise>
                    <c:url var="pageUrl" value="">
                        <c:param name="page" value="${pageNum}" />
                        <c:if test="${not empty searchDto.searchType}">
                            <c:param name="searchType" value="${searchDto.searchType}" />
                        </c:if>
                        <c:if test="${not empty searchDto.keyword}">
                            <c:param name="keyword" value="${searchDto.keyword}" />
                        </c:if>
                        <c:if test="${not empty searchDto.fieldId}">
                            <c:param name="fieldId" value="${searchDto.fieldId}" />
                        </c:if>
                        <c:if test="${not empty searchDto.regionId}">
                            <c:param name="regionId" value="${searchDto.regionId}" />
                        </c:if>
                        <c:if test="${not empty searchDto.boardType and searchDto.boardType > 0}">
                            <c:param name="boardType" value="${searchDto.boardType}" />
                        </c:if>
                        <c:if test="${not empty searchDto.materialCategoryIdList}">
                            <c:forEach var="categoryId" items="${searchDto.materialCategoryIdList}">
                                <c:param name="materialCategoryIdList" value="${categoryId}" />
                            </c:forEach>
                        </c:if>
                        <c:if test="${not empty searchDto.region}">
                            <c:forEach var="regionId" items="${searchDto.region}">
                                <c:param name="region" value="${regionId}" />
                            </c:forEach>
                        </c:if>
                    </c:url>
                    <a href="${pageUrl}" class="page-btn">${pageNum}</a>
                </c:otherwise>
            </c:choose>
        </c:forEach>
        
        <!-- 다음 페이지로 -->
        <c:if test="${pagination.hasNext}">
            <c:url var="nextPageUrl" value="">
                <c:param name="page" value="${pagination.page + 1}" />
                <c:if test="${not empty searchDto.searchType}">
                    <c:param name="searchType" value="${searchDto.searchType}" />
                </c:if>
                <c:if test="${not empty searchDto.keyword}">
                    <c:param name="keyword" value="${searchDto.keyword}" />
                </c:if>
                <c:if test="${not empty searchDto.fieldId}">
                    <c:param name="fieldId" value="${searchDto.fieldId}" />
                </c:if>
                <c:if test="${not empty searchDto.regionId}">
                    <c:param name="regionId" value="${searchDto.regionId}" />
                </c:if>
                <c:if test="${not empty searchDto.boardType and searchDto.boardType > 0}">
                    <c:param name="boardType" value="${searchDto.boardType}" />
                </c:if>
                <c:if test="${not empty searchDto.materialCategoryIdList}">
                    <c:forEach var="categoryId" items="${searchDto.materialCategoryIdList}">
                        <c:param name="materialCategoryIdList" value="${categoryId}" />
                    </c:forEach>
                </c:if>
                <c:if test="${not empty searchDto.region}">
                    <c:forEach var="regionId" items="${searchDto.region}">
                        <c:param name="region" value="${regionId}" />
                    </c:forEach>
                </c:if>
            </c:url>
            <a href="${nextPageUrl}" class="page-btn next">
                <i class="fas fa-angle-right"></i>
            </a>
        </c:if>
        
        <!-- 마지막 페이지로 -->
        <c:if test="${pagination.page < pagination.totalPages}">
            <c:url var="lastPageUrl" value="">
                <c:param name="page" value="${pagination.totalPages}" />
                <c:if test="${not empty searchDto.searchType}">
                    <c:param name="searchType" value="${searchDto.searchType}" />
                </c:if>
                <c:if test="${not empty searchDto.keyword}">
                    <c:param name="keyword" value="${searchDto.keyword}" />
                </c:if>
                <c:if test="${not empty searchDto.fieldId}">
                    <c:param name="fieldId" value="${searchDto.fieldId}" />
                </c:if>
                <c:if test="${not empty searchDto.regionId}">
                    <c:param name="regionId" value="${searchDto.regionId}" />
                </c:if>
                <c:if test="${not empty searchDto.boardType and searchDto.boardType > 0}">
                    <c:param name="boardType" value="${searchDto.boardType}" />
                </c:if>
                <c:if test="${not empty searchDto.materialCategoryIdList}">
                    <c:forEach var="categoryId" items="${searchDto.materialCategoryIdList}">
                        <c:param name="materialCategoryIdList" value="${categoryId}" />
                    </c:forEach>
                </c:if>
                <c:if test="${not empty searchDto.region}">
                    <c:forEach var="regionId" items="${searchDto.region}">
                        <c:param name="region" value="${regionId}" />
                    </c:forEach>
                </c:if>
            </c:url>
            <a href="${lastPageUrl}" class="page-btn last">
                <i class="fas fa-angle-double-right"></i>
            </a>
        </c:if>
    </div>
    
    <div class="pagination-info">
        <span>전체 ${pagination.totalCount}건 (${pagination.page}/${pagination.totalPages} 페이지)</span>
    </div>
</div>

<style>
.pagination-wrapper {
    margin: 20px 0;
    text-align: center;
}

.pagination {
    display: inline-block;
    margin-bottom: 10px;
}

.page-btn {
    display: inline-block;
    padding: 8px 12px;
    margin: 0 2px;
    text-decoration: none;
    border: 1px solid #ddd;
    color: #333;
    border-radius: 4px;
    transition: all 0.3s;
}

.page-btn:hover {
    background-color: #f5f5f5;
    text-decoration: none;
    color: #333;
}

.page-btn.current {
    background-color: #007bff;
    color: white;
    border-color: #007bff;
}

.page-btn.first,
.page-btn.last,
.page-btn.prev,
.page-btn.next {
    font-weight: bold;
}

.pagination-info {
    color: #666;
    font-size: 14px;
}
</style>
</c:if> 