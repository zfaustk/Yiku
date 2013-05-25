<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MyYiku.master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.DataBase.Item>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Create
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>我的宝贝
            </div>
        </div>
        <div id="selllist" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="#" data-spm-anchor-id="0.0.0.0"><span>宝贝管理</span></a>
                    </li>
                </ul>
                <ul class="tab-sub">
                    <li ><a href="../MyYiku/sell"><span>我在卖的商品</span></a></li>
                    <li class="selected"><a href="../Item/Create"><span>创建商品</span></a></li>
                    <li><a href="#"><span>修改商品信息</span></a></li>
                </ul>
            </div>
            <div class="sns-box box-detail">
                <div class="bd">
                    <div class="sns-nf">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="item-list-bd parts" style = "padding-left:40px;">
        <% using (Html.BeginForm())
           {%>
        <%: Html.ValidationSummary(true) %>

            <div class="editor-label">
                商品名
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Name, new { style = "margin-left:40px;", Class = "f-txt" })%>
                <%: Html.ValidationMessageFor(model => model.Name) %>
            </div>

            <div class="editor-label">
                描述
            </div>
            <div class="editor-field">
                <%: Html.TextAreaFor(model => model.Detail, new { style = "margin-left:40px;", Class = "f-txt" })%>
                <%: Html.ValidationMessageFor(model => model.Detail) %>
            </div>
            <div class="editor-label">
                库存量
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Stock, new { style = "margin-left:40px;", Class = "f-txt" })%>
                <%: Html.ValidationMessageFor(model => model.Stock) %>
            </div>

            <div class="editor-label">
                价格
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Price, new { style = "margin-left:40px;", Class = "f-txt" })%>
                <%: Html.ValidationMessageFor(model => model.Price) %>
            </div>

            <div class="editor-label">
                优惠活动
            </div>
            <div class="editor-field">
                <%: Html.TextBoxFor(model => model.Cut, new { style = "margin-left:40px;", Class = "f-txt" })%>
                <%: Html.ValidationMessageFor(model => model.Cut) %>
            </div>

            <p>
                <input type="submit" value="Create" />
            </p>
        <% } %>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
