<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ page import="com.groupware.userbackend.services.MessageTable"%>
<%@ page import="org.json.JSONObject" %>

<%
  request.setCharacterEncoding("UTF-8");

  MessageTable messageTable = new MessageTable();

  String fromIp = request.getRemoteAddr();
  System.out.println(fromIp);

  String json = request.getParameter("json");

  String result = messageTable.SearchMessage(json);
  JSONObject jsonObject = new JSONObject(result);

  System.out.println(result);
  out.print(jsonObject.toString());
%>