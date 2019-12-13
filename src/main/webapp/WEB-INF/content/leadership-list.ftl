<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <title>江苏省卫生监督业务系统</title>
    <link href="/css/main.css" rel="stylesheet" type="text/css" media="all"/>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js"></script>
</head>
<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
      <h2>&gt;&gt; 所级领导名录管理</h2>
    </div>
    <!--//commonTableSearch-->


    <div class="demoTable">
        领导姓名：
        <div class="layui-inline">
            <input class="layui-input" name="id" id="demoReload" autocomplete="off">
        </div>
        <button class="layui-btn" data-type="reload">搜索</button>
    </div>

    <table class="layui-hide" id="test" lay-filter="test"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button type="button" class="layui-btn layui-btn-sm" lay-event="add" >增加</button>
        </div>
    </script>


    <table style="height: 100%" id="demo" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="del">删除</a>
    </script>

    <script>
        $(function () {
            layui.use('table', function () {
                var table = layui.table;
                //第一个实例
                table.render({
                    elem: '#demo'
                    , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
                    , url: '/ol' //数据接口
                    , page: true //开启分页
                    , cols: [[
                        {field: 'leadername', title: '领导姓名',}
                        , {field: 'gender', title: '性别'}
                        , {field: 'folk', title: '民族'}
                        , {field: 'birthdate', title: '出生年月'}
                        , {field: 'pol', title: '政治面貌'}
                        , {field: 'edu', title: '学历'}
                        , {field: 'orgname', title: '所属机构'}
                        , {fixed: 'right', title: '操作', toolbar: '#barDemo', align: 'center'}
                    ]]
                    , response: {
                        code: 'code' //规定数据状态的字段名称，默认：code
                        , msg: 'msg' //规定状态信息的字段名称，默认：msg
                        , count: 'count' //规定数据总数的字段名称，默认：count
                        , data: 'data' //规定数据列表的字段名称，默认：data
                    }
                    , parseData: function (res) { //res 即为原始返回的数据
                        return {
                            "code": res.code, //解析接口状态
                            "msg": res.msg, //解析提示文本
                            "count": res.count, //解析数据长度
                            "data": res.data//解析数据列表
                        }
                    }
                });

                //头工具栏事件
                table.on('toolbar(test)', function (obj) {
                    var rowEvent = obj.event;
                    if (rowEvent === 'add') {
                        $("#selectOrg").empty();
                        $.ajax({
                            url: "/find",
                            type: "post",
                            success: function (sre) {
                                var htmladd="";
                                for(var key in sre){
                                    var name= sre[key].orgname;
                                    var val=sre[key].id;
                                    htmladd +='<option value='+'"'+val+'"'+"onclick='console.log(1)'"+'>';
                                    htmladd +=name;
                                    htmladd +=' </option>';
                                }
                                $("#selectOrg").append(htmladd);
                                console.log($("#selectOrg").html());
                                console.log(htmladd);
                                //  layer.msg('编辑操作');
                                layer.open({
                                    type: 1 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                                    , title: '添加'
                                    , area: ['700px', '300px']
                                    , maxmin: true  //最大最小化按钮
                                    , offset: 'auto'   //位置居中
                                    , content: $("#creatleader") //不出现滚动条   ,'no'
                                    , btnAlign: 'c'
                                })

                            },
                        });
                        //  layer.msg('编辑操作');

                    }
                });

                $('.layui-btn').on('click', function () {
                    // 搜索条件
                    var send_name = $("#demoReload").val();
                    table.reload('demo', {
                        method: 'POST'
                        ,where :{
                            orgName:send_name
                        }
                        ,url: '/leadername'
                        , page: {
                            curr: 1
                        }
                    });
                });

                //监听行工具事件

                table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
                    var data = obj.data //获得当前行数据
                        , layEvent = obj.event; //获得 lay-event 对应的值
                    if(obj.event === 'del'){
                        layer.confirm('真的删除行么', function(index){
                            obj.del('/delleader/'+data.id );
                            $.ajax({
                                url:'/delleader/'+data.id,
                                type:"delete"
                                }
                            )
                            layer.close(index);
                        });

                    } else if (layEvent === 'edit') {
                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '信息修改'
                            , area: ['1000px', '650px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/121/' + data.id  //不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });
                    }
                });

            });
        })

    </script>
</div>

        <div id="creatleader" style="display:none" class="content-pages-wrap">
            <div class="commonTitle">
                <h2>&gt;&gt; 所级领导名录管理 - 添加领导名录信息</h2>
            </div>
            <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
                <form id="memberCreat" name="memberCreat" action="/addleader" method="post">
                    <tr>
                        <td width="12%" align="right"><span class="required">*</span>姓名：</td>
                        <td width="21%" align="left"><input name="leadername" type="text" class="inputTextNormal" id="leadername" /></td>
                        <td width="12%" align="right"><span class="required">*</span>性别</td>
                        <td width="21%" align="left"><input type="radio" name="gender" id="gender" value="男" />
                            男
                            <input type="radio" name="gender" id="radio3" value="女" />
                            女</td>
                        <td width="12%" align="right"><span class="required">*</span>民族：</td>
                        <td align="left"><select  name="folk" id="select5">
                                <option>请选择</option>
                                <option value="汉族">汉族</option>
                                <option value="其他">其他</option>
                            </select></td>
                    </tr>

                    <tr>
                        <td align="right">出生年月：</td>
                        <td align="left"><input name="birthdate" type="date" class="inputTextNormal" id="textfield3" /></td>
                        <td align="right">政治面貌：</td>
                        <td align="left">
                            <select name="pol" id="select7">
                                <option>请选择</option>
                                <option value="中共党员">中共党员</option>
                                <option value="团员">团员</option>
                                <option value="民族党派">民族党派</option>
                                <option value="群众">群众</option>
                            </select></td>
                        <td align="right">学历：</td>
                        <td align="left"><input name="textfield4" type="text" class="inputTextNormal" id="textfield4" /></td>
                    </tr>
                    <tr>
                        <td width="12%" align="right">学位：</td>
                        <td width="21%" align="left"><input name="edu" type="text" class="inputTextNormal" id="edu" /></td>
                        <td width="12%" align="right">职务：</td>
                        <td width="21%" align="left"><input name="managejob" type="text" class="inputTextNormal" id="manageJob" /></td>
                        <td width="12%" align="right">职级：</td>
                        <td align="left"><input name="title" type="text" class="inputTextNormal" id="title" /></td>
                    </tr>
                    <tr>
                        <td align="right">任职日期：</td>
                        <td align="left"><input name="serdate" type="date" class="inputTextNormal" id="serdate" /></td>
                        <td align="right">离任日期：</td>
                        <td align="left"><input name="leavedate" type="date" class="inputTextNormal" id="leavedate" /></td>
                        <td align="right">所属机构：</td>
                        <td align="left">
                            <select name="orgid" id="selectOrg" onchange="getSection()">
                                <option  value="">请选择</option>
                            </select></td>
                    </tr>
                    <div id="formPageButton">
                        <ul>
                            <li><input type="submit" title="保存" class="btnShort"/>保存</li>
                            <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                        </ul>
                    </div>
                </form>
            </table>
        </div>

<script type="text/javascript">
    function check() {
        var leadername = $("#leadername").val();
        var gender = $("#gender").val();

        if ($.trim(leadername) == "" || leadername == null) {
            alert("领导姓名不能为空!");
            return false;
        }
        if ($.trim(gender) == "" || gender == null) {
            alert("性别不能为空!");
            return false;
        }
        return true;
    }
</script>


<script>
    function f() {
        layer.closeAll('page');
    }
</script>

</body>
</html>
