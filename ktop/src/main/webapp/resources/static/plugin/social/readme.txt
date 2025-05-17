소셜로그인 관련

1. /_common/plugin/social 폴더 유무 체크(없으면 넣어줘야 함)

2. 로그인 할 위치(예 > /main) 에 로그인용 파일 생성 필요(현재 snslogin.php 로 생성되어 있음)
 => 만들고 /_common/plugin/social/login.skin.php 에서 $login_oauth_url 값 수정 필요할수도 있음

3. /_app/guava/login_social_update.php 파일 혹시 없으면 생성 필요(현재는 생성되어 있음)

4. 이후 각 플랫폼 별로 앱 등록 필요(client_id 등 값 얻어오기)

5. /_common/config/config.php 의 소셜로그인 소스 체크(없으면 넣어줘야 함), 해당 상수들에 각 플랫폼 별로 키 값이 있어야 동작함.

6. /_app/guava/login_form.php 의 ID,PW찾기 아래로 social/login.skin.php 파일 include 필요(main 에서만 출력되도록 조건 필요)

7. guava_user 테이블에 user_social 필드 있는지 확인(없으면 추가 - user_social (tinyint, default 0) )

8. 로그인 후 마이페이지 접근 시 패스워드 검증을 통과하기 위해 /_app/guava/register_check.php 에서 세션체크 위쪽으로
   if($user['user_social']) set_session('ss_check_user',$user['user_id']);
   위 내용 추가

9. /_app/guava/register_form.php 에서 패스워드, 질문 항목 소셜로그인 값이 없을때만 나오도록 수정


css 는 /main/css/layout.css 에 있음. 
관련 백그라운드 이미지는 /main/img/common 에 있음