<%--
  Created by IntelliJ IDEA.
  User: Soya
  Date: 2019/3/20
  Time: 22:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3.org/TR/html4/frameset.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>项目信息</title>
    <meta http-equiv="pragma" content="no-cache">
    <meta http-equiv="cache-control" content="no-cache">
    <meta http-equiv="expires" content="0">
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/bootstrap.css"/>
    <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/css/iconfont.css"/>
    <script type="text/javascript" src="${pageContext.request.contextPath}/js/bootstrap/bootstrap.js"></script>
    <style>
        .mytable_button_div {
            text-align: right;
            padding-right: 10px;
            padding-top: 4px;
            padding-bottom: 4px;
        }
        .mytable_button{ padding:0; margin:0; height:18px;}
        .mytable_button li{
            list-style:none; margin-left:20px; float:right; width:70px; border-left:1px solid #EEF3FB;
            cursor:pointer;
        }
        .form_pro {
             font-size: 14px;
             color: rgb(51, 51, 51);
             border-collapse: collapse;
             width: 100%;
             border-color: rgb(200, 199, 204);
             margin: 0px;
         }

    </style>
<body>
<div class="container-fluid">
    <div style="height: 10px"></div>
    <div class="hero-unit">
        <div>
            <form class="form-search" style="margin-bottom: 0;">
                <table class="form_pro">
                    <tr>
                        <th class="form_head">一级编码包名：</th>
                        <td class="input-prepend input-append">
                            <input type="text" class="input-block-level" name="moduleName">
                            <span class="add-on iconfont icon-package"></span>
                        </td>

                        <th class="form_head">二级包名：</th>cc
                        <td class="input-prepend input-append">
                            <input type="text" class="input-block-level" name="model">
                            <span class="add-on iconfont icon-icon_package"></span>
                        </td>
                        <th class="form_head">表名：</th>
                        <td class="input-prepend input-append">
                            <input type="text" class="input-block-level" name="tableName" value="">
                            <span class="add-on iconfont icon-biaoge"></span>
                        </td>
                        <th class="form_head">作者：</th>
                        <td class="input-prepend input-append">
                            <input type="text" class="input-block-level" name="authorName" value="">
                            <span class="add-on iconfont icon-zuozhe"></span>
                        </td>
                    </tr>
                    <tr>
                        <th class="form_head">开发框架：</th>
                        <td class="">
                            <select class="input-block-level" name="frameType">
                                <option value="standard" >标准结构</option>
                                <option value="tree">树结构</option>
                                <option value="original" selected>原始结构</option>
                            </select>
                            <%--<span class="add-on iconfont icon-mn_kuangjia_fill"></span>--%>
                        </td>


                        <th class="form_head">菜单名称：</th>
                        <td class="input-prepend input-append">
                            <input type="text" class="input-block-level" name="resName">
                            <span class="add-on iconfont icon-caidan"></span>
                        </td>

                        <th class="form_head">页面风格：</th>
                        <td class="">
                            <select   class="input-block-level"  name="styleType"   >
                                <option value="">不生成页面</option>
                                <option value="style3" >增删改</option>
                                <option value="style1" >多面板</option>
                                <option value="style0" >工单流程</option>
                            </select>
                            <%--<span class="add-on iconfont icon-fenggepeizhi"></span>--%>
                        </td>
                        <th class="form_head">菜单选择：</th>
                        <td class="">
                            <button  type="button" class="input-block-level" style="cursor: pointer ;border: hidden" name=""   id="menu-choose">
                                <label   id="menuNmae"></label>
                                <i class="fa fa-compass" style="float: right" aria-hidden="true"></i>
                            </button>
                        </td>
                    </tr>
                    <tr>
                        <th class="form_head">增加附件：</th>
                        <td class="">
                            <input type="checkbox"  class="input-block-level" name="enableAttach" >
                        </td>

                        <th class="form_head">增加工作流：</th>
                        <td class="">
                            <input type="checkbox"  class="input-block-level" name="enableWorkflow" >
                        </td>
                    </tr>
                </table>
            </form>
            <div class="clear" style="margin-bottom:2px;"></div>
            <div class="mytable_button_div" id="mytable_button_div">
                <ul class="mytable_button">
                    <li id="queryBtn"><i class="iconfont icon-jiexicanshu"></i><span>解析</span></li>
                    <li id="editBtn"><i class="iconfont icon-weibiaoti46"></i><span>生成</span></li>
                    <li id="allSelectBtn"><i class="iconfont icon-total_selection"></i><span>全选</span></li>
                    <li id="defaultBtn"><i class="iconfont icon-moren1"></i><span>默认</span></li>
                </ul>
            </div>
        </div>
    </div>
</div>

</div>
</body>
</html>
