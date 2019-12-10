<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
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
    <h2>&gt;&gt; <a href="institution-list.html">机构管理</a> - 机构信息</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="" method="post">
	  <tr>
            <td width="16%" align="right" class="title"><span class="required">*</span>机构编码：</td>
            <td width="17%" align="left">${orgattached.orgno}</td>
             <td width="16%" align="right" class="title"><span class="required">*</span>机构代码：</td>
            <td width="17%" align="left">${orgattached.orgcode}</td>
            <td width="16%" class="title" align="right"><span class="required">*</span>机构名称：</td>
            <td width="17%" align="left">${orgattached.td0Organization.orgname}</td>
        </tr>
        <tr>
           <td width="15%" align="right" class="title"><span class="required">*</span>行政类别：</td>
            <td width="19%" align="left">
                ${orgattached.td0Organization.exetype}</td>
           <td align="right" class="title">行政区划：</td>
            <td align="left" colspan="3">${orgattached.td0Organization.areacode}</td>
        </tr>
        <tr>
            <td align="right" class="title">地址：</td>
            <td align="left" colspan="3">${orgattached.td0Organization.linkadd}</td>
            <td align="right" class="title">邮编：</td>
            <td align="left">${orgattached.td0Organization.zipcode}</td>
        </tr>
        <tr>
            <td align="right" class="title">挂牌日期：</td>
            <td align="left">${orgattached.td0Organization.listingdate?string('yyyy-MM-dd HH:mm:ss')}</td>
            <td align="right" class="title">独立运行日期：</td>
            <td align="left">${orgattached.td0Organization.standalonedate?string('yyyy-MM-dd HH:mm:ss')}</td>
            <td align="right" class="title"><span class="required">*</span>行政区类别：</td>
            <td align="left">
                ${orgattached.td0Organization.areatype}</td>
        </tr>
        <tr>
            <td align="right" class="title">在职人数：</td>
            <td align="left">${orgattached.onworkernum}</td>
            <td align="right" class="title">卫生监督员数：</td>
            <td align="left">${orgattached.supervisornum}</td>
            <td align="right" class="title">编办批文日期：</td>
            <td align="left">${orgattached.td0Organization.zbbdocdate?string('yyyy-MM-dd HH:mm:ss')}</td>
        </tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span>机构行政级别 ：</td>
            <td align="left" >${orgattached.td0Organization.orglevel}</td>
            <td align="right" class="title"><span class="required">*</span>机构性质：</td>
            <td align="left">${orgattached.td0Organization.orgpro}</td>
            <td align="right" class="title"><span class="required">*</span>编制人数 ：</td>
            <td align="left">${orgattached.zbbnum}</td>
		</tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span>是否参公管理 ：</td>
          <td align="left">${orgattached.ifpublicmanage}</td>
            <td align="right" class="title"><span class="required">*</span>离退休人数 ：</td>
            <td align="left">${orgattached.retirenum}</td>
            <td align="right" class="title"> <span class="required">*</span>办公用房建筑面积（平方米） ：</td>
            <td align="left">${orgattached.officebuildarea}</td>
		</tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span>房屋所有权 ：</td>
            <td align="left">${orgattached.buildingownership}</td>
            <td align="right" class="title"> 办公用房在建面积（平方米） ：</td>
            <td align="left">${orgattached.officebuildingarea}</td>
            <td align="right" class="title"><span class="required">*</span>业务科室数 ：</td>
            <td align="left">${orgattached.businessdivcount}</td>
		</tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span>职能科室数 ：</td>
            <td align="left">${orgattached.fundivcount}</td>
            <td align="right" class="title"><span class="required">*</span>派出机构数 ：</td>
            <td align="left">${orgattached.orgcount}</td>
            <td align="right" class="title"><span class="required">*</span> 检测仪器设备数 ：</td>
            <td align="left">
                ${orgattached.equ3count}台（一千&lt;价格&lt;一万）<br/>
                ${orgattached.equ2count}台（一万&lt;价格&lt;十万）<br/>
                ${orgattached.equ1count}台（价格大于十万）</td>
        </tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span> 汽车数（不含快速检测车） ：</td>
            <td align="left">${orgattached.buscount}</td>
            <td align="right" class="title"><span class="required">*</span> 快速检测车数 ：</td>
            <td align="left">${orgattached.rapidtestvehiclecount}</td>
            <td align="right" class="title"><span class="required">*</span> 摩托车数 ：</td>
            <td align="left">${orgattached.motorcount}</td>
        </tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span> 照相机数

 ：</td>
            <td align="left">${orgattached.cameracount}</td>
            <td align="right" class="title"><span class="required">*</span> 摄像机数 ：</td>
            <td align="left">${orgattached.videocount}</td>
            <td align="right" class="title"><span class="required">*</span> 复印机数：</td>
            <td align="left">${orgattached.copycatnum}</td>
        </tr>
		<tr>
            <td align="right" class="title"><span class="required">*</span> 台式电脑数 ：</td>
            <td align="left">${orgattached.computernum}</td>
            <td align="right" class="title"> <span class="required">*</span>笔记本电脑数 ：</td>
            <td align="left">${orgattached.notepadnum}</td>
            <td align="right" class="title"><span class="required">*</span> 服务器数 ：</td>
            <td align="left">${orgattached.servercount}</td>
        </tr>
		<tr>
            <td align="right" class="title"> <span class="required">*</span>交换机数 ：</td>
            <td align="left">${orgattached.pbxcount}</td>
            <td align="right" class="title"> <span class="required">*</span>传真机数 ：</td>
            <td align="left">${orgattached.faxcount}</td>
            <td align="right" class="title"> <span class="required">*</span>投影仪数

 ：</td>
            <td align="left">${orgattached.ohpcount}</td>
        </tr>
        </form>
    </table>
    <!--//commonTable-->
    <div id="formPageButton">
    	<ul>
        	<li><a href="institution-creat.html" title="修改" class="btnShort">修改</a></li>
        	<li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li>
        </ul>
    </div>
    <!--//commonToolBar-->
    
    <div class="commonToolBar">
    	<a href="/transf" title="机构创建" class="btnNormal rt1st">添加拨款</a>
    </div>
    <!--//commonToolBar-->
   	<div class="commonTitle">
    	    <h2>&gt;&gt; 机构财政拨款</h2></div>
   	<!--//commonTableSearch-->
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <tr>
            <th>年度</th>
            <th width="20%">人员经费（万元）</th>
            <th width="20%">公务费（万元）</th>
            <th width="20%">业务经费（万元）</th>
            <th width="20%">基本建设资金（万元）</th>
            <th class="editColS">编辑</th>
        </tr>
        <#list fund as fundall>
            <tr>
                <td align="center">${fundall.yearly}</td>
                <td align="center">${fundall.prefund}</td>
                <td align="center">${fundall.dutyfund}</td>
                <td align="center">${fundall.businessfund}</td>
                <td align="center">${fundall.buildfund}</td>
                <td align="center">
                    <a href="institution-appropriation-edit.html" class="btnIconEdit" title="更新"></a>
                    <a href="#" class="btnIconDel" title="删除"></a>
                </td>
            </tr>
        </#list>
    </table>
    <!--//commonTable-->
    <div id="pagelist">
    	<ul class="clearfix">
        	<li><a href="#">首页</a></li>
            <li><a href="#">上页</a></li>
            <li class="current">1</li>
            <li><a href="#">2</a></li>
            <li><a href="#">下页</a></li>
            <li><a href="#">尾页</a></li>
            <li class="pageinfo">第1页</li>
            <li class="pageinfo">共2页</li>
        </ul>
    </div>
</div>
<!--//content pages wrap-->
</body>
</html>
