<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/a.css" >
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/cart-min.css" >
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="flow-steps" id="flow-steps">

    <ol class="num5">
    <li class="done">
    <span class="first">1. 查看购物车</span></li>
    <li class="done current-prev">
    <span class=>2. 确认订单信息</span></li>
    <li class="last current">
    <span >3. 付款到支付宝</span></li>
    </ol>
</div>
</asp:Content>