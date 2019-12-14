<!DOCTYPE html>
<html>
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
        <h2>&gt;&gt;建设项目审查</h2>
    </div>
    <div class="demoTable">
        机构名称：
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
                    , url: '/ognzx' //数据接口
                    , page: true //开启分页
                    , cols: [[
                        {field: 'orgno', title: '机构编码',}
                        , {field: 'orgname', title: '机构名称'}
                        , {field: 'exetype', title: '专业类别', sort: true}
                        , {field: 'linkadd', title: '经营地址'}
                        , {field: 'listingdate', title: '报告日期'}
                        , {field: 'zbbdocdate', title: '审核状态', sort: true}
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


                $('.layui-btn').on('click', function () {
                    // 搜索条件
                    var send_name = $("#demoReload").val();
                    table.reload('demo', {
                        method: 'POST'
                        ,where :{
                            organization:send_name
                        }
                        ,url: '/oname'
                        , page: {
                            curr: 1
                        }
                    });
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


</div>


<div id="saveOrUpdateDiv" style="display:none">
    <from class="layui-form" action="" lay-filter="dataFrm">
        <div class="layui-from-item">
            <div class="layui-inline">
                <div class="content-pages-wrap">
                    <div class="commonTitle"><h2>&gt;&gt; <td>机构管理</td> - 机构创建</h2></div>
                    <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
                        <form id="institutionCreat" name="institutionCreat" action="/add" method="post">
                            <tr>
                                <td align="right"><span class="required">*</span>机构编码：</td>
                                <td align="left"><input name="orgno" type="text" class="inputTextMiddle" id="orgno"/></td>
                                <td align="right"><span class="required">*</span>机构代码：</td>
                                <td align="left" colspan="3"><input name="orgcode" type="text" class="inputTextMiddle" id="orgcode"/>
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>机构名称：</td>
                                <td align="left"><input name="td0Organization.orgname" type="text"
                                                        class="inputTextMiddle" id="textfield2"/></td>
                                <td align="right"><span class="required">*</span>行政类别：</td>
                                <td align="left" colspan="4">
                                    <input type="radio" name="td0Organization.exetype" id="radio5" value="1"/>行政部门
                                    <input type="radio" name="td0Organization.exetype" id="radio6" value="2"/>卫生监督机构
                                    <input type="radio" name="td0Organization.exetype" id="radio7" value="3"/>协作单位
                                </td>
                            </tr>
                            <tr>
                                <td align="right">地址：</td>
                                <td colspan="3" align="left"><input name="td0Organization.linkadd" type="text"
                                                                    class="inputTextLong" id="textfield5"/></td>
                                <td align="right">邮编：</td>
                                <td align="left"><input name="td0Organization.zipcode" type="text"
                                                        class="inputTextNormal" id="textfield4"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>行政区划：</td>
                                <td align="left"><input name="td0Organization.areacode" type="text"
                                                        class="inputTextNormal"/></td>
                                <td align="right">挂牌日期：</td>
                                <td align="left"><input name="td0Organization.listingdate" type="date"
                                                        class="inputTextNormal"/></td>
                                <td align="right">独立运行日期：</td>
                                <td align="left"><input name="td0Organization.standalonedate" type="date"
                                                        class="inputTextNormal" id="textfield7"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>行政区类别：</td>
                                <td align="left">
                                    <input type="radio" name="td0Organization.areatype" id="radio1" value="1"/>省
                                    <input type="radio" name="td0Organization.areatype" id="radio2" value="2"/>市
                                    <input type="radio" name="td0Organization.areatype" id="radio3" value="3"/>县
                                    <input type="radio" name="td0Organization.areatype" id="radio4" value="4"/>区

                                </td>
                                <td align="right">在职人数：</td>
                                <td align="left"><input name="onworkernum" type="text" class="inputTextNormal"/></td>
                                <td align="right">卫生监督员数：</td>
                                <td align="left"><input name="supervisornum" type="text" class="inputTextNormal"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>机构行政级别 ：</td>
                                <td align="left"><select name="td0Organization.orglevel">
                                        <option value="">请选择</option>
                                        <option value="1">处级</option>
                                        <option value="2">副处级</option>
                                        <option value="3">科级</option>
                                        <option value="4">副科级</option>
                                        <option value="5">乡级及以下</option>
                                    </select></td>
                                <td align="right"><span class="required">*</span>机构性质：</td>
                                <td align="left"><select name="td0Organization.orgpro" id="select5">
                                        <option value="1">请选择</option>
                                        <option value="2">行政机构</option>
                                        <option value="3">全额拔款事业单位</option>
                                        <option value="4">差额拔款事业单位</option>
                                        <option value="5">自收自支事业单位</option>
                                        <option value="6">其他</option>
                                    </select></td>
                                <td align="right">编办批文日期：</td>
                                <td align="left"><input name="td0Organization.zbbdocdate" type="date"
                                                        class="inputTextNormal" id="textfield936"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>是否参公管理 ：</td>
                                <td align="left"><input type="radio" name="ifpublicmanage" value="是"/>是<input
                                            type="radio" name="ifpublicmanage" value="否">否
                                </td>
                                <td align="right"><span class="required">*</span>离退休人数 ：</td>
                                <td align="left"><input name="retirenum" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span>编制人数 ：</td>
                                <td align="left"><input name="zbbnum" type="text" class="inputTextNormal"
                                                        id="textfield935"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>房屋所有权 ：</td>
                                <td align="left"><select name="buildingownership" id="select">
                                        <option value="">请选择</option>
                                        <option value="自有">自有</option>
                                        <option value="借">借</option>
                                        <option value="租">租</option>
                                    </select></td>
                                <td align="right"> 办公用房在建面积（平方米） ：</td>
                                <td align="left"><input name="officebuildingarea" type="text" class="inputTextNormal"/>
                                </td>
                                <td align="right"><span class="required">*</span>办公用房建筑面积（平方米） ：</td>
                                <td align="left"><input name="officebuildarea" type="text" class="inputTextNormal"
                                                        id="textfield934"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>职能科室数 ：</td>
                                <td align="left"><input name="fundivcount" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span>派出机构数 ：</td>
                                <td align="left"><input name="orgcount" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span>业务科室数 ：</td>
                                <td align="left"><input name="businessdivcount" type="text" class="inputTextNormal"
                                                        id="textfield92"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>检测仪器设备数 ：</td>
                                <td align="left" colspan="5"><input name="equ3count" colspan="2" type="text" size="4"/>（价格大于一千,小于一万）<br/>
                                    <input name="equ2count" colspan="2" type="text" size="4"/>（价格大于一万、小于十万）<br/>
                                    <input name="equ1count" type="text" size="4"/>（价格大于十万）
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 汽车数（不含快速检测车） ：</td>
                                <td align="left"><input name="buscount" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span> 快速检测车数 ：</td>
                                <td align="left"><input name="rapidtestvehiclecount" type="text"
                                                        class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span> 摩托车数 ：</td>
                                <td align="left"><input name="motorcount" type="text" class="inputTextNormal"
                                                        id="textfield93"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 照相机数：</td>
                                <td align="left"><input name="cameracount" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span> 摄像机数 ：</td>
                                <td align="left"><input name="videocount" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span> 复印机数：</td>
                                <td align="left"><input name="copycatnum" type="text" class="inputTextNormal"
                                                        id="textfield932" />
                                </td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 台式电脑数 ：</td>
                                <td align="left"><input name="computernum" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span>笔记本电脑数 ：</td>
                                <td align="left"><input name="notepadnum" type="text" class="inputTextNormal"/></td>
                                <td align="right"><span class="required">*</span> 服务器数 ：</td>
                                <td align="left"><input name="servercount" type="text" class="inputTextNormal"
                                                        id="textfield933"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>交换机数 ：</td>
                                <td align="left"><input name="pbxcount" type="text" class="inputTextNormal"
                                                        id="textfield8"/></td>
                                <td align="right"><span class="required">*</span>传真机数 ：</td>
                                <td align="left"><input name="faxcount" type="text" class="inputTextNormal"
                                                        id="textfield9"/></td>
                                <td align="right"><span class="required">*</span>投影仪数 ：</td>
                                <td align="left"><input name="ohpcount" type="text" class="inputTextNormal"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>录音笔数：</td>
                                <td align="left"><input name="vrcount" type="text" class="inputTextNormal"/></td>
                                <td align="right"></td>
                                <td align="left"></td>
                                <td align="right"></td>
                                <td align="left"></td>
                            </tr>
                            <div id="formPageButton">
                                <ul>
                                    <li><input type="submit"  title="提交" class="btnShort"></li>
                                   <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                                </ul>
                            </div>
                        </form>
                    </table>
                    <!--//commonTable-->

                </div>
            </div>
        </div>
    </from>
</div>

<script type="text/javascript">
    function check() {
        var orgno = $("#orgno").val();
        var orgcode = $("#orgcode").val();

        if ($.trim(orgno) == "" || orgno == null) {
            alert("机构编码不能为空!");
            return false;
        }
        if ($.trim(orgcode) == "" || orgcode == null) {
            alert("机构代码不能为空!");
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
