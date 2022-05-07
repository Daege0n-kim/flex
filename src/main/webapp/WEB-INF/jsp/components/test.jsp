<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%
  String param = request.getParameter("test1");
%>

<div>
  <div class="card-container <%=param%>">
    asd
  </div>
</div>