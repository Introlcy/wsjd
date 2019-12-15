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
        <h2>&gt;&gt; 子菜单列表</h2>
    </div>
    <form id="memberCreat" name="memberCreat" action="/updateChildMenu" method="post">
        <input type="hidden" name="menuid" value="${Menu}">
        <table border="0" cellspacing="1" cellpadding="0" class="commonTable">

            <tr>
                <td align="center">菜单编号</td>
                <td align="center">菜单名称</td>
                <td align="center">url</td>
                <td align="center">排序</td>
            </tr>
            <#list childMenus as role>
                <tr>
                    <td align="center">
                        ${role.id}
                    <td align="center">${role.resourcesname}</td>
                    <td align="center">${role.url}</td>
                    <td align="center">${role.sort}</td>
                </tr>
            </#list>
        </table>
    </form>
    <div id="formPageButton">
        <ul>
            <li><a  onclick="editsubmit()" class="btnShort">保存</a></li>
            <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
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
    function f() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }
</script>
<!--//content pages wrap-->
</body>
</html>
