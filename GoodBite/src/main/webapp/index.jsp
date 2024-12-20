<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<title>GoodBite</title>
</head>
<body>
    <div class="container">
        <!-- 로그인한 사용자 이름 표시 -->
        <div class="user-info">
            <c:if test="${!empty sessionScope.pidx}">
                <!-- 환자 로그인 -->
                환자 로그인 - ♥${patientName}님 환영합니다♥&nbsp;<a href="${pageContext.request.contextPath}/patient/patientLogout.aws">로그아웃하려면 클릭하세요.</a>
            </c:if>
            <c:if test="${!empty sessionScope.didx}">
                <!-- 의사 로그인 -->
                의사 로그인 - ♥${doctorName}님 환영합니다♥&nbsp;<a href="${pageContext.request.contextPath}/doctor/doctorLogout.aws">로그아웃하려면 클릭하세요.</a>
            </c:if>

            <c:if test="${!empty sessionScope.didx}">
                <!-- 의사 로그인 -->
                인턴/레지던트 로그인 - ♥${doctorName}님 환영합니다♥&nbsp;<a href="${pageContext.request.contextPath}/doctor/doctorLogout.aws">로그아웃하려면 클릭하세요.</a>
            </c:if>
            
            <c:if test="${!empty sessionScope.didx}">
                <!-- 의사 로그인 -->

                근로자 로그인 - ♥${doctorName}님 환영합니다♥&nbsp;<a href="${pageContext.request.contextPath}/doctor/doctorLogout.aws">로그아웃하려면 클릭하세요.</a>

                관리자2 로그인 - ♥${doctorName}님 환영합니다♥&nbsp;<a href="${pageContext.request.contextPath}/doctor/doctorLogout.aws">로그아웃하려면 클릭하세요.</a>

            </c:if>

        </div>

        <!-- 상단 제목 -->
        <header class="header">MEDICLOUD</header>
        <!-- 메뉴 -->
        <nav class="menu">
            <ul>
                <li><a href="${pageContext.request.contextPath}/patient/patientLogin.aws">환자 로그인 / 회원가입</a></li>
                <li><a href="${pageContext.request.contextPath}/doctor/doctorLogin.aws">의사 로그인 / 회원가입</a></li>
                <li><a href="${pageContext.request.contextPath}/appointment/makeAppointment.aws">진료 예약</a></li>
                <li><a href="${pageContext.request.contextPath}/appointment/viewAppointment.aws">진료 예약 현황</a></li>
                <li><a href="${pageContext.request.contextPath}/examination/examinationResult.aws">진료 결과 조회</a></li>
                <li><a href="${pageContext.request.contextPath}/examination/examinationWrite.aws">진료 결과 기록</a></li>
                <li><a href="${pageContext.request.contextPath}/board/boardList.aws">공지사항 / 커뮤니티</a></li>
                <li><a href="${pageContext.request.contextPath}/email/emailWrite.aws">이메일 쓰기</a></li>
            </ul>
        </nav>

        <!-- 메인 콘텐츠 -->
        <main class="main-content"></main>
    </div>
</body>
</html>
