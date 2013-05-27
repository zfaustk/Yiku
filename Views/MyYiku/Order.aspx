<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.OrderModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    出售列表
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <script type="text/javascript" src="../../Script/list/base.js"></script>
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
                <span>&gt;</span><span>&gt;</span>我的订单
            </div>
        </div>
        <div id="selllist" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="#" data-spm-anchor-id="0.0.0.0"><span>售出的宝贝</span></a>
                    </li>
                </ul>
                <%--<ul class="tab-sub">
                    <li class="selected">
                    <%: Html.ActionLink("所有订单","Order","MyYiku",null,null) %>
                    </li>
                    <li><%: Html.ActionLink("未付款宝贝","Order","MyYiku",new { Pay = true },null) %></li>
                    <li><%: Html.ActionLink("已付款宝贝","Order","MyYiku",new { Pay = true },null) %></li>
                </ul>--%>
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
                        编号
                    </th>
                    <th class="order-price">
                        时间
                    </th>
                    <th class="item">
                        宝贝
                    </th>
                    <th class="price">
                        单价(元)
                    </th>
                    <th class="num">
                        数量
                    </th>
                    <th class="trouble">
                        买家
                    </th>
                    <th class="contact">
                        实收款(元)
                    </th>
                    <th class="trade-status">
                        交易状态
                    </th>
                    <th class="remark">
                        评价
                    </th>
                </tr>
            </thead>
            <% foreach (var ord in Model.Orders)
               { %>
            <tbody data-isarchive="false" data-orderid="226354351557261" data-status="TRADE_FINISHED"
                class=" success-order xcard">
                <tr class="sep-row">
                    <td colspan="9">
                    </td>
                </tr>
                <tr class="order-bd last">
                    <td class="baobei">
                        <span class="order-num">
                            <%: string.Format("{0:00000000}",ord.OrID) %></span>
                    </td>
                    
                    <td class="baobei" colspan="1">
                        <a target="_blank" hidefocus="true" title="查看宝贝详情" href="../../Item/Details/<%: ord.IID%>"
                            class="pic s50">
                            <img alt="查看宝贝详情" src="<%: "../../Content/Image/Items/"+ord.Item.thePictureRoute %>"
                                style="width: 50px;">
                        </a>
                        <div class="desc">
                            <%: Html.ActionLink(ord.Item.Name, "Details", "Item", new {Id = ord.IID} , new {Class ="baobei-name", target="_blank" } )%>
                        </div>
                    </td>
                    <td>
                        <span class="deal-time">
                            <%: string.Format("{0:D}",ord.Time) %>
                        </span>
                        <div>
                            <%: string.Format("{0:T}",ord.Time) %>
                        </div>
                    </td>
                    <td class="price" title="<%: ord.Item.Price %>">
                        <%: string.Format("{0:c}",ord.Item.Price) %>
                    </td>
                    <td class="quantity" title="1">
                        <%: string.Format("{0:d}",ord.Count) %>
                    </td>
                    <td class="after-service">
                        <%: Html.ActionLink(ord.User.Name,"Search","Item",new {Uname = ord.User.Name },null) %>
                    </td>
                    <td class="amount" rowspan="1">
                        <strong>
                            <%: string.Format("{0:c}",ord.Cost) %></strong>
                    </td>
                    <td class="trade-status" rowspan="1">
                        <%: ord.State %>
                        <%if (ord.State == "pay")
                          { %>
                          <div>
                        <%: Html.ActionLink("发货", "Dealed", "Cart", new { Id = ord.OrID }, null)%>
                            </div>
                        <%} %>
                    </td>
                    <td class="operate" rowspan="1">
                        <%: Html.ActionLink("修改此商品", "Edit", "Item", new {Id = ord.IID} ,null)%>
                    </td>

                </tr>
            </tbody>
            <%} %>
        </table>
    </div>
    <!--end main-content-->
</asp:Content>
