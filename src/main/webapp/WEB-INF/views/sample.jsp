<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>

<%@ page import="com.groupware.userbackend.services.MessageTable"%>
<%@ page import="org.json.JSONObject" %>

<%
    request.setCharacterEncoding("UTF-8");

    String fromIp = request.getHeader("X-Forwarded-For");
    if (fromIp == null || fromIp.length() == 0 || "unknown".equalsIgnoreCase(fromIp)) {
        fromIp = request.getHeader("Proxy-Client-IP");
    }
    if (fromIp == null || fromIp.length() == 0 || "unknown".equalsIgnoreCase(fromIp)) {
        fromIp = request.getHeader("WL-Proxy-Client-IP");
    }
    if (fromIp == null || fromIp.length() == 0 || "unknown".equalsIgnoreCase(fromIp)) {
        fromIp = request.getHeader("HTTP_CLIENT_IP");
    }
    if (fromIp == null || fromIp.length() == 0 || "unknown".equalsIgnoreCase(fromIp)) {
        fromIp = request.getHeader("HTTP_X_FORWARDED_FOR");
    }
    if (fromIp == null || fromIp.length() == 0 || "unknown".equalsIgnoreCase(fromIp)) {
        fromIp = request.getRemoteAddr();
    }

    MessageTable messageTable = new MessageTable();
    //サンプル検索
    String json = "{\"header\" : {\"id\":\"u_s_0001\",\"code\":\"\",\"message\":\"\"}, \"request\" : {\"userid\": \"testuser\"},\"response\" : {}}";
    String result = messageTable.SearchMessage(json,fromIp);
    JSONObject jsonObject = new JSONObject(result);

    //System.out.println(result);
    out.print(jsonObject.toString());
%>