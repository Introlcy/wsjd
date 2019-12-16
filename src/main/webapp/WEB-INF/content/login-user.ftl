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
        <h2>&gt;&gt; 用户管理</h2></div>


    <table class="layui-hide" id="test" lay-filter="test"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button type="button" class="layui-btn layui-byn-sm" lay-event="add">增加</button>
        </div>
    </script>

    <table style="height: 100%" id="demo" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-xs" lay-event="del">删除</a>
        <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="detail">授予角色</a>
    </script>


    <script>
        $(function () {
            layui.use('table', function () {
                var table = layui.table;
                //第一个实例
                table.render({
                    elem: '#demo'
                    , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
                    , url: '/getAllUser' //数据接口
                    , page: true //开启分页
                    ,cols: [[
                        {field: 'id', title: '人员编码',}
                        , {field: 'username', title: '登陆账号'}
                        , {field: 'password', title: '密码'}
                        , {field: 'realname', title: '真实姓名'}
                        , {fixed: 'right', title: '操作', toolbar: '#barDemo', align: 'center',width:200}
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
                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 1 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '添加'
                            , area: ['400px', '300px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: $("#saveDiv") //不出现滚动条   ,'no'
                            , btnAlign: 'c'
                        })
                    }
                });

                //监听行工具事件

                table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
                    var data = obj.data //获得当前行数据
                        , layEvent = obj.event; //获得 lay-event 对应的值

                    if (layEvent === 'detail') {
                        var id=data.id;
                        console.log(id);
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '信息修改'
                            , area: ['500px', '500px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/grantrole/'+id //不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });


                    } else if (layEvent === 'del') {
                        var id=data.id;
                        console.log(id);
                        layer.confirm('真的删除行么', function(index){
                            obj.del();
                            $.ajax({
                                url: "/deleteuser/"+id,
                                type: "delete",
                                contentType:"application/x-www-form-urlencoded",
                                success: function (sre) {
                                    console.log(sre)

                                },
                            });




                            layer.close(index);
                        });

                    } else if (layEvent === 'edit') {

                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '信息修改'
                            , area: ['400px', '300px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/upuser/'+data.id   //不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });
                    }
                });

            });
        })

    </script>
</div>
<!--//content pages wrap-->

<div id="saveDiv" style="display:none">
    <from class="layui-form" action="" lay-filter="dataFrm">
        <div class="layui-from-item">
            <div class="layui-inline">
                <div class="content-pages-wrap">
                    <div class="commonTitle"><h2>&gt;&gt; <td>登录号管理</td> - 登录号创建</h2></div>
                    <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
                        <form id="institutionCreat" name="institutionCreat" action="/adduser" method="post">
                            <tr>
                                <td align="right"><span class="required">*</span>用户名：</td>
                                <td align="left"><input name="username" type="text" class="inputTextMiddle" id="username"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>密码：</td>
                                <td align="left"><input name="password" type="text" class="inputTextMiddle" id="password"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>真实姓名：</td>
                                <td align="left"><input name="realname" type="text" class="inputTextMiddle" id="rname"/></td>
                            </tr>
                            <div id="formPageButton">
                                <ul>
                                    <li><input type="submit"  title="提交" class="btnShort" value="提交"></li>
                                    <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                                </ul>
                            </div>
                        </form>
                    </table>
                </div>
            </div>
        </div>
    </from>
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
        layer.closeAll('page');
    }
</script>


<script type="text/javascript">
    function cl(){
        layer.closeAll('page');
    }
</script>

</body>
</html>
