<%--
  Created by IntelliJ IDEA.
  User: ligw
  Date: 2017/6/6
  Time: 2:02
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入页面变量配置--%>
<%@include file="/page/common/jsp/base.jsp" %>
<html>
<head>
    <%--引入基础设置--%>
    <%@include file="/page/common/jsp/baseInclude.jsp" %>
    <title>首页</title>
    <script type="text/javascript">
        $(function () {

        });

        //初始化页面
        $(document).ready(function () {

        });
    </script>
    <!-- 本部分通用css -->
        <link rel="stylesheet" type="text/css" href="${path}/page/client/home/css/home.css">
    <!-- 本页面自定义js -->
        <script type="text/javascript" src="${path}/page/common/js/layer/layer.js" charset="utf8"></script>
        <script type="text/javascript" src="${path}/page/client/home/js/index.js" charset="utf8"></script>
</head>
<body>

<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
    <div class="container-fluid">
        <div class="navbar-header ">
            <button type="button" class="navbar-toggle " data-toggle="collapse"
                    data-target="#example-navbar-collapse">
                <span class="sr-only">切换导航</span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
                <span class="icon-bar"></span>
            </button>
            <a class="navbar-brand" href="#">首页</a>
        </div>
        <div class="collapse navbar-collapse" id="example-navbar-collapse">
            <ul class="nav navbar-nav">
                <li><a href="${path}/client/home?action=personal">个人中心</a></li>

            </ul>
        </div>
    </div>
</nav>

<!--网关列表-->
<section id="gateway-list" class="container">
    <div class="row">
        <%--
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3  " >
            <div id="gateway_list-item00" class="list-item">
                <div class="close"><img src="${path}/page/common/img/close.png"></div>
                <div class="list-item-content">
                    <div class="list-item-top ">
                        <h3> <span class="glyphicon glyphicon-object-align-vertical szblue"></span> <span>网关：望海角------7号之蓝</span></h3>
                    </div>
                    <div class="list-item-bottom">
                        <ul class=" ">
                            <li><span class="glyphicon glyphicon-send"></span><a  href="#">在线：05</a> </li>
                            <li><span class="glyphicon glyphicon-adjust"></span><a  href="#">状态：未开启</a> </li>
                            <li><span class="glyphicon glyphicon-alert"></span><a  href="#">设备：10</a> </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>
        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3  " onclick="">
            <div id="gateway_list-item11" class="list-item">
                <div class="close"><img src="${path}/page/common/img/close.png"></div>
                <div class="list-item-content">
                    <div class="list-item-top ">
                        <h3> <span class="glyphicon glyphicon-object-align-vertical szblue"></span> <span>网关：望海角------7号之蓝</span></h3>
                    </div>
                    <div class="list-item-bottom">
                        <ul class=" ">
                            <li><span class="glyphicon glyphicon-send"></span><a  href="#">在线：05</a> </li>
                            <li><span class="glyphicon glyphicon-adjust"></span><a  href="#">状态：未开启</a> </li>
                            <li><span class="glyphicon glyphicon-alert"></span><a  href="#">设备：10</a> </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6 col-md-4 col-lg-3  "  >
            <div id="gateway_list-item22" class="list-item">
                <div class="close"><img src="${path}/page/common/img/close.png"></div>
                <div class="list-item-content">
                    <div class="list-item-top ">
                        <h3> <span class="glyphicon glyphicon-object-align-vertical szblue"></span> <span>网关：望海角------7号之蓝</span></h3>
                    </div>
                    <div class="list-item-bottom">
                        <ul class=" ">
                            <li><span class="glyphicon glyphicon-send"></span><a  href="#">在线：05</a> </li>
                            <li><span class="glyphicon glyphicon-adjust"></span><a  href="#">状态：未开启</a> </li>
                            <li><span class="glyphicon glyphicon-alert"></span><a  href="#">设备：10</a> </li>
                        </ul>

                    </div>
                </div>
            </div>
        </div>

        <div class="col-xs-12 col-sm-6  col-md-4 col-lg-3  ">
            <div class="list-item-last">
                <button id="add_gateway" ><img src="${path}/page/common/img/add.png"></button>
            </div>
        </div>
--%>
    </div>
</section>

<!--<div class="box">-->
<!--<form role="form">-->
<!--<div class="form-group">-->
<!--<label for="name">网关名称</label>-->
<!--<input type="text" class="form-control" id="name" placeholder="请输入网关名称">-->
<!--</div>-->
<!--<button type="submit" class="btn btn-default">提交</button>-->
<!--</form>-->

<!--</div>-->

<section id="footer">


</section>

<script>
    $(document).ready(function () {

        var userId="<%=session.getAttribute("userId")%>";
        var url = "http://localhost:8080/smarthome/client/home?action=getGatewayListByCustomerId&CustomerId="+userId;
        ajaxRequest(url,"GET",function (flag,msg) {
            alert("msg---"+msg);
            if (flag == true && msg["result"].equals("success")) {
                //请求成功
                var operationResult=msg["operationResult"];
                [].forEach(function (value,index,operationResult) {
                  var divcontent='<div class="col-xs-12 col-sm-6 col-md-4 col-lg-3  " >'+
                    '<div id="gateway_list-item_'+value["id"]+'" class="list-item">'+
                    ' <div id="close_'+value["id"]+'" class="close"><img src="${path}/page/common/img/close.png"></div>'+
                    ' <div class="list-item-content">'+
                    '  <div class="list-item-top ">'+
                    '   <h3> <span class="glyphicon glyphicon-object-align-vertical szblue"></span> <span>'+value["Address"]+'</span></h3>'+
                    ' </div>'+
                    ' <div class="list-item-bottom">'+
                    '  <ul class=" ">'+
                    '  <li><span class="glyphicon glyphicon-send"></span><a  href="#">在线：05</a> </li>'+
                    ' <li><span class="glyphicon glyphicon-adjust"></span><a  href="#">状态：未开启</a> </li>'+
                    '<li><span class="glyphicon glyphicon-alert"></span><a  href="#">设备：10</a> </li>'+
                    '</ul>'+
                    '</div>'+
                    '</div>'+
                    '</div>'+
                    '</div>' ;
                    $("#gateway-list .row").appendChild(divcontent);

                    $("#gateway-list #gateway_list-item_"+value["id"]+" .list-item-content").bind("click",function () {
                        var ids=$(this).parentNode.attr("id");
                        var id=ids.split("_").last();
                        var url = "http://localhost:8080/smarthome/client/home?action=getDeviceListByGatewayId&diviceGatewayId="+id;
                        window.open(url);
                    });

                    $("#gateway-list #close_"+value["id"]).bind("click",function () {
                        var ids=$(this).parentNode.attr("id");
                        var id=ids.split("_").last();
                        var url="http://localhost:8080/smarthome/client/home?action=delGateway&GatewayId="+id;
                        ajaxRequest(url,"GET",function(){
                            if (flag == true && msg["result"].equals("success")) {
                                var pid = $(this).parent("div").attr('id');
                                $("#"+pid).remove();
                            }else{
                                //请求失败
                                layer.alert("删除失败，请稍候重试");
                            }

                            });
                    });

                    });

                var lastItem='<div class="col-xs-12 col-sm-6  col-md-4 col-lg-3  ">'+
                    '<div class="list-item-last">'+
                    '<button id="add_gateway" ><img src="${path}/page/common/img/add.png"></button>'+
                    '</div>'+
                    '</div>';
                $("#gateway-list .row").appendChild(lastItem);


            }else{
                //请求失败
                alert("请求失败");
            }
        });




                var dialog = '<div class="box">'+
            '<form role="form" action="addGateway" method="get">'+
            '<div class="form-group">'+
            '<label for="name">网关名称</label>'+
            '<input type="text" class="form-control" id="name" name="Address" placeholder="请输入网关名称">'+

            '<label for="name">网关IP</label>'+
            '<input type="text" class="form-control" id="name" name="IP" placeholder="请输入网关IP">'+

            '<label for="name">端口</label>'+
            '<input type="text" class="form-control" id="name" name="GatewayPort" placeholder="请输入端口信息">'+
            '</div>'+
            '<div class="form-group">'+
            '</div>'+
            '<button type="submit" class="btn btn-default">提交</button>'+
            '</form>'+
            '</div>';

        layer.config({
            extend:'szskin/style.css',
            skin: 'dialog'
        });


        $("#gateway-list .list-item-last #add_gateway").click(function () {

            layer.open({
                type: 1,
                title: false,
                closeBtn: 1,
                shadeClose: true,
                skin: 'dialog',
                content: dialog
            });
        });

        <%--$("#gateway-list .list-item-content").click(function () {--%>
            <%--window.open('${path}/client/home?action=deviceList','_self');--%>
        <%--});--%>
        $("#gateway-list .close").click(function () {
            var id = $(this).parent("div").attr('id');
            $("#"+id).remove();


        });

        $("#gateway-list .list-item").hover(function () {
            var id = $(this).attr('id');
            $("#gateway-list #"+id+" .close").css("opacity","0.5");
        });

        $("#gateway-list .list-item").mouseleave(function () {
            var id = $(this).attr('id');
            $("#gateway-list #"+id+" .close").css("opacity","0.0");
        });
    });

</script>
</body>
</html>
