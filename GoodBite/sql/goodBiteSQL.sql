SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS COMMENT;
DROP TABLE IF EXISTS CHALLENGE_AUTH;
DROP TABLE IF EXISTS CHALLENGE_USER;
DROP TABLE IF EXISTS CHALLENGE_INFO;
DROP TABLE IF EXISTS FOOD;
DROP TABLE IF EXISTS NUTRITION_STANDARD;
DROP TABLE IF EXISTS GRADE_STANDARD;
DROP TABLE IF EXISTS EAT_HISTORY;
DROP TABLE IF EXISTS DAILY_SUMMARY;
DROP TABLE IF EXISTS HEALTH_BOARD;
DROP TABLE IF EXISTS POSSIBLE_DISEASES;
DROP TABLE IF EXISTS HEALTH_RES;
DROP TABLE IF EXISTS MEAL_RECORD;
DROP TABLE IF EXISTS USER;




/* Create Tables */

-- 유저가 선택한 챌린지를 진행하고 실행했을 때 인증을 남길 수 있는 테이블
CREATE TABLE CHALLENGE_AUTH
(
	caIdx int unsigned NOT NULL AUTO_INCREMENT,
	-- 유저 챌린지 인증 사진
	-- 
	caImage text NOT NULL COMMENT '유저 챌린지 인증 사진
',
	-- 유저 챌린지 인증 내용
	-- 
	caContents text NOT NULL COMMENT '유저 챌린지 인증 내용
',
	-- 유저 챌린지 작성 날짜
	-- 
	caWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저 챌린지 작성 날짜
',
	-- 유저 챌린지 삭제 여부
	-- 
	caDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '유저 챌린지 삭제 여부
',
	-- 유저 챌린지 수정 날짜
	-- 
	-- 
	caUpdateDate datetime NOT NULL COMMENT '유저 챌린지 수정 날짜

',
	-- 유저 챌린지 삭제 날짜
	-- 
	caDelDate datetime NOT NULL COMMENT '유저 챌린지 삭제 날짜
',
	-- 해당 정보 생성 날짜
	caCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 챌린지 인덱스
	-- 
	ciIdx int NOT NULL COMMENT '챌린지 인덱스
',
	-- 유저 챌린지 인덱스
	-- 
	cuIdx int unsigned NOT NULL COMMENT '유저 챌린지 인덱스
',
	PRIMARY KEY (caIdx)
) COMMENT = '유저가 선택한 챌린지를 진행하고 실행했을 때 인증을 남길 수 있는 테이블';


-- 식습관 형성을 위한 식사 습관 형성 첼린지들을 모아두는 테이블
CREATE TABLE CHALLENGE_INFO
(
	-- 챌린지 인덱스
	-- 
	ciIdx int NOT NULL AUTO_INCREMENT COMMENT '챌린지 인덱스
',
	-- 챌린지명
	-- 
	ciTitle varchar(100) NOT NULL COMMENT '챌린지명
',
	-- 챌린지 내용
	-- 
	ciContents text NOT NULL COMMENT '챌린지 내용
',
	-- 챌린지 이미지
	-- 
	ciImage text NOT NULL COMMENT '챌린지 이미지
',
	-- 챌린지 추천
	-- 
	ciRecom int NOT NULL COMMENT '챌린지 추천
',
	-- 챌린지 기간
	-- 
	ciDuration enum(7,14,30) NOT NULL COMMENT '챌린지 기간
',
	-- 챌린지 인증 방법
	-- 
	ciAuthMethod text NOT NULL COMMENT '챌린지 인증 방법
',
	-- 챌린지 작성 날짜
	-- 
	ciWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '챌린지 작성 날짜
',
	-- 챌린지 삭제여부
	-- 
	ciDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '챌린지 삭제여부
',
	-- 챌린지 삭제 날짜
	-- 
	ciDelDate datetime NOT NULL COMMENT '챌린지 삭제 날짜
',
	-- 첼린지 카테고리(유저, 관리자 분류)
	-- 
	ciRole enum('ADMIN','USER') NOT NULL COMMENT '첼린지 카테고리(유저, 관리자 분류)
',
	-- 해당 정보 생성 날자
	ciCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날자',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (ciIdx)
) COMMENT = '식습관 형성을 위한 식사 습관 형성 첼린지들을 모아두는 테이블';


-- 유저가 선택한 챌린지가 얼마나 진행되었는지 나타내주는 척도 테이블
CREATE TABLE CHALLENGE_USER
(
	-- 유저 챌린지 인덱스
	-- 
	cuIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '유저 챌린지 인덱스
',
	-- 유저 챌린지 상태
	-- 
	cuStatus enum('진행 중', '완료', '미완료') NOT NULL COMMENT '유저 챌린지 상태
',
	-- 유저 챌린지 진행도
	-- 
	cuProgress int NOT NULL COMMENT '유저 챌린지 진행도
',
	-- 해당 정보 생성날짜
	cuCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 챌린지 인덱스
	-- 
	ciIdx int NOT NULL COMMENT '챌린지 인덱스
',
	PRIMARY KEY (cuIdx)
) COMMENT = '유저가 선택한 챌린지가 얼마나 진행되었는지 나타내주는 척도 테이블';


-- 유저가 인증한 챌린지 글에 작성한 댓글을 저장하는 테이블
CREATE TABLE COMMENT
(
	-- 댓글 인덱스
	-- 
	coIdx int NOT NULL AUTO_INCREMENT COMMENT '댓글 인덱스
',
	-- 댓글 내용
	-- 
	coContents text NOT NULL COMMENT '댓글 내용
',
	-- 댓글 작성 날짜
	-- 
	coWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '댓글 작성 날짜
',
	-- 댓글 삭제 여부
	-- 
	coDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '댓글 삭제 여부
',
	-- 댓글 삭제 날짜
	-- 
	coDelDate datetime COMMENT '댓글 삭제 날짜
',
	-- 해당 정보 생성 날짜
	coCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	caIdx int unsigned NOT NULL,
	PRIMARY KEY (coIdx)
) COMMENT = '유저가 인증한 챌린지 글에 작성한 댓글을 저장하는 테이블';


-- 유저가 먹은 하루 먹은 음식들의 영양소 수치를 합산해주는 테이블
CREATE TABLE DAILY_SUMMARY
(
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '일별 요약 인덱스
',
	-- 총 섭취 열량 (kcal)
	-- 
	dsTotalCalorie varchar(20) NOT NULL COMMENT '총 섭취 열량 (kcal)
',
	-- 총 섭취 탄수화물 (g)
	-- 
	dsTotalCarb varchar(20) NOT NULL COMMENT '총 섭취 탄수화물 (g)
',
	-- 총 섭취 단백질 (g)
	-- 
	dsTotalProtein varchar(20) NOT NULL COMMENT '총 섭취 단백질 (g)
',
	-- 총 섭취 지방 (g)
	-- 
	dsTotalFat varchar(20) NOT NULL COMMENT '총 섭취 지방 (g)
',
	-- 총 섭취 당 (g)
	-- 
	dsTotalSugar varchar(20) NOT NULL COMMENT '총 섭취 당 (g)
',
	-- 총 섭취 식이섬유 (g)
	-- 
	dsTotalFiber varchar(20) NOT NULL COMMENT '총 섭취 식이섬유 (g)
',
	-- 총 섭취 콜레스테롤 (mg)
	-- 
	dsTotalCholesterol varchar(20) NOT NULL COMMENT '총 섭취 콜레스테롤 (mg)
',
	-- 총 섭취 나트륨 (mg)
	-- 
	dsTotalSodium varchar(20) NOT NULL COMMENT '총 섭취 나트륨 (mg)
',
	-- 해당 정보 생성 날짜
	dsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (dsIdx)
) COMMENT = '유저가 먹은 하루 먹은 음식들의 영양소 수치를 합산해주는 테이블';


-- 매 끼니 마다 유저가 먹은 음식 내용들을 기록하는 테이블
CREATE TABLE EAT_HISTORY
(
	-- 식사 기록 인덱스
	-- 
	ehIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '식사 기록 인덱스
',
	-- 식사 기록 날짜 
	-- 
	ehWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '식사 기록 날짜 
',
	-- 식사 시간대 (아침/점심/저녁/간식)
	-- 
	ehMealTime varchar(10) NOT NULL COMMENT '식사 시간대 (아침/점심/저녁/간식)
',
	-- 식사 음식 이름
	-- 
	ehFoodName varchar(100) NOT NULL COMMENT '식사 음식 이름
',
	-- 식사 열량 (kcal)
	-- 
	ehCalorie varchar(20) NOT NULL COMMENT '식사 열량 (kcal)
',
	-- 식사 탄수화물 (g)
	-- 
	ehCarb varchar(20) NOT NULL COMMENT '식사 탄수화물 (g)
',
	-- 식사 단백질 (g)
	-- 
	ehProtein varchar(20) NOT NULL COMMENT '식사 단백질 (g)
',
	-- 식사 지방 (g)
	-- 
	ehFat varchar(20) NOT NULL COMMENT '식사 지방 (g)
',
	-- 식사 당 (g)
	-- 
	ehSugar varchar(20) NOT NULL COMMENT '식사 당 (g)
',
	-- 식사 식이섬유 (g)
	-- 
	ehFiber varchar(20) NOT NULL COMMENT '식사 식이섬유 (g)
',
	-- 식사 콜레스테롤 (mg)
	-- 
	ehCholesterol varchar(20) NOT NULL COMMENT '식사 콜레스테롤 (mg)
',
	-- 식사 나트륨 (mg)
	-- 
	ehSodium varchar(20) NOT NULL COMMENT '식사 나트륨 (mg)
',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	-- 일별 요약 인덱스
	-- 
	dsIdx int unsigned NOT NULL COMMENT '일별 요약 인덱스
',
	-- 해당 정보 생성 날짜
	ehCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	PRIMARY KEY (ehIdx)
) COMMENT = '매 끼니 마다 유저가 먹은 음식 내용들을 기록하는 테이블';


-- 음식에 대한 예제품목을 입력하고 예제 음식의 기본 영양소 데이터를 받는 테이블
CREATE TABLE FOOD
(
	-- 음식 인덱스
	-- 
	fIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '음식 인덱스
',
	-- 음식 카테고리(분류군)
	-- 
	fCategory varchar(20) NOT NULL COMMENT '음식 카테고리(분류군)
',
	-- 음식 예제음식
	-- 
	fName varchar(20) NOT NULL COMMENT '음식 예제음식
',
	-- 음식 칼로리
	-- 
	fCalorie varchar(20) NOT NULL COMMENT '음식 칼로리
',
	-- 음식 탄수화물
	-- 
	fCarb varchar(20) NOT NULL COMMENT '음식 탄수화물
',
	-- 음식 단백질
	-- 
	fProtein varchar(20) NOT NULL COMMENT '음식 단백질
',
	-- 음식 지방
	-- 
	fFat varchar(20) NOT NULL COMMENT '음식 지방
',
	-- 음식 식이섬유
	-- 
	fFiber varchar(20) NOT NULL COMMENT '음식 식이섬유
',
	-- 음식 당류
	-- 
	fSugar varchar(20) NOT NULL COMMENT '음식 당류
',
	-- 음식 포화지방
	-- 
	fStFat varchar(20) NOT NULL COMMENT '음식 포화지방
',
	-- 음식 콜레스테롤
	-- 
	fCholesterol varchar(20) NOT NULL COMMENT '음식 콜레스테롤
',
	-- 음식 나트륨
	-- 
	fSodium varchar(20) NOT NULL COMMENT '음식 나트륨
',
	-- 해당 정보 생성 날짜
	-- 
	fCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜
',
	-- 유저가 입력한 영양성분 정보 인덱스
	-- 
	mIdx int NOT NULL COMMENT '유저가 입력한 영양성분 정보 인덱스
',
	-- 식사 기록 인덱스
	-- 
	ehIdx int unsigned NOT NULL COMMENT '식사 기록 인덱스
',
	PRIMARY KEY (fIdx)
) COMMENT = '음식에 대한 예제품목을 입력하고 예제 음식의 기본 영양소 데이터를 받는 테이블';


-- 건강데이터와 식단데이터를 취합해서 현재 영양상태에 대해 등급을 부여하는 테이블
CREATE TABLE GRADE_STANDARD
(
	-- 등급 ID
	-- 
	gsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '등급 ID
',
	-- 최소 차이율 (%)
	-- 
	gsMinPercentage double NOT NULL COMMENT '최소 차이율 (%)
',
	-- 최대 차이율 (%)
	-- 
	gsMaxPercentage double NOT NULL COMMENT '최대 차이율 (%)
',
	-- 등급
	-- 
	gsGrade varchar(10) NOT NULL COMMENT '등급
',
	-- 등급 설명
	-- 
	gsDescription varchar(100) NOT NULL COMMENT '등급 설명
',
	-- 평가 색상 코드
	-- 
	gsColorCode varchar(10) NOT NULL COMMENT '평가 색상 코드
',
	-- 해당 정보 생성 날짜
	gsCreateAt datetime NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 식사 기록 인덱스
	-- 
	ehIdx int unsigned NOT NULL COMMENT '식사 기록 인덱스
',
	PRIMARY KEY (gsIdx)
) COMMENT = '건강데이터와 식단데이터를 취합해서 현재 영양상태에 대해 등급을 부여하는 테이블';


-- 작성된 카드 뉴스를 저장하는 테이블
CREATE TABLE HEALTH_BOARD
(
	-- 건강정보 게시글 인덱스
	-- 
	hbId int NOT NULL AUTO_INCREMENT COMMENT '건강정보 게시글 인덱스
',
	-- 건강정보 게시글 제목
	-- 
	hbTitle text NOT NULL COMMENT '건강정보 게시글 제목
',
	-- 건강정보 게시글 내용(이미지) - 에디터
	-- 
	hbContents longtext NOT NULL COMMENT '건강정보 게시글 내용(이미지) - 에디터
',
	-- 건강정보 게시글 이미지(썸네일)
	-- 
	hbImage text NOT NULL COMMENT '건강정보 게시글 이미지(썸네일)
',
	-- 건강정보 게시글 작성 날짜
	-- 
	hbWriteDay datetime DEFAULT NOW(), SYSDATE() COMMENT '건강정보 게시글 작성 날짜
',
	-- 건강정보 게시글 삭제 여부
	-- 
	hbDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '건강정보 게시글 삭제 여부
',
	-- 건강정보 게시글 삭제 날짜
	-- 
	hbDelDate datetime NOT NULL COMMENT '건강정보 게시글 삭제 날짜
',
	-- 건강정보 게시글 수정 날짜
	-- 
	hbUpdateDate datetime NOT NULL COMMENT '건강정보 게시글 수정 날짜
',
	-- 해당 정보 생성 날짜
	hbCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (hbId)
) COMMENT = '작성된 카드 뉴스를 저장하는 테이블';


-- 최신 건강검진기록을 받아와서 해당 데이터들을 저장하는 테이블
CREATE TABLE HEALTH_RES
(
	-- 건강진단기록 인덱스
	-- 
	resIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '건강진단기록 인덱스
',
	-- 검진년도
	-- 
	resCheckupYear varchar(150) NOT NULL COMMENT '검진년도
',
	-- 검진일자
	-- 
	resCheckupDate varchar(150) NOT NULL COMMENT '검진일자
',
	-- 검진장소
	-- 
	resCheckupPlace varchar(150) NOT NULL COMMENT '검진장소
',
	-- 신장
	-- 
	resHeight varchar(150) NOT NULL COMMENT '신장
',
	-- 체중
	-- 
	resWeight varchar(150) NOT NULL COMMENT '체중
',
	-- 허리둘레
	-- 
	resWaist varchar(150) NOT NULL COMMENT '허리둘레
',
	-- 체질량지수
	-- 
	resBMI varchar(150) NOT NULL COMMENT '체질량지수
',
	-- 시력
	-- 
	resSight varchar(150) NOT NULL COMMENT '시력
',
	-- 청력
	-- 
	resHearing varchar(150) NOT NULL COMMENT '청력
',
	-- 혈압
	-- 
	resBloodPressure varchar(150) NOT NULL COMMENT '혈압
',
	-- 요단백
	-- 
	resUrinaryProtein varchar(150) NOT NULL COMMENT '요단백
',
	-- 혈색소
	-- 
	resHemoglobin varchar(150) NOT NULL COMMENT '혈색소
',
	-- 식전혈당
	-- 
	resFastingBloodSuger varchar(150) NOT NULL COMMENT '식전혈당
',
	-- 총콜레스테롤
	-- 
	resTotalCholesterol varchar(150) NOT NULL COMMENT '총콜레스테롤
',
	-- HDL콜레스테롤
	-- 
	resHDLCholesterol varchar(150) NOT NULL COMMENT 'HDL콜레스테롤
',
	-- 트리글리세라이드
	-- 
	resTriglyceride varchar(150) NOT NULL COMMENT '트리글리세라이드
',
	-- LDL콜레스테롤
	-- 
	resLDLCholesterol varchar(150) NOT NULL COMMENT 'LDL콜레스테롤
',
	-- 혈청크레아티닌
	-- 
	resSerumCreatinine varchar(150) NOT NULL COMMENT '혈청크레아티닌
',
	-- 신사구체여과율(GFR)
	-- 
	resGFR varchar(150) NOT NULL COMMENT '신사구체여과율(GFR)
',
	-- AST(SGOT)
	-- 
	-- 
	resAST varchar(150) NOT NULL COMMENT 'AST(SGOT)

',
	-- ALT(SGPT)
	-- 
	resALT varchar(150) NOT NULL COMMENT 'ALT(SGPT)
',
	-- 감마지피티(y-GPT)
	-- 
	resyGPT varchar(150) NOT NULL COMMENT '감마지피티(y-GPT)
',
	-- 폐결핵 흉부질환
	-- 
	-- 
	resTBChestDisease varchar(150) NOT NULL COMMENT '폐결핵 흉부질환

',
	-- 골다공증
	-- 
	resOsteoporosis varchar(150) NOT NULL COMMENT '골다공증
',
	-- 판정
	-- 
	resJudgement varchar(150) NOT NULL COMMENT '판정
',
	-- 검진기관
	-- 
	resOrganizationName varchar(150) NOT NULL COMMENT '검진기관
',
	-- 소견
	-- 
	resOpinion varchar(150) NOT NULL COMMENT '소견
',
	-- 해당 정보 생성 날짜
	resCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (resIdx)
) COMMENT = '최신 건강검진기록을 받아와서 해당 데이터들을 저장하는 테이블';


-- 회원이 식단입력 창에서 입력하는 식단의 영양소 데이터를 받는 테이블
CREATE TABLE MEAL_RECORD
(
	-- 유저가 입력한 영양성분 정보 인덱스
	-- 
	mIdx int NOT NULL AUTO_INCREMENT COMMENT '유저가 입력한 영양성분 정보 인덱스
',
	-- 유저가 입력한 영양성분 정보 기록 날짜
	-- 
	mWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저가 입력한 영양성분 정보 기록 날짜
',
	-- 유저가 입력한 영양성분열량 (kcal)
	-- 
	mCalorie varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분열량 (kcal)
',
	-- 유저가 입력한 영양성분 탄수화물 (g)
	-- 
	mCarb varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 탄수화물 (g)
',
	-- 유저가 입력한 영양성분 단백질 (g)
	-- 
	mProtein varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 단백질 (g)
',
	-- 유저가 입력한 영양성분 지방 (g)
	-- 
	mFat varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 지방 (g)
',
	-- 유저가 입력한 영양성분 당 (g)
	-- 
	mSugar varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 당 (g)
',
	-- 유저가 입력한 영양성분 식이섬유 (g)
	-- 
	mFiber varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 식이섬유 (g)
',
	-- 유저가 입력한 영양성분 콜레스테롤 (mg)
	-- 
	mCholesterol varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 콜레스테롤 (mg)
',
	-- 유저가 입력한 영양성분 나트륨 (mg)
	-- 
	mSodium varchar(20) NOT NULL COMMENT '유저가 입력한 영양성분 나트륨 (mg)
',
	-- 해당 정보 생성날짜
	mCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성날짜',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (mIdx)
) COMMENT = '회원이 식단입력 창에서 입력하는 식단의 영양소 데이터를 받는 테이블';


-- 예제음식과 식단음식의 영양소 데이터를 받아서 현재 회원의 건강상태에 비해 영양 기준이 적절한지 판단하는 기준
CREATE TABLE NUTRITION_STANDARD
(
	-- 기준 ID
	-- 
	nsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '기준 ID
',
	-- 적정 섭취 열량 (kcal)
	-- 
	nsCalorie varchar(20) NOT NULL COMMENT '적정 섭취 열량 (kcal)
',
	-- 적정 섭취 탄수화물 (g)
	-- 
	nsCarb varchar(20) NOT NULL COMMENT '적정 섭취 탄수화물 (g)
',
	-- 적정 섭취 단백질 (g)
	-- 
	nsProtein varchar(20) NOT NULL COMMENT '적정 섭취 단백질 (g)
',
	-- 적정 섭취 지방 (g)
	-- 
	nsFat varchar(20) NOT NULL COMMENT '적정 섭취 지방 (g)
',
	-- 적정 섭취 당 (g)
	-- 
	nsSugar varchar(20) NOT NULL COMMENT '적정 섭취 당 (g)
',
	-- 적정 섭취 식이섬유 (g)
	-- 
	nsFiber varchar(20) NOT NULL COMMENT '적정 섭취 식이섬유 (g)
',
	-- 적정 섭취 콜레스테롤 (mg)
	-- 
	nsCholesterol varchar(20) NOT NULL COMMENT '적정 섭취 콜레스테롤 (mg)
',
	-- 적정 섭취 나트륨 (mg)
	-- 
	nsSodium varchar(20) NOT NULL COMMENT '적정 섭취 나트륨 (mg)
',
	-- 해당 정보 생성 날짜
	nsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 의심질환 ID
	-- 
	pdIdx int unsigned NOT NULL COMMENT '의심질환 ID
',
	-- 등급 ID
	-- 
	gsIdx int unsigned NOT NULL COMMENT '등급 ID
',
	-- 유저 인덱스
	uIdx int unsigned NOT NULL COMMENT '유저 인덱스',
	PRIMARY KEY (nsIdx)
) COMMENT = '예제음식과 식단음식의 영양소 데이터를 받아서 현재 회원의 건강상태에 비해 영양 기준이 적절한지 판단하는 기준';


-- 건강검진기록에서 해당 유저에게 의심질환으로 기록된 데이터를 받는 테이블
CREATE TABLE POSSIBLE_DISEASES
(
	-- 의심질환 ID
	-- 
	pdIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '의심질환 ID
',
	-- 의심질환 이름
	-- 
	pdName varchar(100) NOT NULL COMMENT '의심질환 이름
',
	-- 해당 정보 생성 날짜
	pdCreateAt datetime NOT NULL COMMENT '해당 정보 생성 날짜',
	-- 건강진단기록 인덱스
	-- 
	resIdx int unsigned NOT NULL COMMENT '건강진단기록 인덱스
',
	PRIMARY KEY (pdIdx)
) COMMENT = '건강검진기록에서 해당 유저에게 의심질환으로 기록된 데이터를 받는 테이블';


-- 해당 웹 프로그램에 회원가입하는 회원들의 정보를 관리하는 테이블
CREATE TABLE USER
(
	-- 유저 인덱스
	uIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '유저 인덱스',
	-- 유저 아이디
	-- 
	uId varchar(50) NOT NULL COMMENT '유저 아이디
',
	-- 유저 비밀번호
	-- 
	uPwd varchar(50) NOT NULL COMMENT '유저 비밀번호
',
	-- 유저 이름
	-- 
	uName varchar(50) NOT NULL COMMENT '유저 이름
',
	-- 유저 성별
	-- 
	uGender char(1) NOT NULL COMMENT '유저 성별
',
	-- 유저 생년월일
	-- 
	uBirth varchar(10) NOT NULL COMMENT '유저 생년월일
',
	-- 유저 연락처
	-- 
	uPhone varchar(20) NOT NULL COMMENT '유저 연락처
',
	-- 유저 이메일
	-- 
	uMail varchar(40) NOT NULL COMMENT '유저 이메일
',
	-- 유저 아이피
	-- 
	uIp varchar(50) NOT NULL COMMENT '유저 아이피
',
	-- 유저 가입날짜
	-- 
	uEnterDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '유저 가입날짜
',
	-- 유저 수정날짜
	-- 
	uUpdateDate datetime COMMENT '유저 수정날짜
',
	-- 유저 탈퇴여부
	-- 
	uDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '유저 탈퇴여부
',
	-- 유저 탈퇴날짜
	-- 
	uDelDate datetime COMMENT '유저 탈퇴날짜
',
	-- 유저 분류
	-- ENUM('ADMIN','USER')
	-- 
	uRole enum('ADMIN','USER') NOT NULL COMMENT '유저 분류
ENUM(''ADMIN'',''USER'')
',
	-- 해당 정보 생성 날짜
	uCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '해당 정보 생성 날짜',
	PRIMARY KEY (uIdx),
	UNIQUE (uId)
) COMMENT = '해당 웹 프로그램에 회원가입하는 회원들의 정보를 관리하는 테이블';



/* Create Foreign Keys */

ALTER TABLE COMMENT
	ADD FOREIGN KEY (caIdx)
	REFERENCES CHALLENGE_AUTH (caIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_AUTH
	ADD FOREIGN KEY (ciIdx)
	REFERENCES CHALLENGE_INFO (ciIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_USER
	ADD FOREIGN KEY (ciIdx)
	REFERENCES CHALLENGE_INFO (ciIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_AUTH
	ADD FOREIGN KEY (cuIdx)
	REFERENCES CHALLENGE_USER (cuIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE EAT_HISTORY
	ADD FOREIGN KEY (dsIdx)
	REFERENCES DAILY_SUMMARY (dsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (ehIdx)
	REFERENCES EAT_HISTORY (ehIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE GRADE_STANDARD
	ADD FOREIGN KEY (ehIdx)
	REFERENCES EAT_HISTORY (ehIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE NUTRITION_STANDARD
	ADD FOREIGN KEY (gsIdx)
	REFERENCES GRADE_STANDARD (gsIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE POSSIBLE_DISEASES
	ADD FOREIGN KEY (resIdx)
	REFERENCES HEALTH_RES (resIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE FOOD
	ADD FOREIGN KEY (mIdx)
	REFERENCES MEAL_RECORD (mIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE NUTRITION_STANDARD
	ADD FOREIGN KEY (pdIdx)
	REFERENCES POSSIBLE_DISEASES (pdIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_AUTH
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_INFO
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE CHALLENGE_USER
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE COMMENT
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE DAILY_SUMMARY
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE EAT_HISTORY
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE HEALTH_BOARD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE HEALTH_RES
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE MEAL_RECORD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;


ALTER TABLE NUTRITION_STANDARD
	ADD FOREIGN KEY (uIdx)
	REFERENCES USER (uIdx)
	ON UPDATE RESTRICT
	ON DELETE RESTRICT
;



