<%--
  Created by IntelliJ IDEA.
  User: ligw
  Date: 2017/6/6
  Time: 1:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%--引入页面变量配置--%>
<%@include file="/page/common/jsp/base.jsp" %>
<html>
<head>
    <%--引入基础设置--%>
    <%@include file="/page/common/jsp/baseInclude.jsp" %>
    <title>登录</title>
    <script type="text/javascript">
        $(function () {

        });

        //初始化页面
        $(document).ready(function () {

        });
    </script>
    <!-- 用户中心部分通用css -->
    <link rel="stylesheet" type="text/css" href="${path}/page/client/account/css/account.css">
    <link href="${path}/page/assets/css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
    <!-- 注册页面js -->
    <script type="text/javascript" src="${path}/page/client/account/js/register.js" charset="utf8"></script>
    <script type="text/javascript" src="${path}/page/assets/js/bootstrap-datetimepicker.min.js" charset="UTF-8"></script>
    <script type="text/javascript" src="${path}/page/assets/js/bootstrap-datetimepicker.zh-CN.js" charset="UTF-8"></script>
    <style>
        .row {
            margin: 0;
        }

        .col-lg-1, .col-lg-10, .col-lg-11, .col-lg-12, .col-lg-2, .col-lg-3, .col-lg-4, .col-lg-5, .col-lg-6, .col-lg-7, .col-lg-8, .col-lg-9, .col-md-1, .col-md-10, .col-md-11, .col-md-12, .col-md-2, .col-md-3, .col-md-4, .col-md-5, .col-md-6, .col-md-7, .col-md-8, .col-md-9, .col-sm-1, .col-sm-10, .col-sm-11, .col-sm-12, .col-sm-2, .col-sm-3, .col-sm-4, .col-sm-5, .col-sm-6, .col-sm-7, .col-sm-8, .col-sm-9, .col-xs-1, .col-xs-10, .col-xs-11, .col-xs-12, .col-xs-2, .col-xs-3, .col-xs-4, .col-xs-5, .col-xs-6, .col-xs-7, .col-xs-8, .col-xs-9 {
            padding: 0;
        }

    </style>
</head>
<body>

<div class="top szwhite">
    <center><h1>注册</h1>
        <p>
            精彩瞬间、即刻分享
        </p>
    </center>
</div>


<!--content 内容区-->
<div class="container content">
    <form>
        <div class="row">

            <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 ">

                <div class="registerpanel ">
                    <div class="inputmsg">
                        <span class="glyphicon glyphicon-phone szwhite pull-left"></span>
                        <input type="text" id="phoneNum" class="pull-left " name="username" placeholder="手机号码" required
                               autofocus>
                        <!--<span class="pull-left glyphicon glyphicon-remove" style="position:absolute;top:10px;left:10px;z-index:10"></span>-->
                    </div>
                    <div class="inputmsg">
                        <span class="glyphicon glyphicon-object-align-vertical pull-left szwhite"></span>
                        <div class="clearfix validate  ">
                            <input type="text " class="pull-left " id="email" name="validateCode" placeholder="验证码">
                            <button id="sendValidateCode" class="pull-right" value="发送验证码">发送验证码</button>
                        </div>


                    </div>
                    <div class="inputmsg ">
                        <span class="glyphicon glyphicon-lamp pull-left szwhite"></span>
                        <input type="text" id="username" class="pull-left " name="username" placeholder="用户名">

                    </div>
                    <div class="inputmsg ">
                        <span class="glyphicon glyphicon-lock pull-left szwhite"></span>
                        <input type="text" class="pull-left " id="email" name="username" placeholder="密码">

                    </div>
                    <div class="inputmsg ">
                        <span class="glyphicon glyphicon-lock pull-left szwhite"></span>
                        <input type="text" class="pull-left " id="email" name="username" placeholder="确认密码">

                    </div>
                </div>

                <div class="linespace"></div>
                <div class="linespace"></div>

                <div class="registerpanel section-2">
                    <div class="inputmsg ">
                        <span class="glyphicon glyphicon-paperclip szwhite pull-left"></span>
                        <select class="pull-left">
                            <option value="男性">男性</option>
                            <option value="女性">女性</option>
                            <option value="未知">未知</option>

                        </select>
                        <br>
                    </div>
                    <div class="form-group sec2">

                        <div class="input-group date form_datetime" data-date="1979-09-16T05:25:07Z"
                             data-date-format="dd MM yyyy - HH:ii p" data-link-field="dtp_input1">
                            <span class="input-group-addon"><span class="glyphicon glyphicon-th szwhite"></span></span>
                            <input class="form-control" style="	background: rgba(255, 255, 255, 0.0);box-shadow: none;
" size="16" type="text" value="出生日期" readonly>

                        </div>
                        <input type="hidden" id="dtp_input1" value=""/><br/>
                    </div>
                </div>
            </div>
        </div>
        <div class="linespace"></div>
        <div class="linespace"></div>

        <div class="col-xs-12 col-sm-6 col-sm-offset-3 col-md-4 col-md-offset-4 ">

            <div class="row submitBtn">
                <input type="submit" id="regBtn" name="password" placeholder="Password" value="注册">
            </div>
        </div>
    </form>
</div>


<div class="bottom footer szwhite">
    <div class="row">
        <div class="col-sm-12">
            <center> &copy; Bootstrap Login Form Templates by <a href="http://azmind.com" target="_blank">Azmind</a>.
            </center>
        </div>
    </div>
</div>

<script type="text/javascript">
    $('.form_datetime').datetimepicker({
        language: 'zh-CN',
        weekStart: 1,
        todayBtn: 1,
        autoclose: 1,
        todayHighlight: 1,
        startView: 2,
        forceParse: 0,
        showMeridian: 1
    });

    $(document).ready(function () {

        function listenPhoneNum() {
            var reg = /^(((13[0-9]{1})|(14[0-9]{1})|(17[0-9]{1})|(15[0-3]{1})|(15[5-9]{1})|(18[0-9]{1}))+\d{8})$/;

            if (!reg.test($("#phoneNum").val())) {

                $("#phoneNum").val("请输入正确的手机号码!");
                $("#phoneNum").css("color", "red");
                return false;
            } else {

                $("#phoneNum").css("color", "#fff");
                return true;
            }
        }

        $("#phoneNum").change(function () {
            listenPhoneNum();
        });

        $("#username").change(function () {
            var reg = /^[a-zA-z]\w{3,15}$/;
            if (!reg.test($("#username").val())) {
                $("#username").val("请输入6-22位数字字母组合用户名!");
                $("#username").css("color", "red");
                return false;
            } else {
                $("#username").css("color", "#fff");
                return true;
            }
        });

        $("#password").change(function () {
            var reg = /^[a-zA-z]\w{3,15}$/;
            if (!reg.test($("#password").val())) {
                $("#password").val("请输入6-22位数字字母组合!");
                $("#password").css("color", "red");
                return false;
            } else {
                $("#password").css("color", "#fff");
                return true;
            }
        });

        $("#sendValidateCode").click(function () {

            if (!listenPhoneNum()) {
                return false;
            }


            var countdown = 60;
            var _this = $(this);
            $("#sendValidateCode").attr("disabled", "true");
            $("#sendValidateCode").text(countdown + "秒后重发");
            $("#phoneNum").attr("disabled", "true");

            var timer = setInterval(function () {

                if (countdown - 0 > 1) {
                    --countdown;
                    $("#sendValidateCode").text(countdown + "秒后重新获取");
                } else {

                    clearInterval(timer);
                    $("#sendValidateCode").removeAttr("disabled");
                    $("#phoneNum").removeAttr("disabled");

                    $("#sendValidateCode").text("重新发送验证码");
                }
            }, 1000);
        });

        $('#regBtn').click(function () {
            window.location.href = "${path}/client/account?action=login";
        });

    });

</script>
</body>
</html>