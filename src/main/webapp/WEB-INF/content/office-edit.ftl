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
<form method="post" action="office-list">
    <input type="hidden" name="_method" value="put">
    <table class="table table-bordered">
        <tr>
            <th>机构id<input name="orgid"  value="${section.orgid}"></th>
            <th>科室编码<input name="divcode"  value="${section.divcode}"></th>
            <th>科室名称编码<input name="divnamecode"  value="${section.divnamecode}"></th>
            <th>科室名称代码<input name="divname"  value="${section.divname}"></th>
            <th>是否为分所<input name="ifsub"  value="${section.ifsub}"></th>
            <th>电话号码<input name="dutytel"  value="${section.dutytel}"></th>
            <th>传真号码<input name="fax"  value="${section.fax}"></th>
            <th>门号<input name="divroomno"  value="${section.divroomno}"></th>
        </tr>
    </table>
    <button class="button btn-info">
        <input type="submit">
    </button>
</form>
</body>
</html>