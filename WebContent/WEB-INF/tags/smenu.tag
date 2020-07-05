<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%@ attribute name="mid" %>
<%@ attribute name="auid" %>
<%@ attribute name="curmsg" %>

[<a href="sns_control.jsp?action=fav&mid=${mid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">좋아요</a>]

<!-- 한정원 : 게시글 수정 기능 추가 -->
<c:if test="${uid == auid}">
[<a href="sns_control.jsp?action=delmsg&mid=${mid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">글 삭제</a>]
<form method="post" action = "sns_control.jsp?action=updatemsg&mid=${mid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}" >
<table>
	<tr><td><input type="text" name="upmsg" size="30" required>
	<button id="hancss" type="submit">글 수정하기</button>
	</td></tr>
</table>
</form>  
</c:if>


