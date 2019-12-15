<!DOCTYPE html>
<html>
<html lang="ZH-cn">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
    <meta http-equiv="X-UA-Compatible" content="chrome=1,IE=edge">
    <meta name="renderer" content="webkit">
    <title>协同办公系统-登录界面</title>
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css"/>
    <link rel="stylesheet" type="text/css" href="/css/login.css">
    <script type="text/javascript" src="/js/jquery-3.2.1.js"></script>
    <script type="text/javascript">


        function checkPass(s, _minLength) {
            if (_minLength == undefined || _minLength == null) {
                _minLength = 6;
            }
            if (s.length < _minLength) {
                return 0;
            }
            var ls = 0;
            if (s.match(/([a-z])+/)) {
                ls++;
            }
            if (s.match(/([0-9])+/)) {
                ls++;
            }
            if (s.match(/([A-Z])+/)) {
                ls++;
            }
            if (s.match(/[^a-zA-Z0-9]+/)) {
                ls++;
            }

            return ls
        }

    </script>
</head>

<body>
<div class="kit-login">
    <div class="kit-login-bg"></div>
    <div class="kit-login-wapper">
        <div class="kit-login-slogan">
        </div>
        <div class="kit-login-form">
            <h4 class="kit-login-title" style="font-size:23px">登录</h4>
            <form class="layui-form" id="loginForm" action="/login" method="post">
                <input type="hidden" name="j_username">
                <input type="hidden" name="j_password">
                <div class="kit-login-row">
                    <div class="kit-login-col">
                        <i class="layui-icon">&#xe612;</i>
                        <span class="kit-login-input">
								<input type="text" class="securityCls" name="j_username_encrypt" id="j_username"
                                       lay-verify="required" placeholder="用户名" autocomplete="off"
                                       autofocus="autofocus"/>
							</span>
                    </div>
                    <div class="kit-login-col"></div>
                </div>
                <div class="kit-login-row">
                    <div class="kit-login-col">
                        <i class="layui-icon">&#xe64c;</i> <span class="kit-login-input">
								<input type="password" class="securityCls" name="j_password_encrypt" id="j_password"
                                       autocomplete="off" lay-verify="required" placeholder="密码"/>
							</span>
                    </div>
                    <div class="kit-login-col"></div>
                </div>
                <div class="kit-login-row" style="flex-direction: row;">
                    <div class="kit-login-col-inline" style="width: 220px;">
                        <i class="layui-icon">&#xe679;</i>
                        <span class="kit-login-input">
								<input type="text" id="j_image_code" name="j_image_code" autocomplete="off"
                                       lay-verify="required" placeholder="请输入验证码"/>
							</span>
                    </div>
                    <div class="kit-login-col-inline img-code">
                        <img id="safeCodeImg" onclick="reloadVerifyCode();" src="/google.jpg"
                             title="点击刷新验证码" alt="点击刷新验证码">
                    </div>
                </div>
                <div class="kit-login-row" style="margin-bottom: 0;color: #FB0000;font-weight: bold;font-family: 微软雅黑;">
                    <span style="text-align: center">${note}</span>
                </div>
                <div class="kit-login-row" style="flex-direction: row;">
                    <div class="kit-login-col-inline" style="width: 200px;">
                        <button class="layui-btn kit-login-btn" id="submitBt" lay-submit="submit"
                                lay-filter="login_hash">登录
                        </button>
                    </div>
                </div>

            </form>
        </div>
    </div>
</div>

<script src="/layui/layui.js"></script>
<script type="text/javascript">
    layui.use(['layer', 'form'], function () {
        var form = layui.form;

        var tempdata = layui.data('tempdata');
        if (tempdata && tempdata.data1) {
            $("#j_username").val(tempdata.data1);
        }

    });

    function reloadVerifyCode() {
        var timenow = new Date().getTime();
        $("#safeCodeImg").attr("src","google.jpg?a=" + timenow);
    }
</script>
</body>

</html>