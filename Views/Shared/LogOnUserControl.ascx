<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div role="navigation" id="site-nav"><div id="sn-bd"><div class="sn-container">

<link rel="stylesheet" href="../../Content/a_0022.css">
<link rel="stylesheet" href="../../Content/T1pKTWXcReXXX7spjX.css" type="text/css" media="screen">			
<link rel="stylesheet" href="../../Content/T10szYXgRaXXX7spjX.css" type="text/css" media="screen">							
<link rel="stylesheet" href="../../Content/MainPage_.css">

<b class="sn-edge"></b>
    <%
        if (Request.IsAuthenticated) {
    %>
    
    <ul class="sn-quick-menu">
        <li class="sn-mybrand">
            <%: Html.ActionLink(Page.User.Identity.Name + "的依库", "Index", "MyYiku", null, new { target="_top" , Class = "white" })%>            
            <%: Html.ActionLink("登出", "LogOff", "Account", null, new { Class = "white" })%>
        </li>
        <li class="sn-mybrand">
            <%: Html.ActionLink("已卖出的商品", "sell", "MyYiku", null, new { target = "_top", Class = "white" })%>    
        </li>
        <li class="sn-mybrand">
            <%: Html.ActionLink("已买到的商品", "trade", "MyYiku", null, new { target = "_top", Class = "white" })%>    
        </li>
        <li class="sn-mybrand">
            <%: Html.ActionLink("购物车", "Cart", "MyYiku", null, new { target = "_top", Class = "white" })%>
        </li>
        <li class="sn-mybrand">
            <%: Html.ActionLink("收藏的商品", "Collect", "MyYiku", null, new { target = "_top", Class = "white" })%>  
        </li>
        <li class="sn-home">
            <a href="../Home/" Class = "white">依库网</a>
        </li>
        
    </ul>
        
    <%
        }
        else {
    %> 
    <p id="login-info" class="sn-login-info">喵，欢迎来依库！
        <%: Html.ActionLink("请登录", "LogIn", "Account", null,new {Class = "white"}) %>
        <%: Html.ActionLink("免费注册", "Register", "Account", null, new { Class = "white" })%>
        <i class="sn-separator"></i>
    </p>
    <%
        }
    %>
</div></div></div>

    

