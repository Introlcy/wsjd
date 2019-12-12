<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
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
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
	    <td align="right">年份：</td>
            <td>
               <select name="select" id="select">
		 <option value="">2010</option>
		 <option value="">2009</option>
		 <option value="">2008</option>
		 <option value="">...</option>
	       </select>
	   </td>
	     <th align="right">监督机构：</th>
            <td><select name="select" id="select">
			 <option value="">请选择</option>
			 <option value="">全部</option>
			 <option value="">全省各个监督机构</option>
			</select></td>
	   <td align="right">
            <button>查询</button>
	    </td>
        </tr>
       	</form>
</table>
 	<div class="btnBar">
	    	<ul class="clearfix">
	    		<li><a href="#" title="复制名录" class="btnNormal">复制名录</a></li>
	        	<li><a href="leadership-creat.html" title="填写信息" class="btnNormal">填写名录信息</a></li>
	        </ul>
 	 </div>


    <table class="layui-hide" id="test" lay-filter="test"></table>

    <script type="text/html" id="toolbarDemo">
        <div class="layui-btn-container">
            <button type="button" class="layui-btn layui-byn-sm" lay-event="add" href="/toiav">增加</button>

        </div>
    </script>

    <table style="height: 100%" id="demo" lay-filter="test"></table>
    <script type="text/html" id="barDemo">
        <a class="layui-btn layui-btn-primary layui-btn-xs" lay-event="detail">查看</a>
        <a class="layui-btn layui-btn-xs" lay-event="edit">编辑</a>
        <a class="layui-btn layui-btn-normal layui-btn-xs" lay-event="del">拨款</a>
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
                        , {field: 'pol', title: '政治面貌'}
                        , {field: 'managejob', title: '职务'}
                        , {field: 'title', title: '职称'}
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
                            , content: '/ognzx/' + data.id//不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });
                    } else if (layEvent === 'del') {
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '增加拨款'
                            , area: ['1000px', '650px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/transf/' + data.id//不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });

                    } else if (layEvent === 'edit') {
                        //  layer.msg('编辑操作');
                        layer.open({
                            type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                            , title: '信息修改'
                            , area: ['1000px', '650px']
                            , maxmin: true  //最大最小化按钮
                            , offset: 'auto'   //位置居中
                            , content: '/update/' + data.id  //不出现滚动条   ,'no'
                            , btnAlign: 'c'

                        });
                    }
                });

            });
        })

    </script>



</body>
</html>
