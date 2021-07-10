<%@ page import="java.io.BufferedReader" %>
<%@ page import="java.net.URLDecoder" %>
<%@ page import="com.fasterxml.jackson.databind.ObjectMapper" %>
<%@ page import="com.fasterxml.jackson.databind.JsonNode" %>
<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%
    //JSON取得処理
    request.setCharacterEncoding( "UTF-8" );
    BufferedReader br = new BufferedReader( request.getReader() );
    String json = br.readLine();
    System.out.println(json);

    //null処理
    if(json == null){
        json = "{ \"header\" : \"0000\", \"result\" : \"{\"resultcode\":\"9999\",\"message\":\"null\"}\",\"body\" : {\"request\":\"null\", \"response\":\"null\"} }";
        //json = "{ 'header' : '{'resultcode':'9999','message':'null'}','body' : {'request':'null', 'response':'null'} }";
    }
    //json = URLDecoder.decode( json, "UTF-8" );

    ObjectMapper mapper = new ObjectMapper();
    JsonNode node = mapper.readTree(json);
    String headerNode = node.path("header").asText();
    JsonNode requestNode = node.findPath("request");


    //System.out.println(node.toString());
    System.out.println(headerNode);
    System.out.println(requestNode.toString());
    //String responsejson =

    //バック情報
    String fromIp = request.getRemoteAddr();
    System.out.println(fromIp);

    //JSON処理


    //DB処理


    //出力JSON作成


    //出力処理
    out.println(json);
%>