<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/WEB-INF/views/common/header.jsp" %>
<div class="main_container">
	<section class="main_visual">
		<ul class="bxslider">
							<li class="item" style="background: url('<c:url value='/resources/static/image/1660028378_efcef7338de5286d9153caf8f4a903ae4cf29bc6.jpg' />') no-repeat center 0; background-size: cover;"></li>

					</ul>
		<dl class="visual_txt">
			<div class="web_size">
				<p>건축자재 최저가 선언!</p>
				건축자재, 이제 가격을 비교해 보고 구입하세요
			</div>
		</dl>
	</section>


	<section class="cont01">
		<div class="web_size">
			<div class="main_search_wrap">
				<div class="main_search_tit">어떤 자재를 찾으시나요?</div>
					 
<div class="main_search_box">
	<form method="post" name="search" action="<c:url value='/search' />" >
				<input type="hidden" name="sit" value="product_title" />
		<input type="hidden" name="company_area_arr" id="company_area_arr" value="" />
		<ul class="main_search_category">
			<li class="area_select area_all select" data-ccode="">전체</li>
					<li class="area_select " data-ccode="1/">서울</li>
					<li class="area_select " data-ccode="2/">부산</li>
					<li class="area_select " data-ccode="3/">인천</li>
					<li class="area_select " data-ccode="4/">대구</li>
					<li class="area_select " data-ccode="5/">광주</li>
					<li class="area_select " data-ccode="6/">대전</li>
					<li class="area_select " data-ccode="7/">울산</li>
					<li class="area_select " data-ccode="8/">경기</li>
					<li class="area_select " data-ccode="9/">강원</li>
					<li class="area_select " data-ccode="10/">충남</li>
					<li class="area_select " data-ccode="11/">충북</li>
					<li class="area_select " data-ccode="12/">경남</li>
					<li class="area_select " data-ccode="13/">경북</li>
					<li class="area_select " data-ccode="14/">전남</li>
					<li class="area_select " data-ccode="15/">전북</li>
					<li class="area_select " data-ccode="16/">제주</li>
				</ul>
		<div class="main_search_form_box"> 
			<div class="main_search_form_left"><select name="s_mgroup" title="검색 옵션" class="main_search_select"><option value="">카테고리 전체</option> 
							<option value="1" >목재</option>
							<option value="2" >실내 마감재</option>
							<option value="3" >실외 마감재</option>
							<option value="4" >석고</option>
							<option value="5" >단열재</option>
						</select>
			</div>
			<div class="main_search_form_center"><span class="input_clear_wrap"><input type="text" name="stx" class="main_search_input" title="검색어" value="" placeholder="ex) 샌드위치판넬, 석고보드" /><a href="<c:url value='/search' />"><i class="fas fa-times-circle"></i></a></span></div>
			<div class="main_search_form_right"><input type="submit" class="main_search_btn  Fix_FormBtns" value="검색하기" /></div>
		</div>
	</form>
</div>
			</div>
		</div>
	</section>
 
	<section class="cont02">
		<div class="web_size">
		<div class="main_link">
			<ul class="middle_slickslider">
								<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596373_e29b841ad27033ab7d7a7dd2fc23b6c40f6f7860.jpg' />" alt="mm1" /></li>
								<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596390_cc2309e861529a9c0e02af2f37f0fe5ffff20b17.jpg' />" alt="mm2" /></li>
								<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596407_281a7cd46245b94a819bf352758ec19afc5a766e.jpg' />" alt="mm3" /></li>
								<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596420_ab3b2f73c74d18480529a4a06bc3fe270d70302d.jpg' />" alt="mm4" /></li>
								<li style="cursor:pointer;" onclick="javascript:location.href='<c:url value='/' />'"><img src="<c:url value='/resources/static/image/1659596479_0f4834546415c1f4a6efe7b18217ee7148d7189c.jpg' />" alt="mm5" /></li>
							</ul>
			<div class="arrow">
				<p class="prev" id="middle_slick_prev_btn"><span></span></p>
				<p class="next" id="middle_slick_next_btn"><span></span></p>
			</div>
		</div>
		</div>
	</section>

	<section class="cont03"> 
		<div class="web_size">
			<p class="product_listbox_tit">BEST PRODUCT</p> 
			<div class="product_listbox">
				<ul>
									<li>
						<a href="<c:url value='/material/1' />">
						<figure><img src="<c:url value='/resources/static/image/10_d993e284b01d72f94ee687bde0a112bc.jpg' />" alt="구조재" /></figure>
						<dl>
							<dt>구조재</dt>
							<dd><span>4,200</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/2' />">
						<figure><img src="<c:url value='/resources/static/image/9_72c3f45f54419fa7e23313843cfbe245.jpg' />" alt="MALPESA 스페인 점토 벽돌" /></figure>
						<dl>
							<dt>MALPESA 스페인 점토 벽돌</dt>
							<dd><span>850,000</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/3' />">
						<figure><img src="<c:url value='/resources/static/image/8_eace7e11bc6db486105381f4ea1a2356.jpg' />" alt="유코 디자인 블록" /></figure>
						<dl>
							<dt>유코 디자인 블록</dt>
							<dd><span>554,400</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/4' />">
						<figure><img src="<c:url value='/resources/static/image/7_66fb8418a341adb9f2cd706140d80689.jpg' />" alt="세라믹사이딩" /></figure>
						<dl>
							<dt>세라믹사이딩</dt>
							<dd><span>116,400</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/5' />">
						<figure><img src="<c:url value='/resources/static/image/5_69328ada292c806a706bc58a9e0b025d.jpg' />" alt="판자" /></figure>
						<dl>
							<dt>판자</dt>
							<dd><span>1,000</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/6' />">
						<figure><img src="<c:url value='/resources/static/image/4_2d8924abdbc7901b27c5a74098a40abe.jpg' />" alt="메이플후로링" /></figure>
						<dl>
							<dt>메이플후로링</dt>
							<dd><span>20,000</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/7' />">
						<figure><img src="<c:url value='/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg' />" alt="다용도 각목" /></figure>
						<dl>
							<dt>다용도 각목</dt>
							<dd><span>3,000</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/8' />">
						<figure><img src="<c:url value='/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19e.jpg' />" alt="목재루바" /></figure>
						<dl>
							<dt>목재루바</dt>
							<dd><span>71,500</span>원</dd>
						</dl>
						</a>
					</li>
									<li>
						<a href="<c:url value='/material/9' />">
						<figure><img src="<c:url value='/resources/static/image/1_ed786adada6544e1c9f1a879369473ab.jpg' />" alt="오렌지 목재" /></figure>
						<dl>
							<dt>오렌지 목재</dt>
							<dd><span>5,000</span>원</dd>
						</dl>
						</a>
					</li>
							</div>		
		</div>
	</section>


	<section class="cont04">
		<div class="web_size">
			<div class="main_people"> 
				<div class="main_people_tit">
					<div class="main_people_tit_txt">
						<span>믿을 수 있는&nbsp;</span>건축 전문가
						<p>포트폴리오를 보고 나에게 딱 맞는<br />전문가를 만나보세요!</p>
					</div>
					<div class="main_people_tit_btn01"><a href="<c:url value='/workforce' />"><div class="main_people_tit_btn">더보기</div></a></div>
                </div>

				<div class="main_people_cont">
				<ul>
									<li> 
					<a href="<c:url value='/workforce/1' />">
						<div class="main_people_cont_thum"><img src="<c:url value='/resources/static/image/4_2d8924abdbc7901b27c5a74098a40abec.jpg' />" alt="멋쟁이목수" /></div>
						<p>[목수] 멋쟁이목수</p>
					 
						
					</a>
					</li>
									<li> 
					<a href="<c:url value='/workforce/2' />">
						<div class="main_people_cont_thum"><img src="<c:url value='/resources/static/image/3_34263ccb7f1cf298aa9bc1d88457782a.jpg' />" alt="홍길동" /></div>
						<p>[목수, 철거, 설비, 도장, 조적] 홍길동</p>
					 
						
					</a>
					</li>
									<li> 
					<a href="<c:url value='/workforce/2' />">
						<div class="main_people_cont_thum"><img src="<c:url value='/resources/static/image/2_6c333a1c784ce2eba633064d02e1d19ec.jpg' />" alt="asdf" /></div>
						<p>[목수, 철거, 미장, 조적] asdf</p>
					 
						
					</a>
					</li>
								</ul>
				</div> 
				<div class="main_people_tit_btn02"><a href="<c:url value='/workforce' />"><div class="main_people_tit_btn">더보기</div></a> </div>
			</div> 
		</div>
	</section>

	<section class="cont05"> 
		<div class="web_size">
			<div class="cont05_left"> 
				<div class="main_notice ">
					
<!-- 탭 -->
<ul class="notice_tab">
		<li class="multiboard_tab on" id="multiboard_5"><a class="multiboard_change" data-mid="5" data-gc="NOTICE">공지사항</a></li>
	 
	<a href="<c:url value='/notice' />" class="multiboard_more more"></a>
</ul>
<!-- 탭 -->


<!-- 리스트 -->
<ul class="notice_item multiboard_content_5" >
		<li>
				<a href="<c:url value='/notice/1' />">
		
		<dl>
			<dt>홈페이지가 새롭게 오픈되었습니다</dt>
			<dd>2022.08.05</dd>
 
		</dl>

		</a>
	</li>
		<li>
				<a href="<c:url value='/notice/2' />">
		
		<dl>
			<dt>농어촌일자리플러스 교육 참가자 모집 및 채용한마당 공고</dt>
			<dd>2022.05.20</dd>
 
		</dl>

		</a>
	</li>
		<li>
				<a href="<c:url value='/notice/3' />">
		
		<dl>
			<dt>2022년 도농상생형 완주군로컬잡(JOB)센터 일자리 체험 프로그램 참가자 모집</dt>
			<dd>2022.05.20</dd>
 
		</dl>

		</a>
	</li>
		<li>
				<a href="<c:url value='/notice/4' />">
		
		<dl>
			<dt>장수군로컬job센터, 2022년도 고용복지플러스센터 출장소 운영</dt>
			<dd>2022.05.20</dd>
 
		</dl>

		</a>
	</li>
	</ul>
<!-- 리스트 -->
				</div>
			</div>

			<div class="cont05_center">
				<a href="<c:url value='/workforce/guide' />"> 
				<div class="main_people_bn">
					<div class="main_people_bn_tit">인력 POOL <span>등록</span> <p>새로운 클라이언트를 만나는 <br />가장 손쉬운 방법!</p></div>
					<div class="main_people_bn_btn">바로가기</div>
				</div>
				</a>
			</div>

			<div class="cont05_right">
				<div class="main_faq">
					<div class="main_faq_tit"><a href="<c:url value='/notice/faq' />">자주묻는 질문</a></div>
					<ul class="main_faq_cont">
						<a href="<c:url value='/notice/faq#1' />"><li>협력업체 등록방법</li></a>
						<a href="<c:url value='/notice/faq#2' />"><li>인재POOL 등록방법</li></a>
						<a href="<c:url value='/notice/faq#3' />"><li>회원가입 안내</li></a>
						<a href="<c:url value='/notice/faq#4' />"><li>이용안내</li></a>
						<a href="<c:url value='/notice/faq#5' />"><li>기타</li></a> 
					</ul> 
				</div> 
			</div> 
		</div> 
	</section>
 

	<section class="foot_bn">
		<div class="web_size">
			<ul class="bottom_slickslider">
								<li style="cursor:pointer;" onclick="javascript:window.open('https://uujj.co.kr/')"><img src="<c:url value='/resources/static/image/91_4ae4aa98549da64b395a1da5a5e8d54d.jpg' />" alt="완주군로컬잡센터" /></li>
								<li style="cursor:pointer;" onclick="javascript:window.open('http://kwca.or.kr/')"><img src="<c:url value='/resources/static/image/99_3e4efb7dff3237bce19af1349eb27a71.jpg' />" alt="한국목조건축협회" /></li>
								<li style="cursor:pointer;" onclick="javascript:window.open('http://www.phiko.kr/')"><img src="<c:url value='/resources/static/image/100_3f4cd2354ef6bf8781aee07cb4b8eb7a.jpg' />" alt="한국패시브협회" /></li>
								<li style="cursor:pointer;" onclick="javascript:window.open('https://www.greendongwha.com/')"><img src="<c:url value='/resources/static/image/101_06282a19a2f989917ac497690986ede9.jpg' />" alt="동화자연마루" /></li>
								<li style="cursor:pointer;" onclick="javascript:window.open('http://kwca.or.kr/')"><img src="<c:url value='/resources/static/image/102_020fd1226c2b0216b32b0350bff1ee85.jpg' />" alt="대한목조건축협회" /></li>
								<li style="cursor:pointer;" onclick="javascript:window.open('https://www.jeonbuk.go.kr/')"><img src="<c:url value='/resources/static/image/102_020fd1226c2b0216b32b0350bff1ee85.jpg' />" alt="전라북도" /></li>
							</ul>
			<div class="arrow">
				<p class="prev" id="bottom_slick_prev_btn"><span></span></p>
				<p class="next" id="bottom_slick_next_btn"><span></span></p>
			</div>
		</div>
	</section>
</div>

<link rel="stylesheet" href="<c:url value='/resources/static/css/bxslider.css' />" >
<link rel="stylesheet" href="<c:url value='/resources/static/css/slickslider.css' />" >
<script src="<c:url value='/resources/static/js/bxslider.js' />"></script>
<script src="<c:url value='/resources/static/js/slickslider.js' />"></script>

<%@ include file="/WEB-INF/views/common/footer.jsp" %>