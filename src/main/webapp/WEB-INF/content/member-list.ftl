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
    <h2>&gt;&gt; 人员管理</h2></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
            <th align="right">机构名称：</th>
            <td><select name="select" id="select">
			 <option value="">某某监督机构1</option>
			 <option value="">某某监督机构2</option>
			 <option value="">某某监督机构3</option>
			 <option value="">...</option>
			</select></td>
            <th align="right">姓名：</th>
            <td><input name="textfield" type="text" class="inputTextNormal" id="textfield" /></td>
            <th >性别：</th>
            <td><select name="select" id="select">
                <option>请选择</option>
                <option>男</option>
                <option>女</option>
            </select></td>
            <th >学历：</th>
            <td><select name="select2" id="select2">
                <option>请选择</option>
                <option>博士</option>
                <option>硕士</option>
                <option>本科</option>
                <option>大专</option>
                <option>中专</option>
                <option>高中</option>
                <option>初中</option>
                <option>无学历</option>
                <option>不详</option>
            </select></td>            
        </tr>
        <tr>
		     <th align="right">科室：</th>
            <td><select name="select2" id="select2">
              <option>请选择</option>
              <option>科室1</option>
              <option>科室2</option>
              <option>科室3</option>
              <option>科室4</option>
            </select></td>
            <th align="right">职务：</th>
            <td><select name="select2" id="select2">
              <option>请选择</option>
              <option>所长</option>
              <option>书记</option>
              <option>副所长</option>
              <option>副书记</option>
              <option>主任(科长)</option>
              <option>副主任(副科长)</option>
              <option>无</option>
            </select></td>
            <th align="right">职级：</th>
            <td><select name="select3" id="select3">
              <option>请选择</option>
              <option>省部级正职</option>
              <option>省部级副职</option>
              <option>厅局级正职</option>
              <option>厅局级副职</option>
              <option>乡科级正职</option>
              <option>乡科级副职</option>
              <option>县处级正职</option>
              <option>县处级副职</option>
              <option>科办员</option>
            </select></td>
            <th >所学专业：</th>
            <td><select name="select" id="select">
                <option>请选择</option>
                <option>工程</option>
                <option>法律</option>
				 <option>医药</option>
                <option>公共卫生</option>
                <option>无专业</option>
				<option>其他专业</option>
				  <option>不详</option>
            </select>&nbsp;&nbsp;<button>检索</button></td>

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
                    , url: '/content/members' //数据接口
                    , page: true //开启分页
                    ,cols: [[
                        {field: 'humanCode', title: '人员编码',}
                        , {field: 'organization', title: '机构'}
                        , {field: 'section', title: '科室', sort: true}
                        , {field: 'name', title: '姓名'}
                        , {field: 'sex', title: '性别'}
                        , {field: 'degree', title: '学历', sort: true}
                        , {field: 'job', title: '职务'}
                        , {field: 'grade', title: '职级'}
                        , {field: 'major', title: '所学专业'}
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


<div id="addPerson"  class="content-pages-wrap" style="display:none">
    <div class="commonTitle">
        <h2>&gt;&gt; <a href="member-list.ftl">人员管理</a> - 人员创建</h2>



    </div>
    <form id="memberCreat" name="memberCreat" action="/content/addMember" method="post" >
        <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
            <input type="hidden" name="_method" value="post">
            <input type="hidden" name="id" value="">
            <tr>
                <td align="right">所属机构：</td>
                <td align="left">
                    <select name="orgId" id="selectOrg" onchange="getSection()">
                        <option  value="">请选择</option>
                    </select></td>
                <td width="12%" align="right"><span class="required">*</span>姓名：</td>
                <td width="21%" align="left">
                    <input name="repmanname" type="text" class="inputTextNormal" id="repmanname"  value=""/></td>
                <td width="12%" align="right"><span class="required">*</span>性别：</td>
                <td align="left">
                    <input type="radio" name="gender" id="radio1" value="1"
                            />
                    男
                    <input type="radio" name="gender" id="radio2" value="0"
                            />
                    女</td>
            </tr>
            <tr>
                <td width="12%" align="right"><span class="required">*</span>所属科室：</td>
                <td width="21%" align="left">
                    <select id="divNa" name="sectionid"></select>
                </td>
                <td align="right">民族：</td>
                <td align="left">
                    <select  name="folk" id="select">
                        <option value=""
                                >请选择</option>
                        <option value="1"

                        >汉族</option>
                        <option value="2"
                                >其他</option>
                    </select>
                </td>
                <td align="right">政治面貌：</td>
                <td align="left">
                    <select name="pol" id="select">
                        <option value=""
                                >请选择</option>
                        <option value="1"
                               >党员</option>
                        <option value="2"
                               >团员</option>
                        <option value="3"
                                >人民</option>
                    </select>
                </td>
            </tr>
            <tr>
                <td align="right">出生年月：</td>
                <td align="left">
                    <input name="birthdate" type="date" class="inputTextNormal" id="textfield3" value="" /></td>
                <td width="12%" align="right">电话：</td>
                <td width="21%" align="left"><input name="worktel" type="text" class="inputTextNormal" id="textfield2" value="" /></td>
                <td width="12%" align="right">电子邮件：</td>
                <td align="left"><input name="email" type="text" class="inputTextNormal" id="textfield232" value="" /></td>
            </tr>
            <tr>
                <td align="right">学历：</td>
                <td align="left"><select name="edu" id="select">
                        <option  value="">请选择</option>
                        <option  value="1">博士</option>
                        <option  value="2">硕士</option>
                        <option value="3">本科</option>
                        <option  value="4">大专</option>
                        <option  value="5">中专</option>
                        <option  value="6">高中</option>
                        <option  value="7">初中</option>
                        <option  value="8">无学历</option>
                        <option  value="9">不详</option>
                    </select></td>
                <td align="right">毕业学校：</td>
                <td align="left"><input name="gracollege" type="text" class="inputTextNormal" id="textfield28" value="" /></td>
                <td align="right"> 所选专业：</td>
                <td align="left"><input name="choicespe" type="text" class="inputTextNormal" id="textfield24" value="" /></td>
            </tr>
            <tr>
                <td align="right">所学专业类型：</td>
                <td align="left"> <select name="spe" id="select">
                        <option  value="">请选择</option>
                        <option  value="工程">工程</option>
                        <option  value="法律">法律</option>
                        <option  value="医药">医药</option>
                        <option  value="公共卫生">公共卫生</option>
                        <option  value="无专业">无专业</option>
                        <option  value="其他专业">其他专业</option>
                        <option  value="不详">不详</option>
                    </select></td>
                <td align="right">建所前从事专业：</td>
                <td align="left"><input name="beforespe" type="text" class="inputTextNormal" id="textfield29" value="" /></td>
                <td align="right">何时参加工作：</td>
                <td align="left"><input name="beginworkdate" type="date" class="inputTextNormal" id="textfield29" value="" /></td>
            </tr>
            <tr>
                <td align="right">职务：</td>
                <td align="left"><select name="managejob" id="select2">
                        <option  value="">请选择</option>
                        <option  value="1">所长</option>
                        <option  value="2">书记</option>
                        <option  value="3">副所长</option>
                        <option  value="4">副书记</option>
                        <option  value="5">主任</option>
                        <option  value="6">副主任</option>
                        <option  value="无">无</option>
                    </select></td>
                <td align="right">职级：</td>
                <td align="left"><select name="joblevel" id="select3">
                        <option value="">请选择</option>
                        <option  value="1">省部级正职</option>
                        <option  value="2">省部级副职</option>
                        <option  value="3">厅局级正职</option>
                        <option  value="4">厅局级副职</option>
                        <option  value="5">乡科级正职</option>
                        <option  value="6">乡科级副职</option>
                        <option  value="7">县处级正职</option>
                        <option  value="8">县处级副职</option>
                        <option  value="9">科办员</option>
                    </select></td>
                <td align="right">职称：</td>
                <td align="left"> <select name="title" id="select4">
                        <option  value="">请选择</option>
                        <option  value="1">初级医师</option>
                        <option  value="2">初级助理政工师</option>
                        <option  value="3">初级助理工程师</option>
                        <option  value="4">初级助理会计师</option>
                        <option  value="5">初级研究实习员</option>
                        <option  value="6">中级主管医师</option>
                        <option  value="7">中级政工师</option>
                        <option  value="8">中级馆员</option>
                        <option  value="9">中级工程师</option>
                        <option  value="10">中级会计师</option>
                        <option  value="11">副主任医师</option>
                        <option  value="12">副高级政工师</option>
                        <option  value="13">副高级会计师</option>
                        <option  value="14">正高主任医师</option>
                        <option  value="15">未聘任专业技术职务</option>
                        <option  value="16">无职称</option>
                        <option  value="17">不详</option>
                    </select></td>
            </tr>
            <tr>
                <td align="right">何时进卫生监督所：</td>
                <td align="left"><input name="getindate" type="date" class="inputTextNormal" id="textfield3"  value=""/></td>
                <td align="right">人员性质：</td>
                <td align="left"><select name="perpro">
                        <option  value="">请选择</option>
                        <option  value="1">聘用制干部</option>
                        <option  value="2">聘用制工人</option>
                        <option  value="3">固定干部</option>
                        <option  value="4">固定工人</option>
                        <option  value="5">其他</option>
                    </select></td>
                <td align="right">类别：</td>
                <td align="left"><input type="radio" name="radio" id="radio1" value="radio1" checked  onclick="jdy_show()"/>
                    监督人员
                    <input type="radio" name="radio" id="radio2" value="radio2"  onclick="jdy_hide()"/>
                    协查人员
                    <input type="radio" name="radio" id="radio2" value="radio2" onclick="jdy_hide()"/>
                    不详</td>
            </tr>
            <tr>
                <td align="right">行政执法证号：</td>
                <td align="left"><input name="enfcardno" type="text" class="inputTextNormal" id="textfield3"  value=""/></td>
                <td align="right">何时取得行政执法证：</td>
                <td align="left"><input name="getcarddate" type="date" class="inputTextNormal" id="textfield3"  value=""/></td>
                <td align="right">卫生监督胸牌：</td>
                <td align="left"><input name="healthperno" type="text" class="inputTextNormal" id="textfield3"  value=""/></td>
            </tr>
            <tr>
                <td width="12%" align="right"><span class="required">*</span>人员编码：</td>
                <td width="21%" align="left">
                    <input name="percode" type="text" class="inputTextNormal" id="percode" value="" /></td>
                <td align="right">是否为在编人员：</td>
                <td align="left"><input type="radio" name="ifstaffper" id="radio1" value="是" />
                    是
                    <input type="radio" name="ifstaffper" id="radio2" value="否" />
                    否</td>
                <td width="12%" align="right">手机：</td>
                <td width="21%" align="left"><input name="mobile" type="text" class="inputTextNormal" id="textfield" value="" /></td>
            </tr>


        </table>
    </form>
    <!--//commonTable-->
    <div id="formPageButton">
        <ul>
            <li><a  onclick="document.getElementById('memberCreat').submit();" class="btnShort">保存</a></li>
            <li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
</div>



<script type="text/javascript">
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
