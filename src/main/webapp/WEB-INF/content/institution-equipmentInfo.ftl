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
    <h2>&gt;&gt; 机构管理 -
 仪器设备配置情况表

</h2>
</div>
     <table border="0" align="center" cellpadding="0" cellspacing="1" class="commonTable">
		<tr>
            <td width="14%" rowspan="2" align="center">单位</td>
            <td align="center" colspan="3">千元以上检测仪器设备台数</td>
            <td align="center" colspan="3">车辆（辆）</td>
            <td align="center" colspan="3">执法取证工具（台数）</td>
            <td align="center" colspan="7">办公及信息化设备（台数）</td>
       </tr>
		<tr>
            <td width="8%" align="center">小于等于一万</td>
            <td width="7%" align="center">一万到十万</td>
            <td width="7%" align="center">大于等于十万</td>
            <td align="center">汽车(不含快速检测车)</td>
			 <td width="4%" align="center">快速检测车</td>
			  <td width="4%" align="center">摩托车</td>
			   <td width="5%" align="center">照相机</td>
			    <td width="5%" align="center">摄像机</td>
			  <td width="4%" align="center">录音笔</td>
			   <td width="6%" align="center">台式电脑</td>
			    <td width="7%" align="center">笔记本电脑</td>
				 <td width="4%" align="center">服务器</td>
			  <td width="4%" align="center">交换机</td>
            <td width="4%" align="center">传真机</td>
			  <td width="4%" align="center">投影仪</td>
            <td width="6%" align="center">复印机</td>
       </tr>
		 <#list  list as  equipment>
			 <tr>
				 <td align="center">${equipment.orgname}</td>
				 <td align="center">${equipment.equ1count}</td>
				 <td align="center">${equipment.equ3count}</td>
				 <td align="center">${equipment.equ2count}</td>
				 <td align="center">${equipment.buscount}</td>
				 <td align="center">${equipment.rapidtestvehiclecount}</td>
				 <td align="center">${equipment.motorcount}</td>
				 <td align="center">${equipment.cameracount}</td>
				 <td align="center">${equipment.videocount}</td>
				 <td align="center">${equipment.vrcount}</td>
				 <td align="center">${equipment.computernum}</td>
				 <td align="center">${equipment.notepadnum}</td>
				 <td align="center">${equipment.servercount}</td>
				 <td align="center">${equipment.pbxcount}</td>
				 <td align="center">${equipment.faxcount}</td>
				 <td align="center">${equipment.ohpcount}</td>
				 <td align="center">${equipment.copycatnum}</td>
			 </tr>
		 </#list>

  </table>
<!--//content pages wrap-->
</body>
</html>
