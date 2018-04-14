<script type="text/javascript" src="https://webapi.amap.com/maps?v=1.4.2&key=1253c2034894d4655a95e8701317a660"></script>
    <script type="text/javascript">
//初始化地图对象，加载地图
var map = new AMap.Map("mapContainer", {
    pitch:60,
    rotation:150,
    resizeEnable: true,
    zoom: 13,
    viewMode:'3D'
});
//设计坐标
var lnglats=[
    [103.993783,30.55347],
    [103.994045,30.553724]
];
for(var i= 0,marker;i<lnglats.length;i++){
    var marker=new AMap.Marker({
        position:lnglats[i],
        map:map
    });
    //覆盖事件click代表点击，makerclick传入此maker对象
    marker.on('click',openInfo);
}
//点击函数
//初始化信息窗体中的内容
function openInfo(e) {
    var info = [];
    info.push("<div><div style=\"padding:0px 0px 0px 4px;\"><b>开源硬件协会</b>");
    info.push("温度：21度 空气：优");
    info.push("有无火灾：无</div></div>");
    infoWindow = new AMap.InfoWindow({
        content: info.join("<br/>"),  //使用默认信息窗体框样式，显示信息内容.</br>是为了使每一次push的文字分开
        offset:new AMap.Pixel(0,-30) //设置弹出窗口离marker的距离
    });
    infoWindow.open(map, e.target.getPosition());
}
map.setFitView();
</script>
<script type="text/javascript" src="https://webapi.amap.com/demos/js/liteToolbar.js"></script>