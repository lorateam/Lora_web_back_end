<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="utf-8" %>
<%@ page import="bean.*,dao.*,org.json.*" %>
<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    /*创建盒子信息，这里本来应该用数据库来进行内容设定的，但因为疏忽暂时先写死代码*/
    Box b_0010001 = new Box("0010001", "温湿度、光照度采集", "i创办公室", "b_001");
    Box b_0010002 = new Box("0010002", "温湿度、光照度采集", "开源硬件协会", "b_001");
    Box b_0020001 = new Box("0020001", "火焰检测", "i创演播厅", "b_002");
    Box b_0050001 = new Box("0050001", "设备使用数据采集", "创意工坊", "b_005");
    Box b_0050002 = new Box("0050002", "设备使用数据采集", "创意工坊", "b_005");
    /*创建盒子数据bean*/
    BoxInfor bean_0010001 = new BoxInfor();
    BoxInfor bean_0010002 = new BoxInfor();
    BoxInfor bean_0020001 = new BoxInfor();
    BoxInfor bean_0050001 = new BoxInfor();
    BoxInfor bean_0050002 = new BoxInfor();
    /*创建BoxInforDAO对象，存取数据到bean里*/
    BoxInfor tmp1 = new BoxInforDAO().getBoxInfor001000x(b_0010001,bean_0010001);
    new BoxInforDAO().getBoxInfor001000x(b_0010002, bean_0010002);
    new BoxInforDAO().getBoxInfor002000x(b_0020001, bean_0020001);
    new BoxInforDAO().getBoxInfor005000x(b_0050001, bean_0050001);
    new BoxInforDAO().getBoxInfor005000x(b_0050002, bean_0050002);
/*    *//*设置返回文本格式*//*
    response.setContentType("text/html;charset=UTF-8");
    *//*使用数组存储盒子对象*//*
    List<BoxInfor> list = new ArrayList<BoxInfor>();
    list.add(bean_0010001);
    list.add(bean_0010002);
    list.add(bean_0020001);
    list.add(bean_0050001);
    list.add(bean_0050002);
    *//*将list存储在json中*//*
    JSONArray jsonArray = new JSONArray();
    jsonArray.put(list);*/
    out.print(tmp1.getHum());
/*    //创建盒子对象
    Box b_001 = new Box();
    Box b_002 = new Box();
    b_001.setTableName("b_001");
    b_002.setTableName("b_002");
    //创建判断fire情况的javabean
    BoxInfor tmpFire = new BoxInfor();
    tmpFire.setBoxId("0020001");
    //创建温度、湿度、光照强度情况的两个javabean,分别对应两个盒子
    BoxInfor tmpTemp1 = new BoxInfor();
    BoxInfor tmpTemp2 = new BoxInfor();
    tmpTemp1.setBoxId("0010001");
    tmpTemp2.setBoxId("0010002");
    //创建BoxInforDAO连接数据库进行判断
    BoxInforDAO boxInforDAO = new BoxInforDAO();
    int result;
    result = boxInforDAO.getFireInfor(b_002,tmpFire);
    response.setContentType("text/html;charset=UTF-8");
    JSONObject jsonObject = new JSONObject();
    jsonObject.put("fireConfition",result);
    response.getWriter().print(jsonObject);*/
%>