<%--
  Created by IntelliJ IDEA.
  User: Bolvvv
  Date: 2018/4/14
  Time: 21:51
  To change this template use File | Settings | File Templates.
--%>
<%@page contentType="text/html; UTF-8" pageEncoding="UTF-8" language="java" %>
<script src="../../demo/js/jquery-3.3.1.js"></script>
<script>
    //初始化地图对象，加载地图
    var map = new AMap.Map("mapContainer", {
        pitch:60,
        rotation:150,
        resizeEnable: true,
        expandZoomRange:true,
        //设置缩放区间
        zooms: [19,20],
        viewMode:'3D'
    });
    //设计坐标格式

    //创意工坊
    var GongFangAddress = [103.993426,30.553272];
    var GongFang=new AMap.Marker({
        position: GongFangAddress,
        map: map
    });
    GongFang.on('click',openInfoGongFang);//覆盖事件click代表点击，makerclick传入此maker对象
    function openInfoGongFang(e) {
        var current;
        var temp;
        var hum;
        var lum;
        $.post("indexBack.jsp",function(data){
            //获取后台信息
            var json = JSON.parse(data);
            temp = json[0].temp;
            hum = json[0].hum;
            lum = json[0].lum;
            current = json[3].current;
            var computerStatus;
            if(temp>0.1) computerStatus = 1;
            else computerStatus = 0;
            //设置小格子的信息
            $("#temp").html(temp+"°");
            $("#hum").html(hum+" %");
            $("#lum").html(lum+" Lux");
            //向窗口中添加信息
            var info = [];
            info.push("<div><div style=\"padding:0px 0px 0px 4px;\"><b>创意工坊</b>");
            info.push("电脑使用台数"+computerStatus+"台")
            info.push("温度："+temp);
            info.push("湿度："+hum);
            info.push(" 光照强度："+lum);
            info.push("有无火灾：无</div></div>");
            infoWindow = new AMap.InfoWindow({
                content: info.join("<br/>"),  //使用默认信息窗体框样式，显示信息内容.</br>是为了使每一次push的文字分开
                offset:new AMap.Pixel(0,-30) //设置弹出窗口离marker的距离
            });
            infoWindow.open(map, e.target.getPosition());
        });
    }

    //演播厅
    var YanBoTingAddress = [103.994263,30.553734];
    var YanBoTing=new AMap.Marker({
        position: YanBoTingAddress,
        map: map
    });
    YanBoTing.on('click',openInfoYanBoTing);
    function openInfoYanBoTing(e) {
        var info = [];
        info.push("<div><div style=\"padding:0px 0px 0px 4px;\"><b>I创街演播厅</b>");
        info.push("温度：21度 空气：优");
        info.push("有无火灾：无</div></div>");
        infoWindow = new AMap.InfoWindow({
            content: info.join("<br/>"),  //使用默认信息窗体框样式，显示信息内容.</br>是为了使每一次push的文字分开
            offset:new AMap.Pixel(0,-30) //设置弹出窗口离marker的距离
        });
        infoWindow.open(map, e.target.getPosition());
    }

    //办公室
    var BanGongShiAddress = [103.994509,30.553804];
    var BanGongShi=new AMap.Marker({
        position: BanGongShiAddress,
        map: map
    });
    BanGongShi.on('click',openInfoBanGongShi);
    function openInfoBanGongShi(e) {
        var temp;
        var hum;
        var lum;
        $.post("indexBack.jsp",function(data){
            //获取数据
            var json = JSON.parse(data);
            temp = json[0].temp;
            hum = json[0].hum;
            lum = json[0].lum;
            //设置小格子信息
            //设置小格子的信息
            $("#temp").html(temp+"°");
            $("#hum").html(hum+" %");
            $("#lum").html(lum+" Lux");
            //设置窗口数据
            var info = [];
            info.push("<div><div style=\"padding:0px 0px 0px 4px;\"><b>I创街办公室</b>");
            info.push("温度："+temp+"度")
            info.push("湿度："+hum);
            info.push(" 光照强度："+lum);
            info.push("有无火灾：无</div></div>");
            infoWindow = new AMap.InfoWindow({
                content: info.join("<br/>"),  //使用默认信息窗体框样式，显示信息内容.</br>是为了使每一次push的文字分开
                offset:new AMap.Pixel(0,-30) //设置弹出窗口离marker的距离
            });
            infoWindow.open(map, e.target.getPosition());
        });
    }

    //开源硬件协会
    var MakerAddress = [103.993753,30.553332];
    var Maker=new AMap.Marker({
            position: MakerAddress,
            map: map
        });
    Maker.on('click',openInfoMaker);
    function openInfoMaker(e) {
        var temp;
        var hum;
        var lum;
        $.post("indexBack.jsp",function(data){
            //获取信息
            var json = JSON.parse(data);
            temp = json[1].temp;
            hum = json[1].hum;
            lum = json[1].lum;
            //设置小格子信息
            //设置小格子的信息
            $("#temp").html(temp+"°");
            $("#hum").html(hum+" %");
            $("#lum").html(lum+" Lux");
            //设置窗口信息
            var info = [];
            info.push("<div><div style=\"padding:0px 0px 0px 4px;\"><b>开源硬件协会</b>");
            info.push("温度："+temp+"度")
            info.push("湿度："+hum);
            info.push(" 光照强度："+lum);
            info.push("有无火灾：无</div></div>");
            infoWindow = new AMap.InfoWindow({
                content: info.join("<br/>"),  //使用默认信息窗体框样式，显示信息内容.</br>是为了使每一次push的文字分开
                offset:new AMap.Pixel(0,-30) //设置弹出窗口离marker的距离
            });
            infoWindow.open(map, e.target.getPosition());
        });
    }
    map.setFitView();
</script>