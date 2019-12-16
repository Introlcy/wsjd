<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <title>江苏省卫生监督机构与队伍系统</title>
    <style>
        html,body { overflow-x:hidden;}
    </style>
    <link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
    <script src="/js/jquery-3.2.1.js" type="text/javascript"></script>
    <script src="/layui/layui.js"></script>
    <link rel="stylesheet" href="/layui/css/layui.css">
</head>

<body>
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

    function  getMenutList(id,num) {
        var dataid="mu"+num;
        $("#"+dataid).empty();
        $.ajax({
            url:'/getMenuList/'+id, //请求的url地址
            type:"get", //请求方式
            success:function(res){
                for(var key in res){
                    var url= res[key].url;
                    console.log(url);
                    var htmladd="";
                    htmladd +='<dd>';
                    htmladd +='<a onclick=urlTarget('+'"'+url+'"'+')>';
                    htmladd +=res[key].resourcesName;
                    htmladd +='</a>';
                    htmladd +=' </dd>';
                    $("#"+dataid).append(htmladd);
                }
            },

        });

    }
</script>

<div id="header-wrap">
    <div id="header">
        <div class="logo-title">
            <h1>卫生监督业务系统</h1>
        </div>
        <div class="logout">
            欢迎登录，${Session["loginname"]}</span> [<span class="signout-text"><a href="/logout"  title="退出系统">退出系统</a></span>]
        </div>
    </div>
</div>
<div style="display: flex;height: 100vh">
    <div style="flex-grow:1;height: 100vh;">

        <div id="nav-box">
            <ul class="layui-nav layui-nav-tree layui-inline" lay-filter="demo" style="margin-right: 10px;">
                <#list menu as m>
                <li class="layui-nav-item">
                        <a  onclick="getMenutList(${m.resourceid},${m.resourceid})">${m.resourcesName}</a>
                <dl class="layui-nav-child" id="mu${m.resourceid}">
                </dl>
                </li>
                </#list>
            </ul>
        </div>


    </div>
    <div style="flex-grow:100">
        <iframe style="height: 100vh" frameborder="0" id="content-box" src="/welcome.html" scrolling="auto"></iframe>
    </div>
</div>



</body>