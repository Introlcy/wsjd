<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>江苏省卫生监督业务系统</title>
    <link href="/css/main.css" type="text/css">
    <script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>

</head>
<body>
<div>
    <#--待添加功能：分页，搜索-->
    <#--href="/office-show"-->
    <button class="btn btn-primary" onclick="openAddModal()">添加</button>
    <table class="table table-bordered">
        <tr>
            <th>id</th>
            <th>机构id</th>
            <th>科室编码</th>
            <th>科室名称编码</th>
            <th>科室名称代码</th>
            <th>是否为分所</th>
            <th>电话号码</th>
            <th>传真号码</th>
            <th>门号</th>
            <th colspan="3" style="text-align: center">编辑</th>
        </tr>
        <#list sectionlist as section>
            <tr>
                <td>${section.id}</td>
                <td>${section.orgid}</td>
                <td>${section.divcode}</td>
                <td>${section.divnamecode}</td>
                <td>${section.divname}</td>
                <td>${section.ifsub}</td>
                <td>${section.dutytel}</td>
                <td>${section.fax}</td>
                <td>${section.divroomno}</td>
                <td>
                    <!-- 按钮：用于打开模态框 data-toggle="modal" data-target="#myModal"-->
                    <button type="button" class="btn btn-primary"
                            onclick="query(${section.id})">
                        编辑
                    </button>
                </td>
                <td>
                    <button class="btn btn-danger" onclick="delSection(${section.id})">删除</button>
                </td>
            </tr>
        </#list>
    </table>

    <!-- 编辑模态框 -->
    <div class="modal fade" id="editModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">编辑信息</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- 模态框主体 -->
                <div class="modal-body">
                    <div class="form-group" hidden>
                        <label for="orgid">id:</label>
                        <input class="form-control" name="id" id="id">
                    </div>
                    <div class="form-group">
                        <label for="orgid">机构id:</label>
                        <input class="form-control" name="orgid" id="orgid">
                    </div>
                    <div class="form-group">
                        <label for="divcode">科室编码:</label>
                        <input class="form-control" name="divcode" id="divcode">
                    </div>
                    <div class="form-group">
                        <label for="divnamecode">科室名称编码:</label>
                        <input class="form-control" name="divnamecode" id="divnamecode">
                    </div>
                    <div class="form-group">
                        <label for="divname">科室名称代码:</label>
                        <input class="form-control" name="divname" id="divname">
                    </div>
                    <div class="form-group">
                        <label for="ifsub">是否为分所:</label>
                        <input class="form-control" name="ifsub" id="ifsub">
                    </div>
                    <div class="form-group">
                        <label for="dutytel">电话号码:</label>
                        <input class="form-control" name="dutytel" id="dutytel">
                    </div>
                    <div class="form-group">
                        <label for="fax">传真号码:</label>
                        <input class="form-control" name="fax" id="fax">
                    </div>
                    <div class="form-group">
                        <label for="divroomno">门号:</label>
                        <input class="form-control" name="divroomno" id="divroomno">
                    </div>
                </div>

                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" onclick="editSection()">提交</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>

            </div>
        </div>
    </div>

    <!-- 添加模态框 -->
    <div class="modal fade" id="addModal">
        <div class="modal-dialog">
            <div class="modal-content">

                <!-- 模态框头部 -->
                <div class="modal-header">
                    <h4 class="modal-title">添加信息</h4>
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                </div>

                <!-- 模态框主体 -->
                <!-- 为了和编辑模态框区分，在主体的id后加上1 -->
                <div class="modal-body">
                    <div class="form-group">
                        <label for="orgid">机构id:</label>
                        <input class="form-control" name="orgid" id="orgid1">
                    </div>
                    <div class="form-group">
                        <label for="divcode">科室编码:</label>
                        <input class="form-control" name="divcode" id="divcode1">
                    </div>
                    <div class="form-group">
                        <label for="divnamecode">科室名称编码:</label>
                        <input class="form-control" name="divnamecode" id="divnamecode1">
                    </div>
                    <div class="form-group">
                        <label for="divname">科室名称代码:</label>
                        <input class="form-control" name="divname" id="divname1">
                    </div>
                    <div class="form-group">
                        <label for="ifsub">是否为分所:</label>
                        <input class="form-control" name="ifsub" id="ifsub1">
                    </div>
                    <div class="form-group">
                        <label for="dutytel">电话号码:</label>
                        <input class="form-control" name="dutytel" id="dutytel1">
                    </div>
                    <div class="form-group">
                        <label for="fax">传真号码:</label>
                        <input class="form-control" name="fax" id="fax1">
                    </div>
                    <div class="form-group">
                        <label for="divroomno">门号:</label>
                        <input class="form-control" name="divroomno" id="divroomno1">
                    </div>
                </div>

                <!-- 模态框底部 -->
                <div class="modal-footer">
                    <button type="submit" class="btn btn-primary" onclick="addSection()">提交</button>
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">关闭</button>
                </div>

            </div>
        </div>
    </div>
</div>

<script>
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


    //通过id删除数据
    function delSection(id) {
        if (confirm("你确定要删除该条记录吗?")) {
            var f = document.getElementById("delSection");
            f.action = "/user/" + id;
            f.submit();
        }
    }

    //通过id查询数据
    function query(id) {
        $.ajax({
            url: "/office-list/" + id,
            type: "get",
            // 成功后开启模态框
            success: showQuery,
            error: function () {
                alert("请求失败!");
            },
            dataType: "json"
        });
    }

    // 查询成功后向模态框插入数据并开启模态框。data是返回的JSON对象
    function showQuery(data) {
        //console.log(data);
        $("#id").val(data.id);
        $("#orgid").val(data.orgid);
        $("#divcode").val(data.divcode);
        $("#divnamecode").val(data.divnamecode);
        $("#divname").val(data.divname);
        $("#ifsub").val(data.ifsub);
        $("#dutytel").val(data.dutytel);
        $("#fax").val(data.fax);
        $("#divroomno").val(data.divroomno);
        $('#editModal').modal('show');
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
        //console.log(orgid, divcode, divnamecode, divname, ifsub, dutytel, fax, divroomno, id);
        if (check() == true) {
            $.ajax({
                url: "/office-edit",
                type: "post",
                data: {
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
                },
                error: function () {
                    alert("编辑失败！");
                }
            });
            $('#myModal').modal('hide');
            window.location.reload();
        }
    }

    /*打开模态框*/
    function openAddModal() {
        $('#addModal').modal('show');
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
                },
                error: function () {
                    alert("添加失败！");
                }
            });
            $('#myModal').modal('hide');
            window.location.reload();
        }
    }

</script>

<form action="" method="post" id="delSection">
    <input type="hidden" name="_method" value="delete">
</form>

</body>
</html>