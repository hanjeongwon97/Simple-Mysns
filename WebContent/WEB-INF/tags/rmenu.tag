<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="rid" %>
<%@ attribute name="ruid" %>
<%@ attribute name="curmsg" %>


<!-- 한정원 : 댓글 수정 추가 -->
<c:if test="${uid == ruid}">
<button id = "hancss" type="button" onclick="location.href='sns_control.jsp?action=delreply&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}'">삭제</button>
<form method="post" action = "sns_control.jsp?action=rupdate&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}" >
<table>
	<tr><td><input type="text" name="rmsg" size="30" required>
	<button id="hancss" type="submit">댓글수정</button>
	</td></tr>
</table>
</form> 
</c:if>