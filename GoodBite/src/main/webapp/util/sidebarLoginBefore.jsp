<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8"> <!-- UTF-8 인코딩을 사용 -->
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="Sidebar example">
    <meta name="author" content="Mark Otto, Jacob Thornton, and Bootstrap contributors">
    <meta name="generator" content="Hugo 0.122.0">
    <title>Sidebar</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="/resources/css/util2.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
    <meta name="theme-color" content="#712cf9">

    <style>
      /* 추가된 스타일, 기존 스타일을 기반으로 설정 */
      body {
        min-height: 100vh;
        background-color: #f8f9fa;
      }

      html {
        height: 100%;
      }

      main {
        display: flex;
        height: 100vh;
      }

      .sidebar {
        width: 280px;
        background-color: #FFFFFF;
        color: white;
        padding: 20px;
        overflow-y: auto;
        border: 5px solid #CDC8E7; /* 테두리 선 추가 */
        border-radius: 20px; /* 둥근 모서리 적용 */
      }

      .sidebar a {
        color: black;
        text-decoration: none;
        padding: 10px 15px;
        display: block;
        border-radius: 5px;
      }

      .sidebar a:hover,
      .sidebar a.active {
        background-color: #CDC8E7;
      }

      .sidebar .dropdown-toggle {
        color: white;
        text-decoration: none;
        padding: 10px 15px;
      }

      .dropdown {
        background-color: #CDC8E7;
      }

      .dropdown-menu {
        background-color: #CDC8E7;
      }

      .dropdown-item:hover {
        background-color: #8475BC;
      }

      .main-content {
        flex-grow: 1;
        padding: 20px;
      }

      .nav-link {
        background-color: #FFFFFF;
      }

      .sidebar-logo {
        width: 200px; /* 이미지의 너비 */
        height: auto; /* 비율에 맞춰 높이 자동 조정 */
        vertical-align: middle; /* 텍스트와 수평 맞추기 */
        margin-left: -20px; /* 텍스트와 이미지 간 간격 추가 */
      }
      
      .login-btn {
  		background-color: #CDC8E7;
  		width: 300px; /* 버튼의 너비를 사이드바 양옆 끝까지 확장 */
  		height: 100px; /* 버튼의 높이를 50px로 설정 */
  		padding: 10px 20px; /* 버튼 내부 여백 */
  		box-sizing: border-box; /* padding 포함 크기 계산 */
  		display: flex; /* 수평 정렬을 위해 flex 사용 */
  		align-items: center; /* 세로 정렬 */
  		margin-left: -25px;
	  }
	  
	  .login-btn box {
 		 background-color: #8475BC; /* 로그인 텍스트 색상을 흰색으로 설정 */
	  }
	  
	  .login-btn strong {
 		 color: #FFFFFF; /* 로그인 텍스트 색상을 흰색으로 설정 */
	  }

    </style>
  </head>
  <body>
    <main>
      <div class="sidebar">
        <a href="/" class="d-flex align-items-center mb-3">
          <svg width="40" height="32" xmlns="http://www.w3.org/2000/svg">
            <use xlink:href="#bootstrap"/>
          </svg>
          <span class="fs-4 ms-2">
            <img src="/resources/headerImage/sidelogo.PNG" alt="Sidebar Logo" class="sidebar-logo">
          </span>
        </a>
        <hr>
        <!-- 로그인 버튼을 클릭 시 토글 메뉴 없이 직접 링크로 설정 -->
        <a href="#" class="d-flex align-items-center mb-3 login-btn">
  			<img src="/resources/headerImage/loginBeforeProfile.png" alt="" width="32" height="32" class="rounded-circle me-2">
  			<box><strong>로그인</strong></box>
		</a>
        <hr>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a href="#" class="nav-link">Home111</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Dashboard</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Orders</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Products</a>
          </li>
          <li class="nav-item">
            <a href="#" class="nav-link">Customers</a>
          </li>
        </ul>
      </div>

      <div class="main-content">
        <h1>Main content area</h1>
        <p>Here is the content of the page.</p>
      </div>
    </main>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
  </body>
</html>
