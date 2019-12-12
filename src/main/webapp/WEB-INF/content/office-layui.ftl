<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><title>江苏省卫生监督业务系统</title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css"  media="all">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js" charset="utf-8"></script>
</head>
<body>

<table class="layui-hide" id="demo">

</table>

<script>
    layui.use('table', function(){
        var table = layui.table;
        table.render({
            elem: '#demo'
            ,url: '/office-layui' //数据接口
            ,page: true //开启分页
            ,cols: [[ //表头
                {field: 'orgid', title: '机构id',  sort: true, fixed: 'left'}
                ,{field: 'divcode', title: '科室编码'}
                ,{field: 'divnamecode', title: '科室名称编码', sort: true}
                ,{field: 'divname', title: '科室名称代码'}
                ,{field: 'ifsub', title: '是否为分所'}
                ,{field: 'dutytel', title: '电话号码', sort: true}
                ,{field: 'fax', title: '传真号码', sort: true}
                ,{field: 'divroomno', title: '门号'}
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
                    , area: ['1000px', '650px']
                    , maxmin: true  //最大最小化按钮
                    , offset: 'auto'   //位置居中
                    , content: $("#saveOrUpdateDiv") //不出现滚动条   ,'no'
                    , btnAlign: 'c'
                })
            }
        });
    });
</script>

</body>
</html>