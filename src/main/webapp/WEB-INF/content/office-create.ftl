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
<div class="container">
    <h2>编辑信息</h2>
    <form method="post" action="/office-list">
        <div class="form-group">
            <label for="orgid">机构id:</label>
            <input  class="form-control" name="orgid" >
        </div>
        <div class="form-group">
            <label for="divcode">科室编码:</label>
            <input  class="form-control" name="divcode"  >
        </div>
        <div class="form-group">
            <label for="divnamecode">科室名称编码:</label>
            <input  class="form-control" name="divnamecode" >
        </div>
        <div class="form-group">
            <label for="divname">科室名称代码:</label>
            <input  class="form-control" name="divname"  >
        </div>
        <div class="form-group">
            <label for="ifsub">是否为分所:</label>
            <input  class="form-control" name="ifsub"  >
        </div>
        <div class="form-group">
            <label for="dutytel">电话号码:</label>
            <input  class="form-control" name="dutytel" >
        </div>
        <div class="form-group">
            <label for="fax">传真号码:</label>
            <input  class="form-control" name="fax" >
        </div>
        <div class="form-group">
            <label for="divroomno">门号:</label>
            <input  class="form-control" name="divroomno" >
        </div>
        <button type="submit" class="btn btn-primary">Submit</button>
    </form>
</div>
</body>
</html>