<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="bean.*,dao.*,org.json.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    //创建盒子对象
    Box b_001 = new Box();
    Box b_002 = new Box();
    b_001.setTableName("b_001");
    b_002.setTableName("b_002");
    //创建判断fire情况的javabean
    BoxInfor tmpFire = new BoxInfor();
    tmpFire.setBoxId("0020001");
    //创建温度情况的javabean
    BoxInfor tmpTemp = new BoxInfor();
    tmpTemp.setBoxId("0020001");
    //创建BoxInforDAO连接数据库进行判断
    BoxInforDAO boxInforDAO = new BoxInforDAO();
    int result;
    result = boxInforDAO.getFireInfor(b_002,tmpFire);
    response.setContentType("text/html;charset=UTF-8");
    JSONObject jsonObject = new JSONObject();
    jsonObject.put("fireConfition",result);
    response.getWriter().print(jsonObject);
%>