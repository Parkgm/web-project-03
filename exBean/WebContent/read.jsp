<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import = "java.util.*" %>
<%@ page import = "exBean.studentVO" %>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<jsp:useBean id="item" scope="page" class="exBean.studentVO"/>  <!-- useBean 액션태그 사용 -->
<jsp:useBean id="dao" scope="page" class="exBean.studentDAO"/>  <!-- useBean 액션태그 사용 -->
<%
 request.setCharacterEncoding("UTF-8");
 List<studentVO> items = new ArrayList<studentVO>();
 items = dao.selectStudent();
%>

<body>
<%
 for(int i=0;i<items.size();i++) {
  item = items.get(i);
%>

  <%=item.getNo()%>
  <%=item.getName()%><BR>

 <%}%>

</body>
</html>