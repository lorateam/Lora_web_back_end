<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
<!--
如果要修改元素内容，直接找到include的文件进行修改，注意div.class布局
-->
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
                    <!--这个地图是嵌在日历表面的，include的日历不要删，删了的话地图就不能显示了-->
                    <%@include file="WEB-INF/frame_jsp/frame_calendor.jsp"%>
                    <%@include file="WEB-INF/frame_jsp/frame_index.jsp"%>
                </section>
                <!-- Right col 右边内容第二列-->
                <section class="col-lg-6 connectedSortable">
                    <%@include file="WEB-INF/frame_jsp/frame_todolist.jsp"%>
                    <%@include file="WEB-INF/frame_jsp/frame_linechart.jsp"%>
                </section>
            </div>
        </section>
        <%@include file="WEB-INF/frame_jsp/frame_smallbox.jsp"%>
    </aside>
</div>
<%@include file="WEB-INF/frame_jsp/frame_js_foot.jsp"%>
</body>
<script>
    setInterval(function(){
        askForInformation();//向服务器请求数据
    },3000);
    function askForInformation() {
        $.post("indexBack.jsp", function (data) {
            var json = JSON.parse(data);
            var fire = json[2].fire;
            //这里返回的是字符串的true
            if (fire === 1) {
                alert("发生火灾了!");
            }
        })
    }
</script>