<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="/js/jquery-3.2.1.js" type="text/javascript"></script>
</head>

<body class="content-pages-body">
<div class="content-pages-wrap">
    <div class="commonTitle"><h2>&gt;&gt; <td>机构管理</td> - 机构财政拨款</h2></div>
    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <form id="institutionCreat" name="institutionCreat" action="/ognzx" method="post" onsubmit="return check()">
            <input name="orgid" value="${id}" type="hidden"/>
        <tr>
            <td rowspan="2" align="right"><span class="required">*</span>选择年度：</td>
            <td rowspan="2" align="left"><select name="yearly" id="select">
                    <option value="2020">2020</option>
			 <option value="2019">2019</option>
			 <option value="2018">2018</option>
			 <option value="2017">2017</option>
			 <option value="2016">2016</option>
                    <option value="2015">2015</option>
                    <option value="2014">2014</option>

			</select></td>
            <td align="right">人员经费（万元）：</td>
            <td align="left"><input name="prefund" type="text" class="inputTextNormal" id="prefund" /></td>
            <td align="right">公务费（万元）：</td>
            <td align="left"><input name="dutyfund" type="text" class="inputTextNormal" id="dutyfund" /></td>
        </tr>
        <tr>
            <td align="right">业务经费（万元）：</td>
            <td align="left"><input name="businessfund" type="text" class="inputTextNormal" id="businessfund" /></td>
            <td align="right">基本建设资金（万元）：</td>
            <td align="left"><input name="buildfund" type="text" class="inputTextNormal" id="buildfund" /></td>
            </tr>
            <!--//commonTable-->
            <div id="formPageButton">
                <ul>
                    <li><input type="submit" value="提交"  class="btnShort" onclick="f()"></li>
                    <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                </ul>
            </div>
            <!--//commonToolBar-->

<!--//content pages wrap-->
        </form>
    </table>
</div>


<script type="text/javascript">
    function check() {
        var prefund = $("#prefund").val();
        var dutyfund = $("#dutyfund").val();
        var businessfund = $("#businessfund").val();
        var buildfund = $("#buildfund").val();

        if ($.trim(prefund) == "" || prefund == null) {
            alert("人员经费不能为空!");
            return false;
        }
        if ($.trim(dutyfund) == "" || dutyfund == null) {
            alert("公务费不能为空!");
            return false;
        }
        if ($.trim(businessfund) == "" || businessfund == null) {
            alert("业务经费不能为空!");
            return false;
        }
        if ($.trim(buildfund) == "" || buildfund == null) {
            alert("基本建设资金不能为空!");
            return false;
        }
        return true;
    }
</script>


<script>
    function f() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }
</script>
</body>
</html>
