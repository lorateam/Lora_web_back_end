<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
<head>
    <meta charset="UTF-8">
    <title>Lora设备监控</title>
    <meta content='width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no' name='viewport'>
    <%@include file="WEB-INF/frame_jsp/frame_css_head.jsp"%>
        <!--隐藏日历内部元素-->
    <style>
        div.fc-event-container{
            visibility: hidden;
        }
    </style>
</head>

<body class="skin-blue">
<%@include file="WEB-INF/frame_jsp/frame_header.jsp"%>
<div class="wrapper row-offcanvas row-offcanvas-left">
    <!-- Left side column. contains the logo and sidebar 左边菜单栏-->
    <%@include file="WEB-INF/frame_jsp/frame_sidebar.jsp"%>

    <!-- Right side column. Contains the navbar and content of the page 右边内容-->
    <aside class="right-side">
        <!--右边分节栏-->
        <%@include file="WEB-INF/frame_jsp/frame_content_header.jsp"%>
        <section class="content">
            <!-- Main row右边一排 -->
            <div class="row">
                <!-- Left col右边第一列 -->
                <section class="col-lg-6 connectedSortable">
                    <%@include file="WEB-INF/frame_jsp/frame_calendor.jsp"%>
                    <%@include file="demo/html/frame_index.jsp"%>
                </section>
                <!-- Right col 右边内容第二列-->
                <section class="col-lg-6 connectedSortable">
                    <%@include file="WEB-INF/frame_jsp/frame_quxian.jsp"%>
                    <%@include file="WEB-INF/frame_jsp/frame_todolist.jsp"%>
                </section>
            </div>
        </section>
        <%@include file="WEB-INF/frame_jsp/frame_smallbox.jsp"%>
    </aside>
</div>
    <%@include file="WEB-INF/frame_jsp/frame_js_foot.jsp"%>

</body>