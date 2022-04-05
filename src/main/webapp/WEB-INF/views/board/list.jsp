<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<meta name="description" content="" />
<meta name="keywords" content="" />
<link rel="stylesheet" href="/resources/assets/css/main.css" />
<style type="text/css">
	td, th{
		text-align: center;
	}
</style>
</head>
<body class="is-preload">
	<div id="main">
		<div class="wrapper">
			<div class="inner">
				<header class="major">
					<h1 class="home">Board</h1>
						<p>게시판 목록</p>
				</header>
				<a href="#" class="button samll">글 등록</a>
<!------------------------------------------- 게시글 띄우는 테이블 ------------------------------------------->
				<div class="table-wrapper">
					<table>
						<thead>
							<tr>
								<th>번호</th>
								<th>제목</th>
								<th>작성자</th>
								<th>작성일</th>
								<th>수정일</th>
							</tr>
						</thead>
<!---------- 내용을 몇 줄 띄울지 모르니 for문을 이용해야 하고 그 전에 조건문 먼저 설정 후 forEach를 이용해 정보를 보여준다.----------->
						<tbody>
							<c:choose>
								<c:when test="${list != null and list.size()>0}">
									<c:forEach items="${list}" var="board">
										<tr>
											<td>${board.boardNum}</td>
											<td>${board.boardTitle}</td>
											<td>${board.boardWriter}</td>
											<td>${board.boardRegdate}</td>
											<td>${board.boardUpdate}</td>
										</tr>
									</c:forEach>
								</c:when>
								<c:otherwise>
									<tr>
										<td colspan="5">
											작성된 게시글이 없습니다.
										</td>
									</tr>
								</c:otherwise>
							</c:choose>
						</tbody>
					</table>
				</div>
<!------------------------------------------- 검색 처리 ------------------------------------------->
				<form>
					<div class="row aln-center">
						<div class="col-4">
							<select>
								<option>검색기준</option>
								<option>제목</option>
								<option>내용</option>
								<option>작성자</option>
								<option>제목 또는 내용</option>
								<option>제목 또는 작성자</option>
								<option>제목 또는 내용 또는 작성자</option>
							</select>
						</div>
						<div class="col-6">	
							<input type="text">
						</div>
						<div style="width:16%" class="col-4">	
							<a href="#" class="button primary icon solid fa-search">검색</a>
						</div>
					</div>
				</form>
<!------------------------------------------- 페이징 처리 ------------------------------------------->
				<div style="text-align: center;">
					<code>&lt;</code>
					<code>1</code>
					<code>2</code>
					<code>3</code>
					<code>4</code>
					<code>5</code>
					<code>&gt;</code>
				</div>						
			</div>
		</div>
	</div>
</body>
<!------------------------------------------- Script ------------------------------------------->
<script src="/resources/assets/js/jquery.min.js"></script>
<script src="/resources/assets/js/jquery.dropotron.min.js"></script>
<script src="/resources/assets/js/browser.min.js"></script>
<script src="/resources/assets/js/breakpoints.min.js"></script>
<script src="/resources/assets/js/util.js"></script>
<script src="/resources/assets/js/main.js"></script>
</html>