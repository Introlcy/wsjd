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
        <h2>&gt;&gt; 资源列表</h2></div>


    <table class="layui-hide" id="test" lay-filter="test"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button type="button" class="layui-btn layui-byn-sm" lay-event="add">增加</button>
        </div>
    </script>

    <table style="height: 100%" id="demo" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-xs" lay-event="del">删除</a>
    </script>


    <script>
        $(function () {
            layui.use('table', function () {
                var table = layui.table;
                //第一个实例
                table.render({
                    elem: '#demo'
                    , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
                    , url: '/queryres' //数据接口
                    , page: false //开启分页
                    ,cols: [[
                        {field: 'id', title: '资源ID',}
                        , {field: 'resourcesname', title: '资源名'}
                        , {field: 'url', title: '资源路径'}
                        , {field: 'sort', title: '排序'}
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

                $('.layui-btn').on('click', function () {
                    // 搜索条件
                    var url='/content/dimsearch/';
                    var send_name = $("#demoReload").val();
                    var send_org=$("#selectOrg").val();

                    table.reload('demo', {
                        method: 'post'
                        ,where :{
                            sendname:send_name,
                            sendorg:send_org
                        }
                        ,url: '/content/dimsearch/'
                        , page: {
                            curr: 1
                        }
                    });
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
                                var htmladd="<option value=''>请选择</option>";
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
                                    , area: ['1000px', '650px']
                                    , maxmin: true  //最大最小化按钮
                                    , offset: 'auto'   //位置居中
                                    , content: $("#addPerson") //不出现滚动条   ,'no'
                                    , btnAlign: 'c'
                                })


                            },
                        });



                    }
                });

                //监听行工具事件

                table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
                    var data = obj.data //获得当前行数据
                        , layEvent = obj.event; //获得 lay-event 对应的值

                    if (layEvent === 'detail') {
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '详情信息'
                            , area: ['1000px', '600px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/content/memberView/' + data.humanCode
                            , btnAlign: 'c'

                        });
                    } else if (layEvent === 'del') {
                        var id=data.id;
                        console.log(id);
                        layer.confirm('真的删除行么', function(index){
                            obj.del();
                            $.ajax({
                                url: "/deleteres/"+id,
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
                            , area: ['1000px', '650px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/content/editMemberforward/'+data.humanCode+'' //不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });
                    }
                });

            });
        })

    </script>
</div>
<!--//content pages wrap-->





<script type="text/javascript">
    function cl(){
        layer.closeAll('page');
    }
    function check() {
        var percode = $("#percode").val();
        var repmanname = $("#repmanname").val();

        if ($.trim(percode) == "" || percode == null) {
            alert("人员编码不能为空!");
            return false;
        }
        if ($.trim(repmanname) == "" || repmanname == null) {
            alert("不能为空!");
            return false;
        }
        return true;
    }
    function getSection() {
        var section=  $("#selectOrg").val();
        $("#divNa").empty();
        $.ajax({
            url: "/querySectionByOrgId?id="+section+"",
            type: "get",
            success: function (sre) {
                console.log(sre)
                var htmladd="";
                for(var key in sre){
                    var val= sre[key].id;
                    var name=sre[key].divname;
                    htmladd +='<option value='+'"'+val+'"'+'>';
                    htmladd +=name;
                    htmladd +=' </option>';
                }
                $("#divNa").append(htmladd);
                // console.log($("#selectOrg").html());
                // console.log(htmladd);
                //  layer.msg('编辑操作');



            },
        });



    }
</script>

</body>
</html>
