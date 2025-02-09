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
    <h2>&gt;&gt; 机构管理 - 监督机构基本情况表</h2>
</div>
     <table border="0" align="center" cellpadding="0" cellspacing="1" class="commonTable">
		<tr>
            <td align="center" rowspan="2">单位</td>
            <td align="center" rowspan="2">编办批文日期（年月日）</td>
            <td align="center" rowspan="2">挂牌日期（年月日）</td>
            <td align="center" rowspan="2">独立运行日期（年月日）</td>
            <td align="center" rowspan="2">行政级别</td>
			 <td align="center" rowspan="2">行政性质</td>
            <td align="center" rowspan="2">编制人数</td>
            <td align="center" rowspan="2">是否参公管理</td>
			 <td align="center" rowspan="2">在职人数</td>
            <td align="center" rowspan="2">离退休人数</td>
            <td align="center" colspan="3">办公用房</td>
			<td align="center" colspan="3">内设科室数</td>
       </tr>
		<tr>
            <td align="center">建筑面积（平方米）</td>
            <td align="center">房屋所有权</td>
            <td align="center">在建面积（平方米）</td>
            <td align="center">业务科室</td>
            <td align="center">职能科室</td>
		    <td align="center">派出机构数</td>
       </tr>
         <#list  list as  oao>
         <tr>
             <td align="center">${oao.td0Organization.orgname}</td>
             <td align="center">${oao.td0Organization.zbbdocdate?string('yyyy-MM-dd')}</td>
             <td align="center">${oao.td0Organization.listingdate?string('yyyy-MM-dd')}</td>
             <td align="center">${oao.td0Organization.standalonedate?string('yyyy-MM-dd')}</td>
             <td align="center">${oao.td0Organization.exetype}</td>
             <td align="center">${oao.td0Organization.orgpro}</td>
             <td align="center">${oao.zbbnum}</td>
             <td align="center">${oao.ifpublicmanage}</td>
             <td align="center">${oao.onworkernum}</td>
             <td align="center">${oao.retirenum}</td>
             <td align="center">${oao.officebuildarea}</td>
             <td align="center">${oao.buildingownership}</td>
             <td align="center">${oao.officebuildingarea}</td>
             <td align="center">${oao.businessdivcount}</td>
             <td align="center">${oao.fundivcount}</td>
             <td align="center">${oao.orgcount}</td>
         </tr>
     </#list>
  </table>
<!--//content pages wrap-->
</body>
</html>
