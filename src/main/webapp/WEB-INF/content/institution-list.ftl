<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
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
	  <h2>&gt;&gt;建设项目审查</h2>
	</div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
          <th align="right">专业类别：</th>
          <td><select name="select" id="select">
            <option value="">公共场所</option>
            <option value="">生活饮用水</option>
            <option value="">职业卫生</option>
            <option value="">放射卫生</option>
            <option value="">其他</option>
          </select>
          </td>
          <td><div align="right">单位名称（个人）：</div></td>
          <td><input name="textfield6" type="text" class="inputTextNormal" id="textfield6" /></td>
          <td align="right">组织机构代码：</td>
          <td align="right"><input name="textfield62" type="text" class="inputTextNormal" id="textfield62" /></td>
          <td align="right">身份证号码：</td>
          <td align="right"><input name="textfield622" type="text" class="inputTextNormal" id="textfield622" /></td>
        </tr>
        <tr>
            <th align="right">行政区划：</th>
            <td><input name="textfield63" type="text" class="inputTextNormal" id="textfield63" value="用地址进行后台匹配" /></td>
            <td><div align="right">报告单位：</div></td>
            <td><input name="textfield64" type="text" class="inputTextNormal" id="textfield64" /></td>
            <td align="right">报告人：</td>
            <td align="right"><input name="textfield642" type="text" class="inputTextNormal" id="textfield642" /></td>
            <td align="right">&nbsp;</td>
            <td align="right"><button>检索</button></td>
        </tr>
       	</form>
    </table>

    <table class="layui-hide" id="test" lay-filter="test"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button type="button" class="layui-btn layui-byn-sm" lay-event="add">增加</button>
        </div>
    </script>

    <table style="height: 100%" id="demo" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
       <#-- <a class="layui-btn layui-btn-danger layui-btn-xs" lay-event="del">删除</a>-->
    </script>

    <script src="/layui/layui.js"></script>
    <script>
        $(function () {
            layui.use('table', function () {
                var table = layui.table;
                //第一个实例
                table.render({
                    elem: '#demo'
                    ,toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
                    , url: '/ognzx' //数据接口
                    , page: true //开启分页
                    ,  cols: [[
                        , {field: 'orgno', title: '申请单位(个人)',}
                        , {field: 'orgname', title: '机构名称'}
                        , {field: 'exetype', title: '专业类别', sort: true}
                        , {field: 'linkadd', title: '经营地址'}
                        , {field: 'listingdate', title: '报告日期'}
                        , {field: 'zbbdocdate', title: '审核状态', sort: true}
                        , {fixed: 'right', title: '操作', toolbar: '#barDemo',align: 'center'}
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
                table.on('toolbar(test)', function(obj){
                    var  rowEvent = obj.event;
                    if(rowEvent === 'add'){
                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            ,title: '添加'
                            ,area: ['1000px', '600px']
                            ,maxmin: true  //最大最小化按钮
                            ,offset: 'auto'   //位置居中
                            ,content: '/toiav' //不出现滚动条   ,'no'
                            ,btnAlign: 'c'
                        })
                    }
                });

                //监听行工具事件

                table.on('tool(test)', function(obj){ //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
                    var data = obj.data //获得当前行数据
                        ,layEvent = obj.event; //获得 lay-event 对应的值

                    if(layEvent === 'detail'){
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            ,title: '详情信息'
                            ,area: ['1000px', '600px']
                            ,maxmin: true  //最大最小化按钮
                            ,offset: 'auto'   //位置居中
                            ,content: '/ognzx/'+data.id//不出现滚动条   ,'no'
                            ,btnAlign: 'c'

                        });
                    } else if(layEvent === 'del'){
                        layer.confirm('真的删除行么', function(index){
                            $.ajax({
                                url:'/del/'+data.id, //请求的url地址

                                type:"get", //请求方式
                                success:function(){
                                    obj.del(); //删除对应行（tr）的DOM结构
                                    layer.close(index);
                                },
                                error:function () {
                                    alert("")
                                }
                            });

                            //向服务端发送删除指令
                        });
                    } else if(layEvent === 'edit'){
                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            ,title: '信息修改'
                            ,area: ['1000px', '600px']
                            ,maxmin: true  //最大最小化按钮
                            ,offset: 'auto'   //位置居中
                            ,content: '/update/'+data.id+'' //不出现滚动条   ,'no'
                            ,btnAlign: 'c'

                        });
                    }
                });

            });
        })

    </script>


</div>
</body>
</html>
