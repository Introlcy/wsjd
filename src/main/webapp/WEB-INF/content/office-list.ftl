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
<body class="content-pages-body">
<div class="content-pages-wrap">
    <#--待添加功能：分页，搜索，添加-->
    <table  class="table table-bordered">
        <tr>
            <th>机构id</th>
            <th>科室编码</th>
            <th >科室名称编码</th>
            <th>科室名称代码</th>
            <th>是否为分所</th>
            <th >电话号码</th>
            <th >传真号码</th>
            <th >门号</th>
            <th colspan="2">编辑</th>
        </tr>
        <#list sectionlist as section>
            <tr>
                <td>${section.orgid}</td>
                <td>${section.divcode}</td>
                <td>${section.divnamecode}</td>
                <td>${section.divname}</td>
                <td>${section.ifsub}</td>
                <td>${section.dutytel}</td>
                <td>${section.fax}</td>
                <td>${section.divroomno}</td>
                <td>
                    <a href="/office-list/${section.id}" class="btn btn-info">编辑</a>
                </td>
                <td>
                    <button class="btn btn-danger" onclick="delSection(${section.id})">删除</button>
                </td>
            </tr>
        </#list>
    </table>
</div>
<script>
    function delSection(id) {
        if (confirm("你确定要删除该条记录吗?")) {
            var f = document.getElementById("delSection");
            f.action = "/user/" + id;
            f.submit();
        }
    }
</script>

<form action="" method="post" id="delSection">
    <input type="hidden" name="_method" value="delete">
</form>
</body>
</html>