<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="X-UA-Compatible" content="IE=7"/>
    <link href="../css/main.css" rel="stylesheet" type="text/css" media="all"/>
    <script src="../js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>
<body>

<div id="saveOrUpdateDiv">
    <from class="layui-form" action="" lay-filter="dataFrm">
        <div class="layui-from-item">
            <div class="layui-inline">
                <div class="content-pages-wrap">
                    <div class="commonTitle">
                        <h2>&gt;&gt;
                            <td>所级领导名录管理</td>
                            - 编辑领导名录信息
                        </h2>
                    </div>
                    <table border="0" cellspacing="1" cellpadding="0" class="commonTable" onsubmit="return check()">
                        <form id="memberCreat" name="memberCreat" action="/updateleader" method="post">
                            <input type="hidden" value="${list.id}" name="id">
                            <tr>
                                <td width="12%" align="right"><span class="required">*</span>姓名：</td>
                                <td width="21%" align="left"><input name="leadername" type="text"
                                                                    class="inputTextNormal" id="leadername"
                                                                    value="${list.leadername}"/></td>
                                <td width="12%" align="right"><span class="required">*</span>性别</td>
                                <td width="21%" align="left"><input type="radio" name="gender" id="gender" value="男" checked="checked"/>
                                    男
                                    <input type="radio" name="gender" id="radio3" value="女"/>
                                    女
                                </td>
                                <td width="12%" align="right"><span class="required">*</span>民族：</td>
                                <td align="left"><select name="folk" id="select5">
                                        <option>请选择</option>
                                        <option <#if list.folk=="汉族">selected="selected"</#if> value="汉族">汉族</option>
                                        <option <#if list.folk=="其他">selected="selected"</#if> value="其他">其他</option>
                                    </select></td>
                            </tr>

                            <tr>
                                <td align="right">出生年月：</td>
                                <td align="left"><input name="birthdate" type="date" class="inputTextNormal"
                                                        id="textfield3" value="${list.birthdate?string('yyyy-MM-dd')}"/>
                                </td>
                                <td align="right">政治面貌：</td>
                                <td align="left">
                                    <select name="pol" id="select7">
                                        <option>请选择</option>
                                        <option <#if list.pol=="中共党员">selected="selected"</#if> value="中共党员">中共党员
                                        </option>
                                        <option <#if list.pol=="团员">selected="selected"</#if> value="团员">团员</option>
                                        <option <#if list.pol=="民族党派">selected="selected"</#if> value="民族党派">民族党派
                                        </option>
                                        <option <#if list.pol=="群众">selected="selected"</#if> value="群众">群众</option>
                                    </select></td>
                                <td align="right">学历：</td>
                                <td align="left"><input name="edu" type="text" class="inputTextNormal" id="textfield4"
                                                        value="${list.edu}"/></td>
                            </tr>
                            <tr>
                                <td width="12%" align="right">学位：</td>
                                <td width="21%" align="left"><input name="degree" type="text" class="inputTextNormal"
                                                                    id="edu" value="${list.degree}"/></td>
                                <td width="12%" align="right">职务：</td>
                                <td width="21%" align="left"><input name="managejob" type="text" class="inputTextNormal"
                                                                    id="manageJob" value="${list.managejob}"/></td>
                                <td width="12%" align="right"></td>
                                <td align="left"></td>
                            </tr>
                            <tr>
                                <td align="right">任职日期：</td>
                                <td align="left"><input name="serdate" type="date" class="inputTextNormal" id="serdate"
                                                        value="${list.serdate?string('yyyy-MM-dd')}"/></td>
                                <td align="right">离任日期：</td>
                                <td align="left"><input name="leavedate" type="date" class="inputTextNormal"
                                                        id="leavedate" value="${list.leavedate?string('yyyy-MM-dd')}"/>
                                </td>
                                <td align="right">所属机构：</td>
                                <td align="left">
                                    <select name="orgid" id="selectOrg">
                                        <option value="">请选择</option>
                                        <#list org as la>
                                            <option value="${la.id}" <#if list.orgid=="${la.id}">selected="selected"</#if> >${la.orgname}</option>
                                        </#list>
                                    </select></td>
                            </tr>
                            <div id="formPageButton">
                                <ul>
                                    <li><a  title="提交" class="btnShort" onclick="editsubmit()">提交</a></li>
                                    <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                                </ul>
                            </div>
                        </form>
                    </table>
                </div>
            </div>
        </div>
</div>

                <script>
                    function f() {
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(index);
                    }

                    function editsubmit() {
                        document.getElementById('memberCreat').submit();
                        var index = parent.layer.getFrameIndex(window.name);
                        parent.layer.close(index);
                    }
                </script>
</body>
</html>

