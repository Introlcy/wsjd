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
    <link rel="stylesheet" type="text/css" href="/layui/css/layui.css">
</head>
<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; 科室管理</h2></div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
        <form id="form-search" name="form-search" action="" method="post">
            <tr>
                <td width="40" align="center"><img src="/images/icon-search.png" width="16" height="16" alt="检索" /></td>
                <th align="right">机构名称：</th>
                <td><select name="select" id="select">
                        <option value="">某某监督机构1</option>
                        <option value="">某某监督机构2</option>
                        <option value="">某某监督机构3</option>
                        <option value="">...</option>
                    </select></td>
                <th >科室名称：</th>
                <td><input name="datepiker1" type="text" class="inputTextNormal" id="datepiker1" /></td>
                <td align="right"><button>检索</button></td>
            </tr>
        </form>
    </table>
    //commonTableSearch&ndash;&gt;
    <div class="btnBar">
        <ul class="clearfix">
            <li><a href="office-creat.html" title="创建科室" class="btnNormal">创建科室</a></li>
        </ul>
    </div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable table table-striped">
        <tr>
            <th width="7%">机构id</th>
            <th>科室编码</th>
            <th width="8%">科室名称编码</th>
            <th>科室名称代码</th>
            <th>是否为分所</th>
            <th width="8%">电话号码</th>
            <th width="8%">传真号码</th>
            <th width="5%">门号</th>
            <th class="editColS">编辑</th>
        </tr>
        <#list sectionlist as section>
            <tr>
                <td align="center">${section.id}</td>
                <td align="center">${section.orgid}</td>
                <td align="left">${section.divcode}</td>
                <td align="center">${section.divnamecode}</td>
                <td align="center">${section.divname}</td>
                <td align="left">${section.ifsub}</td>
                <td align="center">${section.dutytel}</td>
                <td align="center">${section.fax}</td>
                <td align="center">${section.divroomno}</td>
                <td align="center">
                    <a href="office-edit.html" class="btnIconEdit" title="更新"></a>
                    <a href="#" class="btnIconDel" title="注销"></a>
                </td>
            </tr>
        </#list>
    </table>
</div>

</body>
</html>