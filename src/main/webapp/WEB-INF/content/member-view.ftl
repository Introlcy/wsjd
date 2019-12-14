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
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle">
    <h2>&gt;&gt; <a href="member-list.ftl">人员管理</a> - 人员信息</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
            <tr>
                <td width="12%" class="title">人员编码</td>
                <td width="21%">${person.percode}</td>
                <td width="12%" class="title">姓名</td>
                <td width="21%">${person.repmanname}</td>
                <td width="12%" class="title">性别</td>
                <td>${person.gender}</td>
            </tr>
            <tr>
                <td class="title">出生年月：</td>
                <td>${person.birthdate?string('yyyy-MM-dd')}</td>
                <td class="title">民族：</td>
                <td>${person.folk}</td>
                <td class="title">政治面貌：</td>
                <td>${person.pol}</td>
            </tr>
            <tr>
                <td class="title">手机：</td>
                <td>${person.mobile}</td>
                <td class="title">电话：</td>
                <td>${person.worktel}</td>
                <td class="title">电子邮件：</td>
                <td>${person.email}</td>
            </tr>
            <tr>
                <td class="title">学历：</td>
                <td>${person.edu}</td>
                <td class="title">毕业学校：</td>
                <td>${person.gracollege}</td>
                <td class="title">所选专业：</td>
                <td>${person.choicespe}</td>
            </tr>
            <tr>
                <td class="title">所学专业类型：</td>
                <td>${person.spe}</td>
                <td class="title">建所前从事专业：</td>
                <td>${person.beforespe}</td>
                <td class="title">何时参加工作：</td>
                <td>${person.beginworkdate?string('yyyy-MM-dd')}</td>

            </tr>
            <tr>
                <td class="title">职务：</td>
                <td>${person.managejob}</td>
                <td class="title">职级：</td>
                <td>${person.joblevel}</td>
                <td class="title">职称：</td>
                <td>${person.title}</td>
            </tr>
            <tr>
                <td class="title">何时进卫生监督所：</td>
                <td>${person.getindate?string('yyyy-MM-dd')}</td>
                <td class="title">人员性质：</td>
                <td>${person.perpro}</td>
                <td class="title">类型：</td>
                <td>${person.pertype}</td>
            </tr>
            <tr>
                <td class="title"> 行政执法证号： </td>
                <td>${person.enfcardno}</td>
                <td class="title">何时取得行政执法证：</td>
                <td>${person.getcarddate?string('yyyy-MM-dd')}</td>
                <td class="title"> 卫生监督胸牌号： </td>
                <td>${person.healthperno}</td>
            </tr>
            <tr>
                <td class="title">何时取得卫生监督员资格：</td>
                <td>${person.getquadate?string('yyyy-MM-dd')}</td>
                <td class="title"> 目前持有有效的监督员证号： </td>
                <td>${person.healthcardno}</td>
                <td class="title">目前所持有效监督员证的有效时间：</td>
                <td>${person.cardday?string('yyyy-MM-dd')}</td>
            </tr>
            <tr>
                <td class="title">是否为在编人员：</td>
                <td>${person.ifstaffper}</td>
                <td class="title"></td>
                <td colspan="3"></td>
            </tr>
        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
</div>
<script>

    function f() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }


</script>
<!--//content pages wrap-->
</body>
</html>
