<%@ Page Language="C#"  MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.LogOnModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	登录依库
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">

<link rel="Stylesheet"  type="text/css"  href="../../Content/login.css">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="wrapper">
  <div id="header_Log">
      <a href="" class="logo_log">登录依库</a>
  </div>

<div id="content">
  <h1>登录依库</h1>
<div class="article">
      

<% using (Html.BeginForm()) {
       if (ViewData["ErrorMessage"] != null)
       {%>
    
    <div id="item-error" >
        <p class="error"><%:ViewData["ErrorMessage"]%></p>
    </div>
    <%} %>
    <div class="item">
            <label>帐号</label> 
            <%: Html.TextBoxFor(m => m.UserName) %>
            <%: Html.ValidationMessageFor(m => m.UserName) %>
    </div>
    <div class="item">
            <label>密码</label>

            <%: Html.PasswordFor(m => m.Password) %>
            <%: Html.ValidationMessageFor(m => m.Password) %>
    </div>
      
    <div class="item">
        <label>&nbsp;</label>
        <p class="remember">
            <%: Html.CheckBoxFor(m => m.RememberMe) %>
            <label for="remember" class="remember">下次自动登录</label>
        </p>
    </div>
    <div class="item">
        <label>&nbsp;</label>
        <input value="登录" name="user_login" class="btn-submit" tabindex="5" type="submit">
    </div>
<% } %>

  </div>
  <ul id="side-nav" class="aside">
    <li>&gt;&nbsp;还没有依库帐号？<%: Html.ActionLink("立即注册", "Register") %></li>
  </ul>
</div>
<div id="footer">


<span id="icp" class="fleft gray-link">
    © 2013-? yiku.com, all rights reserved
</span>


</div>





</div>







</asp:Content>