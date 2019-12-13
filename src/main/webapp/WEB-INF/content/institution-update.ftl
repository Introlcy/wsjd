<!DOCTYPE html>
<html lang="en">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=7" />
    <link href="../css/main.css" rel="stylesheet" type="text/css" media="all" />
    <script src="../js/jquery-1.4.2.min.js" type="text/javascript"></script>
</head>
<body>
<div  id="saveOrUpdateDiv">
    <from class="layui-form" action="" lay-filter="dataFrm">
        <div class="layui-from-item">
            <div class="layui-inline">
                <div class="content-pages-wrap">
                    <div class="commonTitle"><h2>&gt;&gt; <td>机构管理</td> - 机构创建</h2></div>
                    <table border="0" cellspacing="1" cellpadding="0" class="commonTable">
                        <form id="institutionCreat" name="institutionCreat" action="/update" method="post">
                            <input type="hidden" name="id" value="${orgattached.id}">
                            <input name="orgid" type="hidden" value="${orgattached.orgid}">
                            <tr>
                                <td align="right"><span class="required">*</span>机构编码：</td>
                                <td align="left"><input name="orgno" type="text" class="inputTextMiddle" value="${orgattached.orgno}"/></td>
                                <td align="right"><span class="required">*</span>机构代码：</td>
                                <td align="left" colspan="3"><input name="orgcode" type="text" class="inputTextMiddle" value="${orgattached.orgcode}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>机构名称：</td>
                                <td align="left"><input name="td0Organization.orgname" type="text" class="inputTextMiddle" id="textfield2" value="${orgattached.td0Organization.orgname}"/></td>
                                <td align="right"><span class="required">*</span>行政类别：</td>
                                <td align="left" colspan="4">

                                    <input type="radio" name="td0Organization.exetype" id="radio5" value="1" />行政部门
                                    <input type="radio" name="td0Organization.exetype" id="radio6" value="2" />卫生监督机构
                                    <input type="radio" name="td0Organization.exetype" id="radio7" value="3" />协作单位
                                </td>
                            </tr>
                            <tr>
                                <td align="right">地址：</td>
                                <td colspan="3" align="left"><input name="td0Organization.linkadd" type="text" class="inputTextLong" id="textfield5" value="${orgattached.td0Organization.linkadd}"/></td>
                                <td align="right">邮编：</td>
                                <td align="left"><input name="td0Organization.zipcode" type="text" class="inputTextNormal" id="textfield4" value="${orgattached.td0Organization.zipcode}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>行政区划：</td>
                                <td align="left"><input name="td0Organization.areacode" type="text" class="inputTextNormal"  value="${orgattached.td0Organization.areacode}"/></td>
                                <td align="right">挂牌日期：</td>
                                <td align="left"><input name="td0Organization.listingdate" type="date" class="inputTextNormal"value="${orgattached.td0Organization.listingdate?string('yyyy-MM-dd')}"/></td>
                                <td align="right">独立运行日期：</td>
                                <td align="left"><input name="td0Organization.standalonedate" type="date" class="inputTextNormal" id="textfield7" value="${orgattached.td0Organization.standalonedate?string('yyyy-MM-dd')}" /></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>行政区类别：</td>
                                <td align="left">
                                    <input type="radio" name="td0Organization.areatype" id="radio1" value="1" />省
                                    <input type="radio" name="td0Organization.areatype" id="radio2" value="2" />市
                                    <input type="radio" name="td0Organization.areatype" id="radio3" value="3" />县
                                    <input type="radio" name="td0Organization.areatype" id="radio4" value="4" />区

                                </td>
                                <td align="right">在职人数：</td>
                                <td align="left"><input name="onworkernum" type="text" class="inputTextNormal" value="${orgattached.onworkernum}"/></td>
                                <td align="right">卫生监督员数：</td>
                                <td align="left"><input name="supervisornum" type="text" class="inputTextNormal" value="${orgattached.supervisornum}" /></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>机构行政级别 ：</td>
                                <td align="left"><select name="td0Organization.orglevel" >
                                        <option value="">请选择</option>
                                        <option <#if td0Organization.orglevel=="1">selected="selected"</#if> value="1">处级</option>
                                        <option <#if td0Organization.orglevel=="2">selected="selected"</#if> value="2">副处级</option>
                                        <option <#if td0Organization.orglevel=="3">selected="selected"</#if> value="3">科级</option>
                                        <option <#if td0Organization.orglevel=="4">selected="selected"</#if> value="4">副科级</option>
                                        <option <#if td0Organization.orglevel=="5">selected="selected"</#if> value="5">乡级及以下</option>
                                    </select></td>
                                <td align="right"><span class="required">*</span>机构性质：</td>
                                <td align="left"><select name="td0Organization.orgpro" id="select5">
                                        <option value="0">请选择</option>
                                        <option <#if td0Organization.orgpro=="1">selected="selected"</#if> value="1">行政机构</option>
                                        <option <#if td0Organization.orgpro=="2">selected="selected"</#if> value="2">全额拔款事业单位</option>
                                        <option <#if td0Organization.orgpro=="3">selected="selected"</#if> value="3">差额拔款事业单位</option>
                                        <option <#if td0Organization.orgpro=="4">selected="selected"</#if> value="4">自收自支事业单位</option>
                                        <option <#if td0Organization.orgpro=="5">selected="selected"</#if> value="5">其他</option>
                                    </select></td>
                                <td align="right">编办批文日期：</td>
                                <td align="left"><input name="td0Organization.zbbdocdate" type="text" class="inputTextNormal" id="textfield936" value="${orgattached.td0Organization.zbbdocdate?string('yyyy-MM-dd')}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>是否参公管理 ：</td>
                                <td align="left"><input type="radio" name="ifpublicmanage" value="是"/>是<input type="radio" name="ifpublicmanage" value="否">否</td>
                                <td align="right"><span class="required">*</span>离退休人数 ：</td>
                                <td align="left"><input name="retirenum" type="text" class="inputTextNormal" value="${orgattached.retirenum}"/></td>
                                <td align="right"><span class="required">*</span>编制人数 ：</td>
                                <td align="left"><input name="zbbnum" type="text" class="inputTextNormal" id="textfield935" value="${orgattached.zbbnum}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>房屋所有权 ：</td>
                                <td align="left"><select name="buildingownership" id="select">
                                        <option value="">请选择</option>
                                        <option <#if buildingownership=="自有">selected="selected"</#if> value="自有">自有</option>
                                        <option <#if buildingownership=="借">selected="selected"</#if> value="借">借</option>
                                        <option <#if buildingownership=="租">selected="selected"</#if> value="租">租</option>
                                    </select></td>
                                <td align="right"> 办公用房在建面积（平方米） ：</td>
                                <td align="left"><input name="officebuildingarea" type="text" class="inputTextNormal" value="${orgattached.officebuildingarea}"/></td>
                                <td align="right"> <span class="required">*</span>办公用房建筑面积（平方米） ：</td>
                                <td align="left"><input name="officebuildarea" type="text" class="inputTextNormal" id="textfield934" value="${orgattached.officebuildarea}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>职能科室数 ：</td>
                                <td align="left"><input name="fundivcount" type="text" class="inputTextNormal" value="${orgattached.fundivcount}"/></td>
                                <td align="right"><span class="required">*</span>派出机构数 ：</td>
                                <td align="left"><input name="orgcount" type="text" class="inputTextNormal" value="${orgattached.orgcount}"/></td>
                                <td align="right"><span class="required">*</span>业务科室数 ：</td>
                                <td align="left"><input name="businessdivcount" type="text" class="inputTextNormal" id="textfield92" value="${orgattached.businessdivcount}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span>检测仪器设备数 ：</td>
                                <td align="left" colspan="5"><input name="equ3count" colspan="2" type="text"  size="4" value="${orgattached.equ3count}"/>（价格大于一千,小于一万）<br/>
                                    <input name="equ2count" colspan="2" type="text"  size="4" value="${orgattached.equ2count}"/>（价格大于一万、小于十万）<br/>
                                    <input name="equ1count" type="text"  size="4" value="${orgattached.equ1count}"/>（价格大于十万）</td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 汽车数（不含快速检测车） ：</td>
                                <td align="left"><input name="buscount" type="text" class="inputTextNormal"  value="${orgattached.buscount}"/></td>
                                <td align="right"><span class="required">*</span> 快速检测车数 ：</td>
                                <td align="left"><input name="rapidtestvehiclecount" type="text" class="inputTextNormal"  value="${orgattached.rapidtestvehiclecount}"/></td>
                                <td align="right"><span class="required">*</span> 摩托车数 ：</td>
                                <td align="left"><input name="motorcount" type="text" class="inputTextNormal" id="textfield93" value="${orgattached.motorcount}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 照相机数：</td>
                                <td align="left"><input name="cameracount" type="text" class="inputTextNormal" value="${orgattached.cameracount}" /></td>
                                <td align="right"><span class="required">*</span> 摄像机数 ：</td>
                                <td align="left"><input name="videocount" type="text" class="inputTextNormal" value="${orgattached.videocount}"/></td>
                                <td align="right"><span class="required">*</span> 复印机数：</td>
                                <td align="left"><input name="copycatnum" type="text" class="inputTextNormal" id="textfield932" value="${orgattached.copycatnum}"/></td>
                            </tr>
                            <tr>
                                <td align="right"><span class="required">*</span> 台式电脑数 ：</td>
                                <td align="left"><input name="computernum" type="text" class="inputTextNormal" value="${orgattached.computernum}" /></td>
                                <td align="right"> <span class="required">*</span>笔记本电脑数 ：</td>
                                <td align="left"><input name="notepadnum" type="text" class="inputTextNormal" value="${orgattached.notepadnum}"/></td>
                                <td align="right"><span class="required">*</span> 服务器数 ：</td>
                                <td align="left"><input name="servercount" type="text" class="inputTextNormal" id="textfield933" value="${orgattached.servercount}"/></td>
                            </tr>
                            <tr>
                                <td align="right"> <span class="required">*</span>交换机数 ：</td>
                                <td align="left"><input name="pbxcount" type="text" class="inputTextNormal" id="textfield8" value="${orgattached.pbxcount}" /></td>
                                <td align="right"> <span class="required">*</span>传真机数 ：</td>
                                <td align="left"><input name="faxcount" type="text" class="inputTextNormal" id="textfield9" value="${orgattached.faxcount}"/></td>
                                <td align="right"> <span class="required">*</span>投影仪数 ：</td>
                                <td align="left"><input name="ohpcount" type="text" class="inputTextNormal" value="${orgattached.ohpcount}"/></td>
                            </tr>
                            <tr>
                                <td align="right"> <span class="required">*</span>录音笔数：</td>
                                <td align="left"><input name="vrcount" type="text" class="inputTextNormal" value="${orgattached.vrcount}" /></td>
                                <td align="right"> </td>
                                <td align="left"></td>
                                <td align="right"> </td>
                                <td align="left"></td>
                            </tr>
                            <div id="formPageButton">
                                <ul>
                                    <li><input type="submit" title="提交" class="btnShort"></li>
                                    <li><a onclick="f()" title="返回" class="btnShort">返回</a></li>
                                </ul>
                            </div>
                        </form>
                    </table>
                    <!--//commonTable-->

                </div>
            </div>
        </div>
    </from>
</div>
<script>
    function f() {
        var index = parent.layer.getFrameIndex(window.name);
        parent.layer.close(index);
    }
</script>
</body>
</html>