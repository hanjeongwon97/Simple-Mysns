<%@ tag body-content="scriptless" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ attribute name="rid" %>
<%@ attribute name="ruid" %>
<%@ attribute name="curmsg" %>

<script>

	function newuser() {
		window
				.open(
						"new_user.jsp",
						"newuser",
						"titlebar=no,location=no,scrollbars=no,resizeable=no,menubar=no,toolbar=no,width=300,height=240");
	}
</script>

<!-- 한정원 : 수정 추가 -->
<c:if test="${uid == ruid}">
[<a href="sns_control.jsp?action=delreply&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">삭제</a>] 
[<a href="sns_control.jsp?action=updatereply&rid=${rid}&curmsg=${curmsg}&cnt=${cnt}&suid=${suid}">수정</a>] 
<li><a href="javascript:newuser()">New User</a></li>
</c:if>