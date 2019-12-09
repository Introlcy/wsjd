﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="../css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="../js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
	<div class="commonTitle">
	  <h2>&gt;&gt;建设项目审查</h2>
	</div>
    <table width="100%" border="0" cellspacing="0" cellpadding="0" class="commonTableSearch">
       	<form id="form-search" name="form-search" action="" method="post">
        <tr>
          <th align="right">专业类别：</th>
          <td><select name="select" id="select">
            <option value="">公共场所</option>
            <option value="">生活饮用水</option>
            <option value="">职业卫生</option>
            <option value="">放射卫生</option>
            <option value="">其他</option>
          </select></td>
          <td><div align="right">单位名称（个人）：</div></td>
          <td><input name="textfield6" type="text" class="inputTextNormal" id="textfield6" /></td>
          <td align="right">组织机构代码：</td>
          <td align="right"><input name="textfield62" type="text" class="inputTextNormal" id="textfield62" /></td>
          <td align="right">身份证号码：</td>
          <td align="right"><input name="textfield622" type="text" class="inputTextNormal" id="textfield622" /></td>
        </tr>
        <tr>
            <th align="right">行政区划：</th>
            <td><input name="textfield63" type="text" class="inputTextNormal" id="textfield63" value="用地址进行后台匹配" /></td>
            <td><div align="right">报告单位：</div></td>
            <td><input name="textfield64" type="text" class="inputTextNormal" id="textfield64" /></td>
            <td align="right">报告人：</td>
            <td align="right"><input name="textfield642" type="text" class="inputTextNormal" id="textfield642" /></td>
            <td align="right">&nbsp;</td>
            <td align="right"><button>检索</button></td>
        </tr>
       	</form>
    </table>
    <!--//commonTableSearch-->
    <div class="btnBar">
    	<ul class="clearfix">
        	<li><a href="institution-creat.html" title="创建机构" class="btnNormal">新增</a></li>
        </ul>
    </div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th width="7%">申请单位（个人）</th>
            <th>机构名称</th>
            <th width="8%">专业类别</th>
            <th>经营地址</th>
            <th width="5%">报告日期</th>
            <th width="7%">审核状态</th>
            <th class="editColM">操作</th>
        </tr>
        <#list list as ornation>
            <tr>
                <td align="center">${ornation.orgno}</td>
                <td align="left"><a href="institution-view.html">${ornation.orgname}</a></td>
                <td align="center">${ornation.exetype}</td>
                <td align="left">${ornation.linkadd}</td>
                <td align="center">${ornation.listingdate}</td>
                <td align="center">${ornation.zbbdocdate}</td>
                <td align="center">
                    <a href="institution-view.html" class="btnIconView" title="查看详情"></a>
                    <a href="institution-creat.html" class="btnIconEdit" title="更新"></a>
                </td>
            </tr>
        </#list>

    </table>
    <!--//commonTable-->
    <div id="pagelist">
    	<ul class="clearfix">
        	<li><a href="#">首页</a></li>
            <li><a href="#">上页</a></li>
            <li><a href="#">1</a></li>
            <li><a href="#">2</a></li>
            <li class="current">3</li>
            <li><a href="#">4</a></li>
            <li><a href="#">5</a></li>
            <li><a href="#">下页</a></li>
            <li><a href="#">尾页</a></li>
            <li class="pageinfo">第3页</li>
            <li class="pageinfo">共8页</li>
        </ul>
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
