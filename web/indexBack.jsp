<%@ page contentType="text/html; UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ page import="bean.*,dao.*,org.json.*" %>
<%@ page trimDirectiveWhitespaces="true" %>
<%
    /*创建盒子信息，这里本来应该用数据库来进行内容设定的，但因为疏忽暂时先写死代码*/
    Box b_0010001 = new Box("0010001", "温湿度、光照度采集", "办公室", "b_001");
    Box b_0010002 = new Box("0010002", "温湿度、光照度采集", "开源硬件协会", "b_001");
    Box b_0020001 = new Box("0020001", "火焰检测", "i创演播厅", "b_002");
    Box b_0050001 = new Box("0050001", "设备使用数据采集", "创意工坊", "b_005");
    //Box b_0050002 = new Box("0050002", "设备使用数据采集", "创意工坊", "b_005");
    /*创建盒子数据bean*/
    BoxInfor bean_0010001 = new BoxInfor();
    BoxInfor bean_0010002 = new BoxInfor();
    BoxInfor bean_0020001 = new BoxInfor();
    BoxInfor bean_0050001 = new BoxInfor();
    //BoxInfor bean_0050002 = new BoxInfor();
    /*创建BoxInforDAO对象，存取数据到bean里*/
    BoxInfor tmpBean0010001 = new BoxInforDAO().getBoxInfor001000x(b_0010001,bean_0010001);
    BoxInfor tmpBean0010002 = new BoxInforDAO().getBoxInfor001000x(b_0010002, bean_0010002);
    BoxInfor tmpBean0020001 = new BoxInforDAO().getBoxInfor002000x(b_0020001, bean_0020001);
    BoxInfor tmpBean0050001 = new BoxInforDAO().getBoxInfor005000x(b_0050001, bean_0050001);
    //BoxInfor tmpBean0050002 = new BoxInforDAO().getBoxInfor005000x(b_0050002, bean_0050002);
    /*设置返回文本格式*/
    response.setContentType("text/html;charset=UTF-8");
    /*将数据存储在jsonObject中*/
    try{
        JSONObject json_0010001 = new JSONObject();
        json_0010001.put("temp",String.valueOf(tmpBean0010001.getTemp()));//转换为String是因为json在处理float时会造成精度丢失，会在原来的基础上添加很多小数位
        json_0010001.put("hum", String.valueOf(tmpBean0010001.getHum()));
        json_0010001.put("lum", tmpBean0010001.getLum());
        JSONObject json_0010002 = new JSONObject();
        json_0010002.put("temp",String.valueOf(tmpBean0010002.getTemp()));//转换为String是因为json在处理float时会造成精度丢失，会在原来的基础上添加很多小数位
        json_0010002.put("hum", String.valueOf(tmpBean0010002.getHum()));
        json_0010002.put("lum", tmpBean0010002.getLum());
        JSONObject json_0020001 = new JSONObject();
        json_0020001.put("fire", tmpBean0020001.getFire());
        JSONObject json_0050001 = new JSONObject();
        json_0050001.put("current", String.valueOf(tmpBean0050001.getCurrent()));
        JSONArray jsonArray = new JSONArray();
        jsonArray.put(json_0010001);
        jsonArray.put(json_0010002);
        jsonArray.put(json_0020001);
        jsonArray.put(json_0050001);
        out.print(jsonArray);
    }catch (JSONException e){
        e.printStackTrace();
    }
/*    out.print(json_0010001);
    out.print(json_0010002);
    out.print(json_0020001);
    out.print(json_0050001);*/
%>