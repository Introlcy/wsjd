<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <title>江苏省卫生监督业务系统</title>
    <link href="/css/main.css" type="text/css">
    <!-- 新 Bootstrap4 核心 CSS 文件 -->
    <link rel="stylesheet" href="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/css/bootstrap.min.css">

    <!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
    <script src="https://cdn.staticfile.org/jquery/3.2.1/jquery.min.js"></script>

    <!-- bootstrap.bundle.min.js 用于弹窗、提示、下拉菜单，包含了 popper.min.js -->
    <script src="https://cdn.staticfile.org/popper.js/1.15.0/umd/popper.min.js"></script>

    <!-- 最新的 Bootstrap4 核心 JavaScript 文件 -->
    <script src="https://cdn.staticfile.org/twitter-bootstrap/4.3.1/js/bootstrap.min.js"></script>
    <script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>
<body>
<div class="container">
    <h2>添加信息</h2>
    <form method="post" action="/office-list" onsubmit="return check()">
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
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
    </form>
</div>

<script type="text/javascript">
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
            return false;
        }
        if ($.trim(divcode) == "" || divcode == null) {
            alert("科室编码不能为空!");
            return false;
        }
        if ($.trim(divnamecode) == "" || divnamecode == null) {
            alert("科室名称编码不能为空!");
            return false;
        }
        if ($.trim(divname) == "" || divname == null) {
            alert("科室名称代码不能为空!");
            return false;
        }
        if ($.trim(ifsub) == "" || ifsub == null) {
            alert("是否为分所不能为空!");
            return false;
        }
        if ($.trim(dutytel) == "" || dutytel == null) {
            alert("电话号码不能为空!");
            return false;
        }
        if ($.trim(fax) == "" || fax == null) {
            alert("传真号码不能为空!");
            return false;
        }
        if ($.trim(divroomno) == "" || divroomno == null) {
            alert("门号不能为空!");
            return false;
        }
        return true;
    }
</script>
</body>
</html>