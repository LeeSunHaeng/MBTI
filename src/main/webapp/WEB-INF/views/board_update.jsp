<%@page import="secure.mbti.a.dto.MemberDto"%>
<%@page import="secure.mbti.a.dto.CommentDto"%>
<%@page import="secure.mbti.a.dto.BoardDto"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/style.css?version=3">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>


<%
BoardDto board = (BoardDto) request.getAttribute("board");
%>
<%
MemberDto dto = (MemberDto) request.getAttribute("dto");
%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<div class="wrapper">

<!-- 고정바 -->
	<header>
		<nav>
			<div class="fixed-top py-3 px-3 text-center deepblue"  id="nav">
				<a href="introMBTI.do" ><img style="width:80px; heigth:20px;"class="nav_bar_logo" src='image/PLAN16_LOGO.png' /></a>
				<a href="introMBTI.do" class="text-light distance">유형소개</a>
				<a href="board_type.do?page=1" class="text-light distance">유형별게시판</a>
				<a href="board_FREE.do?page=1" class="text-light distance">자유게시판</a>
				<a href="worldcup_choice.do" class="text-light distance">월드컵</a>
				<button type="button" class="btn btn-light btn-default btn-sm" onclick="location.href='logout.do'">로그아웃</button>
			</div>
		</nav>
	</header>
<!-- 고정바 -->


<!-- 수정할 댓글 입력창 -->
	<section>
		<article style="margin: 250px" padding="50px">
			<div id="containerAll">
			<form action="board_updateAf.do" method="post">
			<input type="hidden" name="boardseq" value="<%=board.getBoardseq()%>"> <!-- name 컨트롤러 키값, value value값 -->
				<input type="text" name="id" class="form-control mt-4 mb-2" size="70px" value=<%=board.getId()%> readonly>	
				<input type="text" name="title" class="form-control mt-4 mb-2"
					placeholder="제목을 입력해주세요." value="<%=board.getTitle()%>" required>
				<div class="form-group">
					<textarea class="form-control" rows="10" name="content"
						placeholder="내용을 입력해주세요" required><%=board.getContent()%></textarea>
				</div>
				<input type="submit" class="btn btn-dark" value="수정">
				<button type="button" class="btn btn-dark" onclick="location.href='board_detail.do?boardseq=<%=board.getBoardseq()%>'">취소</button>
			</form>	
			</div>
		</article>
	</section>
<!-- 수정할 댓글 입력창 -->
	</div>
	<script type="text/javascript">
 </script>
</body>
</html>