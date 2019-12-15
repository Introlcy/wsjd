<!DOCTYPE html >
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>江苏省卫生监督业务系统</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
    <script src="/js/jquery-3.2.1.js" type="text/javascript"></script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; <a href="userid-list.html">登录号管理</a> - 登录号修改</h2></div>
    <div id="saveDiv">

                        <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
                            <form id="institutionCreat" name="institutionCreat" action="/updateuser" method="post">
                                <input value="${user.id}" name="id" type="hidden"/>
                                <tr>
                                    <td align="right"><span class="required">*</span>用户名：</td>
                                    <td align="left"><input name="username" type="text" class="inputTextMiddle" id="username" value="${user.username}"/></td>
                                </tr>
                                <tr>
                                    <td align="right"><span class="required">*</span>密码：</td>
                                    <td align="left"><input name="password" type="text" class="inputTextMiddle" id="password" value="${user.password}"/></td>
                                </tr>
                                <tr>
                                    <td align="right"><span class="required">*</span>真实姓名：</td>
                                    <td align="left"><input name="realname" type="text" class="inputTextMiddle" id="rname" value="${user.realname}"/></td>
                                </tr>
                                <div id="formPageButton">
                                    <ul>
                                        <li><a  title="提交" class="btnShort" onclick="editsubmit()">提交</a></li>
                                        <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                                    </ul>
                                </div>
                            </form>
                        </table>
    </div>
        <!--//commonToolBar-->
    </div>
</div>


<script type="text/javascript">
    function check() {
        var username = $("#username").val();
        var password = $("#password").val();

        if ($.trim(username) == "" || username == null) {
            alert("用户名不能为空!");
            return false;
        }
        if ($.trim(password) == "" || password == null) {
            alert("密码不能为空!");
            return false;
        }
        return true;
    }
</script>

<script>
    function f() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }

    function editsubmit(){
        document.getElementById('institutionCreat').submit();
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }
</script>

</body>
</html>