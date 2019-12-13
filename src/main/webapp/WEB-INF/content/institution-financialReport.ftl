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
    <h2>&gt;&gt; 机构管理 - 


 年度财政拨款情况表</h2>
</div>
     <table border="0" align="center" cellpadding="0" cellspacing="1" class="commonTable">
		<tr>
            <td align="center">单位</td>
            <td align="center">人员经费（万元）</td>
            <td align="center">公务费（万元）</td>
            <td align="center">业务经费（万元）</td>
            <td align="center">基本建设基金（万元）</td>
       </tr>
         <#list  list as  fund>
             <tr>
                 <td align="center">${fund.td0Organization.orgname}</td>
                 <td align="center">${fund.prefund}</td>
                 <td align="center">${fund.dutyfund}</td>
                 <td align="center">${fund.businessfund}</td>
                 <td align="center">${fund.buildfund}</td>
             </tr>
         </#list>
  </table>
<!--//content pages wrap-->
</body>
</html>
