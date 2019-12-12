<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta http-equiv="X-UA-Compatible" content="IE=7" />
<title>江苏省卫生监督业务系统</title>
<link href="/css/main.css" rel="stylesheet" type="text/css" media="all" />
<script src="/js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>
<script type="text/javascript">
 function jdy_hide(){
 document.getElementById('jdy1').style.display='none';
 document.getElementById('jdy2').style.display='none';
 }
 function jdy_show(){
 document.getElementById('jdy1').style.display='block';
 document.getElementById('jdy2').style.display='block';
 }
</script>
<body class="content-pages-body"> 
<div class="content-pages-wrap"> 
  <div class="commonTitle"> 
    <h2>&gt;&gt; <a href="member-list.ftl">人员管理</a> - 人员创建</h2>
  </div>
    <form id="memberCreat" name="memberCreat" action="/content/editMember" method="post">
  <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
        <input type="hidden" name="_method" value="PUT">
        <input type="hidden" name="id" value="${person.id}">
        <tr>
            <td width="12%" align="right"><span class="required">*</span>人员编码：</td>
            <td width="21%" align="left">
                <input name="percode" type="text" class="inputTextNormal" id="textfield" value="${person.percode}" /></td>
            <td width="12%" align="right"><span class="required">*</span>姓名：</td>
            <td width="21%" align="left">
                <input name="repmanname" type="text" class="inputTextNormal" id="textfield2"  value="${person.repmanname}"/></td>
            <td width="12%" align="right"><span class="required">*</span>性别：</td>
            <td align="left">
                <input type="radio" name="gender" id="radio1" value="1"
                        <#if person.gender=="1"> checked="checked"</#if>/>
                男
                <input type="radio" name="gender" id="radio2" value="0"
                        <#if person.gender=="0"> checked="checked"</#if>/>
                女</td>
        </tr>
        <tr>
            <td align="right">出生年月：</td>
            <td align="left">
                <input name="birthdate" type="date" class="inputTextNormal" id="textfield3" value="${person.birthdate?string('yyyy-MM-dd')}" /></td>
            <td align="right">民族：</td>
            <td align="left">
                <select  name="folk" id="select">
                    <option value=""
                            <#if person.folk=="">selected="selected"</#if>>请选择</option>
                    <option value="1"
                            <#if person.folk=="1">selected="selected"</#if>
                    >汉族</option>
                    <option value="2"
                            <#if person.folk=="2">selected="selected"</#if>>其他</option>
                </select>
            </td>
            <td align="right">政治面貌：</td>
            <td align="left">
                <select name="pol" id="select">
                    <option value=""
                            <#if person.pol=="">selected="selected"</#if>>请选择</option>
                    <option value="1"
                            <#if person.pol=="1">selected="selected"</#if>>党员</option>
                    <option value="2"
                            <#if person.pol=="2">selected="selected"</#if>>团员</option>
                    <option value="3"
                            <#if person.pol=="3">selected="selected"</#if>>人民</option>
                </select>
            </td>
        </tr>
        <tr>
            <td width="12%" align="right">手机：</td>
            <td width="21%" align="left"><input name="mobile" type="text" class="inputTextNormal" id="textfield" value="${person.mobile}" /></td>
            <td width="12%" align="right">电话：</td>
            <td width="21%" align="left"><input name="worktel" type="text" class="inputTextNormal" id="textfield2" value="${person.worktel}" /></td>
            <td width="12%" align="right">电子邮件：</td>
            <td align="left"><input name="email" type="text" class="inputTextNormal" id="textfield232" value="${person.email}" /></td>
        </tr>
        <tr>
            <td align="right">学历：</td>
            <td align="left"><select name="edu" id="select">
                    <option <#if person.edu=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.edu=="1">selected="selected"</#if> value="1">博士</option>
                    <option <#if person.edu=="2">selected="selected"</#if> value="2">硕士</option>
                    <option <#if person.edu=="3">selected="selected"</#if>value="3">本科</option>
                    <option <#if person.edu=="4">selected="selected"</#if> value="4">大专</option>
                    <option <#if person.edu=="5">selected="selected"</#if> value="5">中专</option>
                    <option <#if person.edu=="6">selected="selected"</#if> value="6">高中</option>
                    <option <#if person.edu=="7">selected="selected"</#if> value="7">初中</option>
                    <option <#if person.edu=="8">selected="selected"</#if> value="8">无学历</option>
                    <option <#if person.edu=="9">selected="selected"</#if> value="9">不详</option>
                </select></td>
            <td align="right">毕业学校：</td>
            <td align="left"><input name="gracollege" type="text" class="inputTextNormal" id="textfield28" value="${person.gracollege}" /></td>
            <td align="right"> 所选专业：</td>
            <td align="left"><input name="choicespe" type="text" class="inputTextNormal" id="textfield24" value="${person.choicespe}" /></td>
        </tr>
        <tr>
            <td align="right">所学专业类型：</td>
            <td align="left"> <select name="spe" id="select">
                    <option <#if person.spe=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.spe=="工程">selected="selected"</#if> value="工程">工程</option>
                    <option <#if person.spe=="法律">selected="selected"</#if> value="法律">法律</option>
                    <option <#if person.spe=="医药">selected="selected"</#if> value="医药">医药</option>
                    <option <#if person.spe=="公共卫生">selected="selected"</#if> value="公共卫生">公共卫生</option>
                    <option <#if person.spe=="无专业">selected="selected"</#if> value="无专业">无专业</option>
                    <option <#if person.spe=="其他专业">selected="selected"</#if> value="其他专业">其他专业</option>
                    <option <#if person.spe=="不详">selected="selected"</#if> value="不详">不详</option>
                </select></td>
            <td align="right">建所前从事专业：</td>
            <td align="left"><input name="beforespe" type="text" class="inputTextNormal" id="textfield29" value="${person.beforespe}" /></td>
            <td align="right">何时参加工作：</td>
            <td align="left"><input name="beginworkdate" type="date" class="inputTextNormal" id="textfield29" value="${person.beginworkdate?string('yyyy-MM-dd')}" /></td>
        </tr>
        <tr>
            <td align="right">职务：</td>
            <td align="left"><select name="managejob" id="select2">
                    <option <#if person.managejob=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.managejob=="1">selected="selected"</#if> value="1">所长</option>
                    <option <#if person.managejob=="2">selected="selected"</#if> value="2">书记</option>
                    <option <#if person.managejob=="3">selected="selected"</#if> value="3">副所长</option>
                    <option <#if person.managejob=="4">selected="selected"</#if> value="4">副书记</option>
                    <option <#if person.managejob=="5">selected="selected"</#if> value="5">主任</option>
                    <option <#if person.managejob=="6">selected="selected"</#if> value="6">副主任</option>
                    <option <#if person.managejob=="无">selected="selected"</#if> value="无">无</option>
                </select></td>
            <td align="right">职级：</td>
            <td align="left"><select name="joblevel" id="select3">
                    <option <#if person.joblevel=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.joblevel=="1">selected="selected"</#if> value="1">省部级正职</option>
                    <option <#if person.joblevel=="2">selected="selected"</#if> value="2">省部级副职</option>
                    <option <#if person.joblevel=="3">selected="selected"</#if> value="3">厅局级正职</option>
                    <option <#if person.joblevel=="4">selected="selected"</#if> value="4">厅局级副职</option>
                    <option <#if person.joblevel=="5">selected="selected"</#if> value="5">乡科级正职</option>
                    <option <#if person.joblevel=="6">selected="selected"</#if> value="6">乡科级副职</option>
                    <option <#if person.joblevel=="7">selected="selected"</#if> value="7">县处级正职</option>
                    <option <#if person.joblevel=="8">selected="selected"</#if> value="8">县处级副职</option>
                    <option <#if person.joblevel=="9">selected="selected"</#if> value="9">科办员</option>
                </select></td>
            <td align="right">职称：</td>
            <td align="left"> <select name="title" id="select4">
                    <option <#if person.title=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.title=="1">selected="selected"</#if> value="1">初级医师</option>
                    <option <#if person.title=="2">selected="selected"</#if> value="2">初级助理政工师</option>
                    <option <#if person.title=="3">selected="selected"</#if> value="3">初级助理工程师</option>
                    <option <#if person.title=="4">selected="selected"</#if> value="4">初级助理会计师</option>
                    <option <#if person.title=="5">selected="selected"</#if> value="5">初级研究实习员</option>
                    <option <#if person.title=="6">selected="selected"</#if> value="6">中级主管医师</option>
                    <option <#if person.title=="7">selected="selected"</#if> value="7">中级政工师</option>
                    <option <#if person.title=="8">selected="selected"</#if> value="8">中级馆员</option>
                    <option <#if person.title=="9">selected="selected"</#if> value="9">中级工程师</option>
                    <option <#if person.title=="10">selected="selected"</#if> value="10">中级会计师</option>
                    <option <#if person.title=="11">selected="selected"</#if> value="11">副主任医师</option>
                    <option <#if person.title=="12">selected="selected"</#if> value="12">副高级政工师</option>
                    <option <#if person.title=="13">selected="selected"</#if> value="13">副高级会计师</option>
                    <option <#if person.title=="14">selected="selected"</#if> value="14">正高主任医师</option>
                    <option <#if person.title=="15">selected="selected"</#if> value="15">未聘任专业技术职务</option>
                    <option <#if person.title=="16">selected="selected"</#if> value="16">无职称</option>
                    <option <#if person.title=="17">selected="selected"</#if> value="17">不详</option>
                </select></td>
        </tr>
        <tr>
            <td align="right">何时进卫生监督所：</td>
            <td align="left"><input name="getindate" type="date" class="inputTextNormal" id="textfield3"  value="${person.getindate?string('yyyy-MM-dd')}"/></td>
            <td align="right">人员性质：</td>
            <td align="left"><select name="perpro">
                    <option <#if person.perpro=="">selected="selected"</#if> value="">请选择</option>
                    <option <#if person.perpro=="1">selected="selected"</#if> value="1">聘用制干部</option>
                    <option <#if person.perpro=="2">selected="selected"</#if> value="2">聘用制工人</option>
                    <option <#if person.perpro=="3">selected="selected"</#if> value="3">固定干部</option>
                    <option <#if person.perpro=="4">selected="selected"</#if> value="4">固定工人</option>
                    <option <#if person.perpro=="5">selected="selected"</#if> value="5">其他</option>
                </select></td>
            <td align="right">类别：</td>
            <td align="left"><input type="radio" name="radio" id="radio1" value="radio1" checked  onclick="jdy_show()"/>
                监督人员
                <input type="radio" name="radio" id="radio2" value="radio2"  onclick="jdy_hide()"/>
                协查人员
                <input type="radio" name="radio" id="radio2" value="radio2" onclick="jdy_hide()"/>
                不详</td>
        </tr>
        <tr>
            <td align="right">行政执法证号：</td>
            <td align="left"><input name="enfcardno" type="text" class="inputTextNormal" id="textfield3"  value="${person.enfcardno}"/></td>
            <td align="right">何时取得行政执法证：</td>
            <td align="left"><input name="getcarddate" type="date" class="inputTextNormal" id="textfield3"  value="${person.getcarddate?string('yyyy-MM-dd')}"/></td>
            <td align="right">卫生监督胸牌：</td>
            <td align="left"><input name="healthperno" type="text" class="inputTextNormal" id="textfield3"  value="${person.healthperno}"/></td>
        </tr>
        <tr>
            <td align="right">是否为在编人员：</td>
            <td align="left"><input type="radio" name="ifstaffper" id="radio1" value="radio1" />
                是
                <input type="radio" name="ifstaffper" id="radio2" value="radio2" />
                否</td>
            <td align="right"></td>
            <td align="left"></td>
            <td align="right">&nbsp;</td>
            <td align="left">&nbsp;</td>
        </tr>


  </table>
    </form>
  <!--//commonTable--> 
  <div id="formPageButton"> 
    <ul> 
      <li><a  onclick="document.getElementById('memberCreat').submit();" class="btnShort">保存</a></li>
      <li><a href="javascript:window.history.go(-1)" title="返回" class="btnShort">返回</a></li> 
    </ul> 
  </div> 
  <!--//commonToolBar--> 
</div> 
<!--//content pages wrap--> 
</body>
</html>
