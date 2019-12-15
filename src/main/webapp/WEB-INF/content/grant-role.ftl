<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>江苏省卫生监督业务系统</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js"></script>
</head>
<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
        <h2>&gt;&gt; 角色授权</h2>
    </div>
    <form id="memberCreat" name="memberCreat" action="/updateUserAndRole" method="post">
        <input type="hidden" name="userid" value="${ownroles.userid}">
        <table border="0" cellspacing="1" cellpadding="0" class="commonTable">

            <tr>
                <td align="center" style="width: 40px;">选择</td>
                <td align="center">角色</td>
                <td align="center">角色描述</td>
            </tr>
            <#list roles as role>
                <tr>
                    <td align="center"><input name="roleid" type="radio" value="${role.id}"  <#if role.id=="${ownroles.roleid}"> checked="checked"</#if> /></td>
                    <td align="center">${role.rolename}</td>
                    <td align="center">${role.roledesc}</td>
                </tr>
            </#list>
        </table>
    </form>
    <div id="formPageButton">
        <ul>
            <li><a  onclick="editsubmit()" class="btnShort">保存</a></li>
            <li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
</div>



<script>
    function editsubmit(){
        document.getElementById('memberCreat').submit();
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }

</script>
<!--//content pages wrap-->
</body>
</html>
