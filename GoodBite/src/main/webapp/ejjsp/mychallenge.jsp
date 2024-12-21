<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>GoodBite</title>
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/util.css">
<style>
.main-section {
	padding: 50px 0;
	background-color: #fff;
}

.container {
	width: 1180px;
	margin: 0 auto;
}

.challenge-wrapper {
    margin-bottom: 30px;  /* challenge-banner와 challenge-cards 사이 간격 */
}

.challenge-banner {
	width: 100%;
	background: #CDC8E7;
	border-radius: 10px;
	overflow: hidden;
	text-align: center;
}

.challenge-banner img {
	width: 100%;
	height: 150px;
	object-fit: cover;
}

.challenge-banner p {
	padding: 10px 0;
	font-size: 16px;
	font-weight: bold;
}

.challenge-status {
	margin: 20px 0;
	text-align: center;
	width: 48%;
}

.challenge-status p {
	margin: 10px 0;
	font-size: 18px;
	color: #555;
}

.challenge-cards {
	display: flex;
	justify-content: space-between;
	gap: 20px;
	margin-top: 30px;  /* challenge-cards 상단에 간격 추가 */
}

.card {
	width: 48%;
	background: #CDC8E7;
	border-radius: 10px;
	overflow: hidden;
	text-align: center;
}

.card img {
	width: 100%;
	height: 150px;
	object-fit: cover;
}

.card p {
	padding: 10px 0;
	font-size: 16px;
	font-weight: bold;
}

footer {
	background: #CDC8E7;
	text-align: center;
	padding: 20px 0;
	margin-top: 50px;
}

footer p {
	margin: 0;
	font-size: 14px;
	color: #333;
}
</style>
</head>
<body>
	<header id="header">
		<div class="inner">
			<div class="logo">
				<img src="logo.png" alt="GoodBite Logo">
			</div>
		</div>
	</header>

	<!-- 메인 콘텐츠 -->
	<section class="main-section">
		<div class="container">
			<h2>MY CHALLENGE</h2>
			<div class="challenge-wrapper">
				<div class="challenge-banner">
					<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRhtWEagHN1Gugs6BkKkDvQnU4a5pzgwKmezQ&s" alt="Challenge Banner">
					<div class="challenge-status">
						<p>1일차 챌린지 진행 중</p>
						<p>20명이 챌린지를 진행중입니다.</p>
						<p>인증 횟수: <span class="emoji">😄😄😄</span></p>
					</div>
				</div>

				<div class="challenge-cards">
					<div class="card">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQzLC8qlDwso0m847PSZZqz7f110LnZbRQcVw&s" alt="완료 챌린지">
						<p>완료 챌린지명</p>
					</div>
					<div class="card">
						<img src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTw4XXQKZH4OY8McUf0__6bTn7hRtyEsj3uiw&s" alt="미완료 챌린지">
						<p>미완료 챌린지명</p>
					</div>
				</div>
			</div>
		</div>
	</section>

	<footer>
		<p>&copy; 2024 HelloHealthy.company</p>
	</footer>
</body>
</html>
