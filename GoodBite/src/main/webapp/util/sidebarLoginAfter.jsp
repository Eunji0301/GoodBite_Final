<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="UTF-8">
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
        <div class="dropdown">
          <a href="#" class="dropdown-toggle" data-bs-toggle="dropdown" aria-expanded="false">
            <img src="https://github.com/mdo.png" alt="" width="32" height="32" class="rounded-circle me-2">
            <strong>로그인</strong>
          </a>
          <ul class="dropdown-menu dropdown-menu-dark text-small shadow">
            <li><a class="dropdown-item" href="#">New project...</a></li>
            <li><a class="dropdown-item" href="#">Settings</a></li>
            <li><a class="dropdown-item" href="#">Profile</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Sign out</a></li>
          </ul>
        </div>
        <hr>
        <ul class="nav flex-column">
          <li class="nav-item">
            <a href="#" class="nav-link">Home</a>
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
