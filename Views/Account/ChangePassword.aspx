<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.ChangePasswordModel>" %>

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
                <h2>
                    更改密码</h2>
                <p>
                    请使用以下表单更改密码。
                </p>
                <p>
                    新密码的长度至少为
                    <%: ViewData["PasswordLength"] %>
                    个字符。
                </p>
                <% using (Html.BeginForm())
                   { %>
                <%: Html.ValidationSummary(true, "密码更改不成功。请更正错误并重试。") %>
                <div id="main-profile" class="parts" style="font-size: 15px; margin: 10px 0;">
                    <fieldset>
                        <legend>帐户信息</legend>
                        <div class="editor-label">
                            <%: Html.LabelFor(m => m.OldPassword)%>
                        </div>
                        <div class="editor-field">
                            <%: Html.PasswordFor(m => m.OldPassword, new { style = "width:168px; margin-left:40px;", Class = "f-txt" })%>
                            <%: Html.ValidationMessageFor(m => m.OldPassword) %>
                        </div>
                        <div class="editor-label">
                            <%: Html.LabelFor(m => m.NewPassword) %>
                        </div>
                        <div class="editor-field">
                            <%: Html.PasswordFor(m => m.NewPassword, new { style = "width:168px; margin-left:40px;", Class = "f-txt" })%>
                            <%: Html.ValidationMessageFor(m => m.NewPassword) %>
                        </div>
                        <div class="editor-label">
                            <%: Html.LabelFor(m => m.ConfirmPassword) %>
                        </div>
                        <div class="editor-field">
                            <%: Html.PasswordFor(m => m.ConfirmPassword, new { style = "width:168px; margin-left:40px;", Class = "f-txt" })%>
                            <%: Html.ValidationMessageFor(m => m.ConfirmPassword) %>
                        </div>
                        <p>
                            <input type="submit" value="更改密码" />
                        </p>
                    </fieldset>
                </div>
                <% } %>
            </div>
    </div>
    </div>
    <!--end main-content-->
</asp:Content>
