<%--
  Created by IntelliJ IDEA.
  User: Bolvvv
  Date: 2018/4/14
  Time: 21:53
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!doctype html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no, width=device-width">
    <title>环境监测</title>
    <link rel="stylesheet" href="https://cache.amap.com/lbs/static/main.css"/>
    <link rel="stylesheet" href="../css/index.css">
    <script type="text/javascript"
            src="https://webapi.amap.com/maps?v=1.4.2&key=1253c2034894d4655a95e8701317a660"></script>
    <script type="text/javascript" src="../js/connectBackAndFront.js"></script>
    <script type="text/javascript" src="../js/jquery-3.3.1.js"></script>
</head>
<body>
<div id="mapContainer"></div>
<div id="showInformation">
</div>
</body>
</html>
<%--引入地图js--%>
<%@include file="/demo/jsp/map.jsp"%>
