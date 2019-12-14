<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title><title>江苏省卫生监督业务系统</title></title>
    <meta name="renderer" content="webkit">
    <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
    <link rel="stylesheet" href="/layui/css/layui.css" media="all">
    <script src="/js/jquery-3.2.1.js"></script>
    <script src="/layui/layui.js" charset="utf-8"></script>
</head>
<body>

<table style="height: 100%" id="test" lay-filter="test"></table>

<script type="text/html" id="toolbarDemo">
    <div class="layui-btn-container">
        <button type="button" class="layui-btn layui-btn-primary"
                lay-event="add">增加
        </button>
    </div>
</script>
<script type="text/html" id="barDemo">
    <a class="layui-btn layui-btn-xs layui-btn-primary" lay-event="detail">查看</a>
    <a class="layui-btn layui-btn-xs layui-btn-normal" lay-event="edit" onclick="query()">编辑</a>
    <a class="layui-btn layui-btn-xs layui-btn-danger" lay-event="del">删除</a>
</script>

<div id="add" style="display: none">
    <form class="layui-form" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">机构id</label>
            <div class="layui-input-block">
                <input type="text" name="orgid" id="orgid1"
                       autocomplete="off" placeholder="请输入组织机构id"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室编码</label>
            <div class="layui-input-block">
                <input type="number" name="divcode" id="divcode1"
                       autocomplete="off" placeholder="请输入科室编码"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室名称编码</label>
            <div class="layui-input-block">
                <input type="number" name="divnamecode" id="divnamecode1"
                       autocomplete="off" placeholder="请输入科室名称编码"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室名称代码</label>
            <div class="layui-input-block">
                <input type="text" name="divname" id="divname1"
                       autocomplete="off" placeholder="请输入科室名称"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">是否为分所</label>
            <div class="layui-input-block">
                <select name="ifsub" id="ifsub1">
                    <option value="0" selected="">否</option>
                    <option value="1">是</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">电话号码</label>
                <div class="layui-input-inline">
                    <input type="tel" name="dutytel" id="dutytel1" lay-verify="required|phone"
                           autocomplete="off" class="layui-input" placeholder="请输入电话号码">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">传真号码</label>
                <div class="layui-input-inline">
                    <input type="tel" name="fax" id="fax1" lay-verify="required|phone"
                           autocomplete="off" class="layui-input" placeholder="请输入传真号码">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">门  号</label>
                <div class="layui-input-inline">
                    <input type="tel" name="divroomno" id="divroomno1" lay-verify="required|number"
                           autocomplete="off" class="layui-input" placeholder="请输入门号">
                </div>
            </div>
        </div>
    </form>
    <div class="layui-form-item">
        <button type="submit" class="layui-btn layui-btn-warm" onclick="addSection()">提交</button>
        <button type="button" class="layui-btn">关闭</button>
    </div>
</div>


<div id="edit" style="display: none">
    <form class="layui-form" method="post">
        <div class="layui-form-item">
            <label class="layui-form-label">id</label>
            <div class="layui-input-block">
                <input type="text" name="id" id="id"
                       readonly class="layui-input">
            </div>
        </div>
        <div class="layui-form-item">
            <label class="layui-form-label">机构id</label>
            <div class="layui-input-block">
                <input type="text" name="orgid" id="orgid"
                       autocomplete="off" placeholder="请输入组织机构id"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室编码</label>
            <div class="layui-input-block">
                <input type="text" name="divcode" id="divcode"
                       autocomplete="off" placeholder="请输入科室编码"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室名称编码</label>
            <div class="layui-input-block">
                <input type="number" name="divnamecode" id="divnamecode"
                       autocomplete="off" placeholder="请输入科室名称编码"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">科室名称代码</label>
            <div class="layui-input-block">
                <input type="text" name="divname" id="divname"
                       autocomplete="off" placeholder="请输入科室名称"
                       class="layui-input">
            </div>
        </div>

        <div class="layui-form-item">
            <label class="layui-form-label">是否为分所</label>
            <div class="layui-input-block">
                <select name="ifsub" id="ifsub">
                    <option value="0" selected="">否</option>
                    <option value="1">是</option>
                </select>
            </div>
        </div>

        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">电话号码</label>
                <div class="layui-input-inline">
                    <input type="tel" name="dutytel" id="dutytel" lay-verify="required|phone"
                           autocomplete="off" class="layui-input" placeholder="请输入电话号码">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">传真号码</label>
                <div class="layui-input-inline">
                    <input type="tel" name="fax" id="fax" lay-verify="required|phone"
                           autocomplete="off" class="layui-input" placeholder="请输入传真号码">
                </div>
            </div>
        </div>
        <div class="layui-form-item">
            <div class="layui-inline">
                <label class="layui-form-label">门  号</label>
                <div class="layui-input-inline">
                    <input type="tel" name="divroomno" id="divroomno" lay-verify="required|number"
                           autocomplete="off" class="layui-input" placeholder="请输入门号">
                </div>
            </div>
        </div>
    </form>
    <div class="layui-form-item">
        <button type="submit" class="layui-btn btn-primary" onclick="editSection()">提交</button>
        <button type="button" class="layui-btn">关闭</button>
    </div>
</div>
<script>
    layui.use('table', function () {
        var table = layui.table;
        table.render({
            elem: '#test'
            , url: '/office-layui' //数据接口
            , page: true //开启分页
            , cols: [[ //表头
                {field: 'orgid', title: '机构id', sort: true, fixed: 'left'}
                , {field: 'divcode', title: '科室编码'}
                , {field: 'divnamecode', title: '科室名称编码', sort: true}
                , {field: 'divname', title: '科室名称代码'}
                , {field: 'ifsub', title: '是否为分所'}
                , {field: 'dutytel', title: '电话号码', sort: true}
                , {field: 'fax', title: '传真号码', sort: true}
                , {field: 'divroomno', title: '门号'}
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
            , toolbar: '#toolbarDemo' //开启头部工具栏，并为其绑定左侧模板
            , defaultToolbar: ['filter', 'exports', 'print', { //自定义头部工具栏右侧图标。如无需自定义，去除该参数即可
                title: '提示'
                , layEvent: 'LAYTABLE_TIPS'
                , icon: 'layui-icon-tips'
            }]
            , title: '科室数据表'
        });

        //头工具栏事件
        table.on('toolbar(test)', function (obj) {
            var rowEvent = obj.event;
            if (rowEvent === 'add') {
                //  layer.msg('编辑操作');
                layer.open({
                    type: 1 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    , title: '添加科室'
                    , maxmin: true  //最大最小化按钮
                    , offset: 'auto'   //位置居中
                    , area: 'auto'
                    , content: $("#add")
                    , scrollbar: false //不出现滚动条   ,'no'
                    , btnAlign: 'c'
                    , shadeClose: 'true' //点击空白区域关闭
                })
            }
        });

        //监听行工具事件

        table.on('tool(test)', function (obj) { //注：tool 是工具条事件名，test 是 table 原始容器的属性 lay-filter="对应的值"
            var data = obj.data //获得当前行数据
                , layEvent = obj.event; //获得 lay-event 对应的值

            if (layEvent === 'edit') {
                //通过id查询数据
                $.ajax({
                    url: "/office/" + data.id,
                    type: "get",
                    // 查询成功后将数据放入表单中。data是返回的JSON对象
                    success: function showQuery(data) {
                        console.log(data);
                        $("#id").val(data.id);
                        $("#orgid").val(data.orgid);
                        $("#divcode").val(data.divcode);
                        $("#divnamecode").val(data.divnamecode);
                        $("#divname").val(data.divname);
                        $("#ifsub").val(data.ifsub);
                        $("#dutytel").val(data.dutytel);
                        $("#fax").val(data.fax);
                        $("#divroomno").val(data.divroomno);
                    },
                    error: function () {
                        alert("请求失败!");
                    },
                    dataType: "json"
                });
                //  layer.msg('编辑操作');
                layer.open({
                    type: 1 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    , title: '信息修改'
                    , area: 'auto'
                    , maxmin: true  //最大最小化按钮
                    , offset: 'auto'   //位置居中
                    , content: $("#edit")
                    , scrollbar: false //不出现滚动条   ,'no'
                    , btnAlign: 'c'
                    , shadeClose: 'true' //点击空白区域关闭
                });
            } else if (layEvent === 'del') {
                layer.open({
                    type: 2 //0（信息框，默认）1（页面层）2（iframe层）3（加载层）4（tips层）
                    , title: '删除'
                    , area: 'auto'
                    , maxmin: true  //最大最小化按钮
                    , offset: 'auto'   //位置居中
                    , area: ['500px', '520px']
                    , content: $("#") + data.id
                    , scrollbar: false //不出现滚动条   ,'no'
                    , btnAlign: 'c'
                    , shadeClose: 'true' //点击空白区域关闭
                });

            }
        });
    });

    //检查编辑数据不能为空
    function check() {
        var orgid = $("#orgid").val();
        var divcode = $("#divcode").val();
        var divnamecode = $("#divnamecode").val();
        var divname = $("#divname").val();
        var ifsub = $("#ifsub").val();
        var dutytel = $("#dutytel").val();
        var fax = $("#fax").val();
        var divroomno = $("#divroomno").val();
        if ($.trim(orgid) == "" || orgid == null) {
            alert("机构id不能为空!");
            $("#orgid").focus();
            return false;
        }
        if ($.trim(divcode) == "" || divcode == null) {
            alert("科室编码不能为空!");
            $("#divcode").focus();
            return false;
        }
        if ($.trim(divnamecode) == "" || divnamecode == null) {
            alert("科室名称编码不能为空!");
            $("#divnamecode").focus();
            return false;
        }
        if ($.trim(divname) == "" || divname == null) {
            alert("科室名称代码不能为空!");
            $("#divname").focus();
            return false;
        }
        if ($.trim(ifsub) == "" || ifsub == null) {
            alert("是否为分所不能为空!");
            $("#ifsub").focus();
            return false;
        }
        if ($.trim(dutytel) == "" || dutytel == null) {
            alert("电话号码不能为空!");
            $("#dutytel").focus();
            return false;
        }
        if ($.trim(fax) == "" || fax == null) {
            alert("传真号码不能为空!");
            $("#fax").focus();
            return false;
        }
        if ($.trim(divroomno) == "" || divroomno == null) {
            alert("门号不能为空!");
            $("#divroomno").focus();
            return false;
        }
        return true;
    }

    //检查添加数据不能为空
    function check1() {
        var orgid = $("#orgid1").val();
        var divcode = $("#divcode1").val();
        var divnamecode = $("#divnamecode1").val();
        var divname = $("#divname1").val();
        var ifsub = $("#ifsub1").val();
        var dutytel = $("#dutytel1").val();
        var fax = $("#fax1").val();
        var divroomno = $("#divroomno1").val();
        if ($.trim(orgid) == "" || orgid == null) {
            alert("机构id不能为空!");
            $("#orgid1").focus();
            return false;
        }
        if ($.trim(divcode) == "" || divcode == null) {
            alert("科室编码不能为空!");
            $("#divcode1").focus();
            return false;
        }
        if ($.trim(divnamecode) == "" || divnamecode == null) {
            alert("科室名称编码不能为空!");
            $("#divnamecode1").focus();
            return false;
        }
        if ($.trim(divname) == "" || divname == null) {
            alert("科室名称代码不能为空!");
            $("#divname1").focus();
            return false;
        }
        if ($.trim(ifsub) == "" || ifsub == null) {
            alert("是否为分所不能为空!");
            $("#ifsub1").focus();
            return false;
        }
        if ($.trim(dutytel) == "" || dutytel == null) {
            alert("电话号码不能为空!");
            $("#dutytel1").focus();
            return false;
        }
        if ($.trim(fax) == "" || fax == null) {
            alert("传真号码不能为空!");
            $("#fax1").focus();
            return false;
        }
        if ($.trim(divroomno) == "" || divroomno == null) {
            alert("门号不能为空!");
            $("#divroomno1").focus();
            return false;
        }
        return true;
    }

    //添加数据
    function addSection() {
        var orgid = $("#orgid1").val();
        var divcode = $("#divcode1").val();
        var divnamecode = $("#divnamecode1").val();
        var divname = $("#divname1").val();
        var ifsub = $("#ifsub1").val();
        var dutytel = $("#dutytel1").val();
        var fax = $("#fax1").val();
        var divroomno = $("#divroomno1").val();
        console.log(orgid, divcode, divnamecode, divname, ifsub, dutytel, fax, divroomno);
        if (check1() == true) {
            $.ajax({
                url: "/office-add",
                type: "post",
                data: {
                    'orgid': orgid,
                    'divcode': divcode,
                    'divnamecode': divnamecode,
                    'divname': divname,
                    'ifsub': ifsub,
                    'dutytel': dutytel,
                    'fax': fax,
                    'divroomno': divroomno
                },
                success: function () {
                    alert("添加成功！");
                    parent.location.reload();
                },
                error: function () {
                    alert("添加失败！");
                }
            });
            window.location.reload();
        }
    }

    //提交编辑后的数据
    function editSection() {
        var id = $("#id").val();
        var orgid = $("#orgid").val();
        var divcode = $("#divcode").val();
        var divnamecode = $("#divnamecode").val();
        var divname = $("#divname").val();
        var ifsub = $("#ifsub").val();
        var dutytel = $("#dutytel").val();
        var fax = $("#fax").val();
        var divroomno = $("#divroomno").val();
        console.log(orgid, divcode, divnamecode, divname, ifsub, dutytel, fax, divroomno, id);
        if (check() == true) {
            $.ajax({
                url: "/office-edit",
                type: "post",
                data: {
                    'id': id,
                    'orgid': orgid,
                    'divcode': divcode,
                    'divnamecode': divnamecode,
                    'divname': divname,
                    'ifsub': ifsub,
                    'dutytel': dutytel,
                    'fax': fax,
                    'divroomno': divroomno,
                    'id': id
                },
                success: function () {
                    alert("编辑成功！");
                    parent.location.reload();
                },
                error: function () {
                    alert("编辑失败！");
                }
            });
        }
    }
</script>
</body>
</html>