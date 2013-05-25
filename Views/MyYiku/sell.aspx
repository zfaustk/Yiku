<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.SellModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    卖出
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <style type="text/css">
        thead
        {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }
        th
        {
            height: 29px;
            border-bottom: 1px solid #aec7e5;
            background: url(../../Content/image/itemlist_bg.gif) repeat-x 0 0;
            text-align: center;
            color: #000;
        }
    </style>
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
                    <li class="selected"><a href="../MyYiku/sell"><span>我在卖的商品</span></a></li>
                    <li><a href="../Item/Create"><span>创建商品</span></a></li>
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
    <div class="item-list-bd">
        <table id="J_ListTable" style="width: 100%;">
            <colgroup>
                <col class="item-list-col0">
                <col class="item-list-col1">
                <!-- 宝贝 -->
                <col class="item-list-col2">
                <!-- 单价(元) -->
                <col class="item-list-col3">
                <!-- 数量 -->
                <col class="item-list-col4">
                <!-- 纠纷 -->
                <col class="item-list-col6">
                <!-- 买家 -->
                <col class="item-list-col7">
                <!-- 交易状态 -->
                <col class="item-list-col8">
                <!-- 实收款(元) -->
                <col class="item-list-col9">
                <!-- 评价 -->
            </colgroup>
            <thead>
                <tr>
                    <th>
                    </th>
                    <th class="item">
                        商品
                    </th>
                    <th class="price">
                        单价(元)
                    </th>
                    <th class="num">
                        库存
                    </th>
                    <th class="trouble">
                        售出
                    </th>
                    <th class="contact">
                        折扣
                    </th>
                    <th class="trade-status">
                        创建时间
                    </th>
                    <th class="order-price">
                        详情
                    </th>
                    <th class="remark">
                        操作
                    </th>
                </tr>
            </thead>
            <% foreach (var item in Model.Items)
               { %>
            <tbody>
                <tr>
                    <td>
                    </td>
                    <td class="item">
                        <%: Html.ActionLink(item.Name.Substring(0,(item.Name.Length > 20)?20:item.Name.Length), "Details", "Item", new{ Id = item.IID }, null) %>
                    </td>
                    <td class="price">
                        <%: String.Format("{0:c}",item.Price) %>
                    </td>
                    <td class="num">
                        <%: String.Format("{0:d}",item.Stock) %>
                    </td>
                    <td class="trouble">
                        <%: String.Format("{0:d}",item.Volume) %>
                    </td>
                    <td class="contact">
                        <%: item.Cut %>
                    </td>
                    <td class="trade-status">
                        <%: item.TimeCreate %>
                    </td>
                    <td class="order-price">
                        <%: item.Detail.Substring(0, (item.Detail.Length > 20)?20:item.Detail.Length) %>
                    </td>
                    <td class="remark">
                        <%: Html.ActionLink("修改", "Edit", "Item", new{ Id = item.IID }, null) %>
                    </td>
                </tr>
            </tbody>
            <%} %>
        </table>
    </div>
    <!--end main-content-->
</asp:Content>
