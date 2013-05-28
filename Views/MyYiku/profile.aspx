<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.DataBase.User>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    个人资料
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <!-- end vmcommon/mytaobao -->
    <style>
        .Submit_
        {
            border:none; 
            width:80px; 
            height:50px; 
            margin:20px; 
            background-color: #C3B360;
            border-radius: 5px;
            transition: .1s;
            color: #FCFCFD;
            font-size: 20px;
        }
        .Submit_:hover
        {
            
            background-color: #7F7140;
            border-radius: 8px; 
        }
    </style>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>个人信息管理
            </div>
        </div>
        <div id="profile" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="../MyYiku/profile"><span>个人资料</span></a> </li>
                    <li ><a href="../Account/ChangePassword"><span>隐私设置</span></a> </li>
                </ul>
                <%--<ul class="tab-sub">
                                    <li class="selected"><a href="base_info_set.htm"><span>基本资料</span></a></li>
                                    <li><a href="headset.htm?tracelog=Photo011"><span>头像照片</span></a></li>
                                    <li><a href="school.htm"><span>教育情况</span></a></li>
                                    <li><a href="job.htm"><span>工作情况</span></a></li>
                                </ul>--%>
            </div>
            <div class="sns-box box-detail">
                <div class="bd">
                    <div class="sns-nf">
                        <!--step start-->
                        <div class="pf-step J_PfStep" data-param="{&quot;current&quot;: 0, &quot;expect&quot;: 30, &quot;msg&quot;: &quot;0%，&lt;a href='/user/base_info_set.htm'&gt;完成真实姓名&lt;/a&gt;+10%&quot;, &quot;width&quot;: 145}">
                            <span>资料完整度：</span> <b class="pf-step-box"><b class="pf-current J_PfCurrent" style="width: 0%;">
                            </b>
                                <%int J_width = 100;
                                  if (Model.Address == null) J_width -= 25;
                                  if (Model.Consignee == null) J_width -= 25;
                                  if (Model.Tel == null) J_width -= 25;
                                  if (Model.ZipCode == null) J_width -= 25; %>
                                <b class="pf-expect J_PfExpect" style="width: <%:J_width %>%"></b></b>
                        </div>
                        <!--step end-->
                        <div style="font-size: 15px; margin: 10px 0;">
                            亲爱的<b><%: Model.Name%></b>，填写真实的资料，有助于好友找到你哦。</div>
                        <form id="baseInfoForm" name="baseInfoForm" method="post" class="infoForm">
                        <div id="main-profile" class="parts">
                            <%--<p>
                                                <label for="">
                                                    当前头像：</label>
                                                <span class="pf-avatar-box"><a class="pf-avatar">
                                                    <img src="http://a.tbcdn.cn/p/sns/1.0/img/default/avatar-80.png" alt="" width="80"
                                                        height="80">
                                                </a><a href="http://i.taobao.com/user/headset.htm" class="pf-edit-avatar" style="display: none;">
                                                    编辑头像</a> </span>
                                            </p>--%>
                            <p>
                                <label>
                                    地址：<em>*</em></label>
                                <%: Html.TextBoxFor(m => m.Address, new { style = "width:360px; margin-left:40px;" , Class= "f-txt"})%>
                            </p>
                            <p>
                                <label>
                                    收件人：<em>*</em></label>
                                <%: Html.TextBoxFor(m => m.Consignee, new { style = "width:360px; margin-left:28px;", Class = "f-txt" })%>
                            </p>
                            <p>
                                联系电话：<em>*</em></label>
                                <%: Html.TextBoxFor(m => m.Tel, new { style = "width:360px; margin-left:16px;", Class = "f-txt" })%>
                            </p>
                            <p>
                                邮编：<em>*</em></label>
                                <%: Html.TextBoxFor(m => m.ZipCode, new { style = "width:360px; margin-left:40px;", Class = "f-txt" })%>
                            </p>
                            <p>
                                已获积分：</label>
                                <%: Model.Point%>
                            </p>
                            
                        </div>
                        <div class="act skin-blue">
                            <span class="btn n-btn">
                                
                                <button type="submit" id="J_saveProfile" class="Submit_">
                                    保存</button>
                            </span></div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--end main-content-->
</asp:Content>
