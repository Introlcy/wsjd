﻿<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="/css/main.css" rel="stylesheet" type="text/css" />
<script src="/js/jquery-3.2.1.js" type="text/javascript"></script>
<script src="/layui/layui.js"></script>
<link rel="stylesheet" href="/layui/css/layui.css">
    <script>
        //注意：导航 依赖 element 模块，否则无法进行功能性操作
        layui.use('element', function(){
            var element = layui.element;
        });
    </script>
<script language="javascript">
    //链接转入index.html页面ID为content-box的iframe显示
	function urlTarget(urls) {
		$("#content-box",parent.document.body).attr("src",urls);
	}
</script>
<script type="text/javascript">
function getMenuList(id) {

    $.ajax({
        url:'/getMenuList/'+id, //请求的url地址

        type:"get", //请求方式
        success:function(res){
            console.log(res)
        },

    });

}


</script>
</head>

<body class="inc-nav-body">




<div id="nav-box">
    <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
        <li class="layui-nav-item layui-nav-itemed">

            <#list menu as m>
                <a  onclick="getMenutList(${m.resourceid})">${m.resourcesName}</a>
            </#list>
            <dl class="layui-nav-child">
                <dd><a onclick="urlTarget('/ts');">机构列表</a></dd>
                <dd><a onclick="urlTarget('/office');">科室列表</a></dd>
                <dd><a onclick="urlTarget('/fund');">年度财政拨款情况表</a></dd>
                <dd><a onclick="urlTarget('/ached');">仪器设备配置情况表</a></dd>
                <dd><a onclick="urlTarget('/oao');">监督机构基本情况表</a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">人员管理</a>
            <dl class="layui-nav-child">
                <dd><a onclick="urlTarget('/content/forwardmember');">人员列表</a></dd>
                <dd><a onclick="urlTarget('/content/PersonnelAuthorization');">人员授权</a></dd>
                <dd><a onclick="urlTarget('/content/AuthorizedPersonConfirms');">被授权人确认</a></dd>
                <dd><a onclick="urlTarget('/content/StatisticsOfLeadersList');">所级领导名录统计表</a></dd>
                <dd><a onclick="urlTarget('/content/StaffCompositionTable');">人员构成情况表</a></dd>
                <!-- Summary of health supervisor management information-->
                <dd><a onclick="urlTarget('/content/sofhsmi');">卫生监督员管理信息汇总</a></dd>
                <!--Basic situation of professional and technical personnel-->
                <dd><a onclick="urlTarget('/content/bsopatp');">专业技术人员基本情况表</a></dd>
                <!--Basic situation of administrative staff-->
                <dd><a onclick="urlTarget('/content/bsofas');">行政管理人员基本情况表</a></dd>
                <dd><a href="javascript:;"></a></dd>
            </dl>
        </li>
        <li class="layui-nav-item">
            <a href="javascript:;">登陆号管理</a>
            <dl class="layui-nav-child">
                <dd><a onclick="urlTarget('/content/loginNumbersList');">登录号列表</a></dd>
            </dl>
        </li>
    </ul>
</div>


</body>
</html>