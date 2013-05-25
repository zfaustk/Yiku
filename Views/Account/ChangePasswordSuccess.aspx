<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    个人资料
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ScriptContent" runat="server">
    <!-- end vmcommon/mytaobao -->
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
                    <li><a href="../MyYiku/profile"><span>个人资料</span></a> </li>
                    <li class="selected"><a href="../Account/ChangePassword"><span>隐私设置</span></a> </li>
                </ul>
            </div>
            <div class="sns-nf">


                <div id="main-profile" class="parts" style="font-size: 15px; margin: 10px 0;">
                    密码修改成功
                </div>

            </div>
        </div>
    </div>
    <!--end main-content-->
</asp:Content>

