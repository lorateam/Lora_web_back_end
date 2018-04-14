<%@page contentType="text/html; UTF-8" pageEncoding="utf-8" language="java" %>

<head>
    <title>Minimal 1.0 - Dashboard</title>
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta charset="UTF-8"/>
    <%@include file="WEB-INF/frame_jsp/frame_head_css.jsp"%>
</head>

<body>
<div id="wrap">
    <!-- Make page fluid -->
    <div class="row">
        <!-- Page content -->
        <div id="content" class="col-md-12">
            <div class="main">
                <div class="row">
                    <div class="col-lg-8 col-md-12">
                        <%@include file="WEB-INF/frame_jsp/frame_statiscChart.jsp"%>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

        <%@include file="WEB-INF/frame_jsp/frame_foot_js.jsp"%>
</body>