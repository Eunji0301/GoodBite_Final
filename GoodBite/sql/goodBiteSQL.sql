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

-- ������ ������ ç������ �����ϰ� �������� �� ������ ���� �� �ִ� ���̺�
CREATE TABLE CHALLENGE_AUTH
(
	caIdx int unsigned NOT NULL AUTO_INCREMENT,
	-- ���� ç���� ���� ����
	-- 
	caImage text NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� ���� ����
	-- 
	caContents text NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� �ۼ� ��¥
	-- 
	caWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '���� ç���� �ۼ� ��¥
',
	-- ���� ç���� ���� ����
	-- 
	caDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '���� ç���� ���� ����
',
	-- ���� ç���� ���� ��¥
	-- 
	-- 
	caUpdateDate datetime NOT NULL COMMENT '���� ç���� ���� ��¥

',
	-- ���� ç���� ���� ��¥
	-- 
	caDelDate datetime NOT NULL COMMENT '���� ç���� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	caCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- ç���� �ε���
	-- 
	ciIdx int NOT NULL COMMENT 'ç���� �ε���
',
	-- ���� ç���� �ε���
	-- 
	cuIdx int unsigned NOT NULL COMMENT '���� ç���� �ε���
',
	PRIMARY KEY (caIdx)
) COMMENT = '������ ������ ç������ �����ϰ� �������� �� ������ ���� �� �ִ� ���̺�';


-- �Ľ��� ������ ���� �Ļ� ���� ���� ÿ�������� ��Ƶδ� ���̺�
CREATE TABLE CHALLENGE_INFO
(
	-- ç���� �ε���
	-- 
	ciIdx int NOT NULL AUTO_INCREMENT COMMENT 'ç���� �ε���
',
	-- ç������
	-- 
	ciTitle varchar(100) NOT NULL COMMENT 'ç������
',
	-- ç���� ����
	-- 
	ciContents text NOT NULL COMMENT 'ç���� ����
',
	-- ç���� �̹���
	-- 
	ciImage text NOT NULL COMMENT 'ç���� �̹���
',
	-- ç���� ��õ
	-- 
	ciRecom int NOT NULL COMMENT 'ç���� ��õ
',
	-- ç���� �Ⱓ
	-- 
	ciDuration enum(7,14,30) NOT NULL COMMENT 'ç���� �Ⱓ
',
	-- ç���� ���� ���
	-- 
	ciAuthMethod text NOT NULL COMMENT 'ç���� ���� ���
',
	-- ç���� �ۼ� ��¥
	-- 
	ciWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT 'ç���� �ۼ� ��¥
',
	-- ç���� ��������
	-- 
	ciDelyn char(1) DEFAULT 'N' NOT NULL COMMENT 'ç���� ��������
',
	-- ç���� ���� ��¥
	-- 
	ciDelDate datetime NOT NULL COMMENT 'ç���� ���� ��¥
',
	-- ÿ���� ī�װ�(����, ������ �з�)
	-- 
	ciRole enum('ADMIN','USER') NOT NULL COMMENT 'ÿ���� ī�װ�(����, ������ �з�)
',
	-- �ش� ���� ���� ����
	ciCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ����',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (ciIdx)
) COMMENT = '�Ľ��� ������ ���� �Ļ� ���� ���� ÿ�������� ��Ƶδ� ���̺�';


-- ������ ������ ç������ �󸶳� ����Ǿ����� ��Ÿ���ִ� ô�� ���̺�
CREATE TABLE CHALLENGE_USER
(
	-- ���� ç���� �ε���
	-- 
	cuIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� ç���� �ε���
',
	-- ���� ç���� ����
	-- 
	cuStatus enum('���� ��', '�Ϸ�', '�̿Ϸ�') NOT NULL COMMENT '���� ç���� ����
',
	-- ���� ç���� ���൵
	-- 
	cuProgress int NOT NULL COMMENT '���� ç���� ���൵
',
	-- �ش� ���� ������¥
	cuCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ������¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- ç���� �ε���
	-- 
	ciIdx int NOT NULL COMMENT 'ç���� �ε���
',
	PRIMARY KEY (cuIdx)
) COMMENT = '������ ������ ç������ �󸶳� ����Ǿ����� ��Ÿ���ִ� ô�� ���̺�';


-- ������ ������ ç���� �ۿ� �ۼ��� ����� �����ϴ� ���̺�
CREATE TABLE COMMENT
(
	-- ��� �ε���
	-- 
	coIdx int NOT NULL AUTO_INCREMENT COMMENT '��� �ε���
',
	-- ��� ����
	-- 
	coContents text NOT NULL COMMENT '��� ����
',
	-- ��� �ۼ� ��¥
	-- 
	coWriteDay datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '��� �ۼ� ��¥
',
	-- ��� ���� ����
	-- 
	coDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '��� ���� ����
',
	-- ��� ���� ��¥
	-- 
	coDelDate datetime COMMENT '��� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	coCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	caIdx int unsigned NOT NULL,
	PRIMARY KEY (coIdx)
) COMMENT = '������ ������ ç���� �ۿ� �ۼ��� ����� �����ϴ� ���̺�';


-- ������ ���� �Ϸ� ���� ���ĵ��� ����� ��ġ�� �ջ����ִ� ���̺�
CREATE TABLE DAILY_SUMMARY
(
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '�Ϻ� ��� �ε���
',
	-- �� ���� ���� (kcal)
	-- 
	dsTotalCalorie varchar(20) NOT NULL COMMENT '�� ���� ���� (kcal)
',
	-- �� ���� ź��ȭ�� (g)
	-- 
	dsTotalCarb varchar(20) NOT NULL COMMENT '�� ���� ź��ȭ�� (g)
',
	-- �� ���� �ܹ��� (g)
	-- 
	dsTotalProtein varchar(20) NOT NULL COMMENT '�� ���� �ܹ��� (g)
',
	-- �� ���� ���� (g)
	-- 
	dsTotalFat varchar(20) NOT NULL COMMENT '�� ���� ���� (g)
',
	-- �� ���� �� (g)
	-- 
	dsTotalSugar varchar(20) NOT NULL COMMENT '�� ���� �� (g)
',
	-- �� ���� ���̼��� (g)
	-- 
	dsTotalFiber varchar(20) NOT NULL COMMENT '�� ���� ���̼��� (g)
',
	-- �� ���� �ݷ����׷� (mg)
	-- 
	dsTotalCholesterol varchar(20) NOT NULL COMMENT '�� ���� �ݷ����׷� (mg)
',
	-- �� ���� ��Ʈ�� (mg)
	-- 
	dsTotalSodium varchar(20) NOT NULL COMMENT '�� ���� ��Ʈ�� (mg)
',
	-- �ش� ���� ���� ��¥
	dsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (dsIdx)
) COMMENT = '������ ���� �Ϸ� ���� ���ĵ��� ����� ��ġ�� �ջ����ִ� ���̺�';


-- �� ���� ���� ������ ���� ���� ������� ����ϴ� ���̺�
CREATE TABLE EAT_HISTORY
(
	-- �Ļ� ��� �ε���
	-- 
	ehIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '�Ļ� ��� �ε���
',
	-- �Ļ� ��� ��¥ 
	-- 
	ehWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�Ļ� ��� ��¥ 
',
	-- �Ļ� �ð��� (��ħ/����/����/����)
	-- 
	ehMealTime varchar(10) NOT NULL COMMENT '�Ļ� �ð��� (��ħ/����/����/����)
',
	-- �Ļ� ���� �̸�
	-- 
	ehFoodName varchar(100) NOT NULL COMMENT '�Ļ� ���� �̸�
',
	-- �Ļ� ���� (kcal)
	-- 
	ehCalorie varchar(20) NOT NULL COMMENT '�Ļ� ���� (kcal)
',
	-- �Ļ� ź��ȭ�� (g)
	-- 
	ehCarb varchar(20) NOT NULL COMMENT '�Ļ� ź��ȭ�� (g)
',
	-- �Ļ� �ܹ��� (g)
	-- 
	ehProtein varchar(20) NOT NULL COMMENT '�Ļ� �ܹ��� (g)
',
	-- �Ļ� ���� (g)
	-- 
	ehFat varchar(20) NOT NULL COMMENT '�Ļ� ���� (g)
',
	-- �Ļ� �� (g)
	-- 
	ehSugar varchar(20) NOT NULL COMMENT '�Ļ� �� (g)
',
	-- �Ļ� ���̼��� (g)
	-- 
	ehFiber varchar(20) NOT NULL COMMENT '�Ļ� ���̼��� (g)
',
	-- �Ļ� �ݷ����׷� (mg)
	-- 
	ehCholesterol varchar(20) NOT NULL COMMENT '�Ļ� �ݷ����׷� (mg)
',
	-- �Ļ� ��Ʈ�� (mg)
	-- 
	ehSodium varchar(20) NOT NULL COMMENT '�Ļ� ��Ʈ�� (mg)
',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	-- �Ϻ� ��� �ε���
	-- 
	dsIdx int unsigned NOT NULL COMMENT '�Ϻ� ��� �ε���
',
	-- �ش� ���� ���� ��¥
	ehCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	PRIMARY KEY (ehIdx)
) COMMENT = '�� ���� ���� ������ ���� ���� ������� ����ϴ� ���̺�';


-- ���Ŀ� ���� ����ǰ���� �Է��ϰ� ���� ������ �⺻ ����� �����͸� �޴� ���̺�
CREATE TABLE FOOD
(
	-- ���� �ε���
	-- 
	fIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� �ε���
',
	-- ���� ī�װ�(�з���)
	-- 
	fCategory varchar(20) NOT NULL COMMENT '���� ī�װ�(�з���)
',
	-- ���� ��������
	-- 
	fName varchar(20) NOT NULL COMMENT '���� ��������
',
	-- ���� Į�θ�
	-- 
	fCalorie varchar(20) NOT NULL COMMENT '���� Į�θ�
',
	-- ���� ź��ȭ��
	-- 
	fCarb varchar(20) NOT NULL COMMENT '���� ź��ȭ��
',
	-- ���� �ܹ���
	-- 
	fProtein varchar(20) NOT NULL COMMENT '���� �ܹ���
',
	-- ���� ����
	-- 
	fFat varchar(20) NOT NULL COMMENT '���� ����
',
	-- ���� ���̼���
	-- 
	fFiber varchar(20) NOT NULL COMMENT '���� ���̼���
',
	-- ���� ���
	-- 
	fSugar varchar(20) NOT NULL COMMENT '���� ���
',
	-- ���� ��ȭ����
	-- 
	fStFat varchar(20) NOT NULL COMMENT '���� ��ȭ����
',
	-- ���� �ݷ����׷�
	-- 
	fCholesterol varchar(20) NOT NULL COMMENT '���� �ݷ����׷�
',
	-- ���� ��Ʈ��
	-- 
	fSodium varchar(20) NOT NULL COMMENT '���� ��Ʈ��
',
	-- �ش� ���� ���� ��¥
	-- 
	fCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥
',
	-- ������ �Է��� ���缺�� ���� �ε���
	-- 
	mIdx int NOT NULL COMMENT '������ �Է��� ���缺�� ���� �ε���
',
	-- �Ļ� ��� �ε���
	-- 
	ehIdx int unsigned NOT NULL COMMENT '�Ļ� ��� �ε���
',
	PRIMARY KEY (fIdx)
) COMMENT = '���Ŀ� ���� ����ǰ���� �Է��ϰ� ���� ������ �⺻ ����� �����͸� �޴� ���̺�';


-- �ǰ������Ϳ� �Ĵܵ����͸� �����ؼ� ���� ������¿� ���� ����� �ο��ϴ� ���̺�
CREATE TABLE GRADE_STANDARD
(
	-- ��� ID
	-- 
	gsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '��� ID
',
	-- �ּ� ������ (%)
	-- 
	gsMinPercentage double NOT NULL COMMENT '�ּ� ������ (%)
',
	-- �ִ� ������ (%)
	-- 
	gsMaxPercentage double NOT NULL COMMENT '�ִ� ������ (%)
',
	-- ���
	-- 
	gsGrade varchar(10) NOT NULL COMMENT '���
',
	-- ��� ����
	-- 
	gsDescription varchar(100) NOT NULL COMMENT '��� ����
',
	-- �� ���� �ڵ�
	-- 
	gsColorCode varchar(10) NOT NULL COMMENT '�� ���� �ڵ�
',
	-- �ش� ���� ���� ��¥
	gsCreateAt datetime NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- �Ļ� ��� �ε���
	-- 
	ehIdx int unsigned NOT NULL COMMENT '�Ļ� ��� �ε���
',
	PRIMARY KEY (gsIdx)
) COMMENT = '�ǰ������Ϳ� �Ĵܵ����͸� �����ؼ� ���� ������¿� ���� ����� �ο��ϴ� ���̺�';


-- �ۼ��� ī�� ������ �����ϴ� ���̺�
CREATE TABLE HEALTH_BOARD
(
	-- �ǰ����� �Խñ� �ε���
	-- 
	hbId int NOT NULL AUTO_INCREMENT COMMENT '�ǰ����� �Խñ� �ε���
',
	-- �ǰ����� �Խñ� ����
	-- 
	hbTitle text NOT NULL COMMENT '�ǰ����� �Խñ� ����
',
	-- �ǰ����� �Խñ� ����(�̹���) - ������
	-- 
	hbContents longtext NOT NULL COMMENT '�ǰ����� �Խñ� ����(�̹���) - ������
',
	-- �ǰ����� �Խñ� �̹���(�����)
	-- 
	hbImage text NOT NULL COMMENT '�ǰ����� �Խñ� �̹���(�����)
',
	-- �ǰ����� �Խñ� �ۼ� ��¥
	-- 
	hbWriteDay datetime DEFAULT NOW(), SYSDATE() COMMENT '�ǰ����� �Խñ� �ۼ� ��¥
',
	-- �ǰ����� �Խñ� ���� ����
	-- 
	hbDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '�ǰ����� �Խñ� ���� ����
',
	-- �ǰ����� �Խñ� ���� ��¥
	-- 
	hbDelDate datetime NOT NULL COMMENT '�ǰ����� �Խñ� ���� ��¥
',
	-- �ǰ����� �Խñ� ���� ��¥
	-- 
	hbUpdateDate datetime NOT NULL COMMENT '�ǰ����� �Խñ� ���� ��¥
',
	-- �ش� ���� ���� ��¥
	hbCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (hbId)
) COMMENT = '�ۼ��� ī�� ������ �����ϴ� ���̺�';


-- �ֽ� �ǰ���������� �޾ƿͼ� �ش� �����͵��� �����ϴ� ���̺�
CREATE TABLE HEALTH_RES
(
	-- �ǰ����ܱ�� �ε���
	-- 
	resIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '�ǰ����ܱ�� �ε���
',
	-- �����⵵
	-- 
	resCheckupYear varchar(150) NOT NULL COMMENT '�����⵵
',
	-- ��������
	-- 
	resCheckupDate varchar(150) NOT NULL COMMENT '��������
',
	-- �������
	-- 
	resCheckupPlace varchar(150) NOT NULL COMMENT '�������
',
	-- ����
	-- 
	resHeight varchar(150) NOT NULL COMMENT '����
',
	-- ü��
	-- 
	resWeight varchar(150) NOT NULL COMMENT 'ü��
',
	-- �㸮�ѷ�
	-- 
	resWaist varchar(150) NOT NULL COMMENT '�㸮�ѷ�
',
	-- ü��������
	-- 
	resBMI varchar(150) NOT NULL COMMENT 'ü��������
',
	-- �÷�
	-- 
	resSight varchar(150) NOT NULL COMMENT '�÷�
',
	-- û��
	-- 
	resHearing varchar(150) NOT NULL COMMENT 'û��
',
	-- ����
	-- 
	resBloodPressure varchar(150) NOT NULL COMMENT '����
',
	-- ��ܹ�
	-- 
	resUrinaryProtein varchar(150) NOT NULL COMMENT '��ܹ�
',
	-- ������
	-- 
	resHemoglobin varchar(150) NOT NULL COMMENT '������
',
	-- ��������
	-- 
	resFastingBloodSuger varchar(150) NOT NULL COMMENT '��������
',
	-- ���ݷ����׷�
	-- 
	resTotalCholesterol varchar(150) NOT NULL COMMENT '���ݷ����׷�
',
	-- HDL�ݷ����׷�
	-- 
	resHDLCholesterol varchar(150) NOT NULL COMMENT 'HDL�ݷ����׷�
',
	-- Ʈ���۸������̵�
	-- 
	resTriglyceride varchar(150) NOT NULL COMMENT 'Ʈ���۸������̵�
',
	-- LDL�ݷ����׷�
	-- 
	resLDLCholesterol varchar(150) NOT NULL COMMENT 'LDL�ݷ����׷�
',
	-- ��ûũ����Ƽ��
	-- 
	resSerumCreatinine varchar(150) NOT NULL COMMENT '��ûũ����Ƽ��
',
	-- �Ż籸ü������(GFR)
	-- 
	resGFR varchar(150) NOT NULL COMMENT '�Ż籸ü������(GFR)
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
	-- ��������Ƽ(y-GPT)
	-- 
	resyGPT varchar(150) NOT NULL COMMENT '��������Ƽ(y-GPT)
',
	-- ����� �����ȯ
	-- 
	-- 
	resTBChestDisease varchar(150) NOT NULL COMMENT '����� �����ȯ

',
	-- ��ٰ���
	-- 
	resOsteoporosis varchar(150) NOT NULL COMMENT '��ٰ���
',
	-- ����
	-- 
	resJudgement varchar(150) NOT NULL COMMENT '����
',
	-- �������
	-- 
	resOrganizationName varchar(150) NOT NULL COMMENT '�������
',
	-- �Ұ�
	-- 
	resOpinion varchar(150) NOT NULL COMMENT '�Ұ�
',
	-- �ش� ���� ���� ��¥
	resCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (resIdx)
) COMMENT = '�ֽ� �ǰ���������� �޾ƿͼ� �ش� �����͵��� �����ϴ� ���̺�';


-- ȸ���� �Ĵ��Է� â���� �Է��ϴ� �Ĵ��� ����� �����͸� �޴� ���̺�
CREATE TABLE MEAL_RECORD
(
	-- ������ �Է��� ���缺�� ���� �ε���
	-- 
	mIdx int NOT NULL AUTO_INCREMENT COMMENT '������ �Է��� ���缺�� ���� �ε���
',
	-- ������ �Է��� ���缺�� ���� ��� ��¥
	-- 
	mWriteDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '������ �Է��� ���缺�� ���� ��� ��¥
',
	-- ������ �Է��� ���缺�п��� (kcal)
	-- 
	mCalorie varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�п��� (kcal)
',
	-- ������ �Է��� ���缺�� ź��ȭ�� (g)
	-- 
	mCarb varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ź��ȭ�� (g)
',
	-- ������ �Է��� ���缺�� �ܹ��� (g)
	-- 
	mProtein varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �ܹ��� (g)
',
	-- ������ �Է��� ���缺�� ���� (g)
	-- 
	mFat varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ���� (g)
',
	-- ������ �Է��� ���缺�� �� (g)
	-- 
	mSugar varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �� (g)
',
	-- ������ �Է��� ���缺�� ���̼��� (g)
	-- 
	mFiber varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ���̼��� (g)
',
	-- ������ �Է��� ���缺�� �ݷ����׷� (mg)
	-- 
	mCholesterol varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� �ݷ����׷� (mg)
',
	-- ������ �Է��� ���缺�� ��Ʈ�� (mg)
	-- 
	mSodium varchar(20) NOT NULL COMMENT '������ �Է��� ���缺�� ��Ʈ�� (mg)
',
	-- �ش� ���� ������¥
	mCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ������¥',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (mIdx)
) COMMENT = 'ȸ���� �Ĵ��Է� â���� �Է��ϴ� �Ĵ��� ����� �����͸� �޴� ���̺�';


-- �������İ� �Ĵ������� ����� �����͸� �޾Ƽ� ���� ȸ���� �ǰ����¿� ���� ���� ������ �������� �Ǵ��ϴ� ����
CREATE TABLE NUTRITION_STANDARD
(
	-- ���� ID
	-- 
	nsIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� ID
',
	-- ���� ���� ���� (kcal)
	-- 
	nsCalorie varchar(20) NOT NULL COMMENT '���� ���� ���� (kcal)
',
	-- ���� ���� ź��ȭ�� (g)
	-- 
	nsCarb varchar(20) NOT NULL COMMENT '���� ���� ź��ȭ�� (g)
',
	-- ���� ���� �ܹ��� (g)
	-- 
	nsProtein varchar(20) NOT NULL COMMENT '���� ���� �ܹ��� (g)
',
	-- ���� ���� ���� (g)
	-- 
	nsFat varchar(20) NOT NULL COMMENT '���� ���� ���� (g)
',
	-- ���� ���� �� (g)
	-- 
	nsSugar varchar(20) NOT NULL COMMENT '���� ���� �� (g)
',
	-- ���� ���� ���̼��� (g)
	-- 
	nsFiber varchar(20) NOT NULL COMMENT '���� ���� ���̼��� (g)
',
	-- ���� ���� �ݷ����׷� (mg)
	-- 
	nsCholesterol varchar(20) NOT NULL COMMENT '���� ���� �ݷ����׷� (mg)
',
	-- ���� ���� ��Ʈ�� (mg)
	-- 
	nsSodium varchar(20) NOT NULL COMMENT '���� ���� ��Ʈ�� (mg)
',
	-- �ش� ���� ���� ��¥
	nsCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- �ǽ���ȯ ID
	-- 
	pdIdx int unsigned NOT NULL COMMENT '�ǽ���ȯ ID
',
	-- ��� ID
	-- 
	gsIdx int unsigned NOT NULL COMMENT '��� ID
',
	-- ���� �ε���
	uIdx int unsigned NOT NULL COMMENT '���� �ε���',
	PRIMARY KEY (nsIdx)
) COMMENT = '�������İ� �Ĵ������� ����� �����͸� �޾Ƽ� ���� ȸ���� �ǰ����¿� ���� ���� ������ �������� �Ǵ��ϴ� ����';


-- �ǰ�������Ͽ��� �ش� �������� �ǽ���ȯ���� ��ϵ� �����͸� �޴� ���̺�
CREATE TABLE POSSIBLE_DISEASES
(
	-- �ǽ���ȯ ID
	-- 
	pdIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '�ǽ���ȯ ID
',
	-- �ǽ���ȯ �̸�
	-- 
	pdName varchar(100) NOT NULL COMMENT '�ǽ���ȯ �̸�
',
	-- �ش� ���� ���� ��¥
	pdCreateAt datetime NOT NULL COMMENT '�ش� ���� ���� ��¥',
	-- �ǰ����ܱ�� �ε���
	-- 
	resIdx int unsigned NOT NULL COMMENT '�ǰ����ܱ�� �ε���
',
	PRIMARY KEY (pdIdx)
) COMMENT = '�ǰ�������Ͽ��� �ش� �������� �ǽ���ȯ���� ��ϵ� �����͸� �޴� ���̺�';


-- �ش� �� ���α׷��� ȸ�������ϴ� ȸ������ ������ �����ϴ� ���̺�
CREATE TABLE USER
(
	-- ���� �ε���
	uIdx int unsigned NOT NULL AUTO_INCREMENT COMMENT '���� �ε���',
	-- ���� ���̵�
	-- 
	uId varchar(50) NOT NULL COMMENT '���� ���̵�
',
	-- ���� ��й�ȣ
	-- 
	uPwd varchar(50) NOT NULL COMMENT '���� ��й�ȣ
',
	-- ���� �̸�
	-- 
	uName varchar(50) NOT NULL COMMENT '���� �̸�
',
	-- ���� ����
	-- 
	uGender char(1) NOT NULL COMMENT '���� ����
',
	-- ���� �������
	-- 
	uBirth varchar(10) NOT NULL COMMENT '���� �������
',
	-- ���� ����ó
	-- 
	uPhone varchar(20) NOT NULL COMMENT '���� ����ó
',
	-- ���� �̸���
	-- 
	uMail varchar(40) NOT NULL COMMENT '���� �̸���
',
	-- ���� ������
	-- 
	uIp varchar(50) NOT NULL COMMENT '���� ������
',
	-- ���� ���Գ�¥
	-- 
	uEnterDate datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '���� ���Գ�¥
',
	-- ���� ������¥
	-- 
	uUpdateDate datetime COMMENT '���� ������¥
',
	-- ���� Ż�𿩺�
	-- 
	uDelyn char(1) DEFAULT 'N' NOT NULL COMMENT '���� Ż�𿩺�
',
	-- ���� Ż��¥
	-- 
	uDelDate datetime COMMENT '���� Ż��¥
',
	-- ���� �з�
	-- ENUM('ADMIN','USER')
	-- 
	uRole enum('ADMIN','USER') NOT NULL COMMENT '���� �з�
ENUM(''ADMIN'',''USER'')
',
	-- �ش� ���� ���� ��¥
	uCreateAt datetime DEFAULT NOW(), SYSDATE() NOT NULL COMMENT '�ش� ���� ���� ��¥',
	PRIMARY KEY (uIdx),
	UNIQUE (uId)
) COMMENT = '�ش� �� ���α׷��� ȸ�������ϴ� ȸ������ ������ �����ϴ� ���̺�';



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



