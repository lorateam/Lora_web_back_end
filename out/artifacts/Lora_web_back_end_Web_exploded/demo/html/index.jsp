<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="bean.*,dao.*,org.json.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    //创建javabean
    BoxInfor tmpFire = new BoxInfor();
    tmpFire.setBoxId("0020001");
    //创建BoxInforDAO连接数据库进行判断
    BoxInforDAO boxInforDAO = new BoxInforDAO();
    int result;
    result = boxInforDAO.getFireInfor(tmpFire);
    response.setContentType("text/html;charset=UTF-8");
    JSONObject jsonObject = new JSONObject();
    jsonObject.put("fireConfition",result);
    response.getWriter().print(jsonObject);
%>