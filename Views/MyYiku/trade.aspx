<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.OrderModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    已买到的宝贝
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <script type="text/javascript" src="../../Script/list/base.js"></script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>订单管理
            </div>
            <div class="msg view-help">
            </div>
        </div>
        <div class="bought-list">


            <table class="bought-table" id="J_BoughtTable" data-spm="9">
                <colgroup>
                    <col class="selector">
                    <col class="baobei">
                    <col class="price">
                    <col class="quantity">
                    <col class="after-service">
                    <col class="amount">
                    <col class="trade-status">
                    <col class="operate">
                    <col class="other">
                </colgroup>
                <thead>
                    <tr class="col-name">
                        <th>
                        </th>
                        <th class="baobei">
                            宝贝
                        </th>
                        <th class="price">
                            单价(元)
                        </th>
                        <th class="quantity">
                            数量
                        </th>
                        <th class="after-service">
                            售后
                        </th>
                        <th class="amount">
                            实付款(元)
                        </th>
                        <th class="amount">
                            交易状态
                        </th>
                        <th class="remark">
                            交易操作
                        </th>
                        <th class="other">
                            其它操作
                        </th>
                    </tr>
                    <tr class="sep-row">
                        <td colspan="9">
                        </td>
                    </tr>
                    <tr class="toolbar skin-gray">
                        <td colspan="7">

                        </td>
                        <td class="last-col" colspan="2">
                            <div class="paginator-top">
                                <div class="paginator-previous-grey g-u" href="" hidefocus="true">
                                    <span class="paginator-arrow paginator-arrow-left-grey"></span>
                                </div>
                                <div class="paginator-next g-u" href="">
                                    下一页 <span class="paginator-arrow paginator-arrow-right-grey"></span>
                                </div>
                            </div>
                        </td>
                    </tr>
                </thead>
                <% foreach(var ord in Model.Orders){ %>
                <tbody data-isarchive="false" data-orderid="226354351557261" data-status="TRADE_FINISHED"
                    class=" success-order xcard">
                    <tr class="sep-row">
                        <td colspan="9">
                        </td>
                    </tr>
                    
                    <tr class="order-hd">
                        <td colspan="9">
                            <span class="no">
                                <label>
                                    订单编号：<span class="order-num"><%: string.Format("{0:8D}",ord.OrID) %></span>
                                </label>
                                <span class="deal-time"><%: ord.Time %></span> <span class="seller">
                                <%: Html.ActionLink(ord.Item.User.Name,"Search","Item",new {Uname = ord.Item.User.Name }) %>
                                </span>
                        </td>
                    </tr>
                    <tr id="item226354351557261" class="order-bd last">
                        <td class="baobei" colspan="2">
                            <a target="_blank" hidefocus="true" title="查看宝贝详情" href="../../Item/Details/<%: ord.IID%>"
                                class="pic s50">
                                <img alt="查看宝贝详情" src="<%: "../../Content/Image/Item/"+ord.Item.thePictureRoute %>">
                            </a>
                            <div class="desc">
                                <%: Html.ActionLink(ord.Item.Name, "Details", "Item", new {Id = ord.IID} , new {Class ="baobei-name", target="_blank" } )%>
                            </div>
                        </td>
                        <td class="price" title="<%: ord.Item.Price %>">
                            <%: string.Format("{0:c}",ord.Item.Price) %>
                        </td>
                        <td class="quantity" title="1">
                            <%: string.Format("{0:d}",ord.Count) %>
                        </td>
                        <td class="after-service">
                            <!--司法拍卖、支付宝电影票交易、支付宝基金订单,网游订单不涉及售后信息-->
                            <a href="javascript:void(0)" class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
                                title="" target="_blank" url="http://support.taobao.com/myservice/aftersales/rights_redirect.jhtml?trade_id=226354351557261"
                                data-point-url="http://log.mmstat.com/listbought.1.12">申请售后</a> <a href="javascript:void(0)"
                                    class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger" title="" target="_blank"
                                    url="http://support.taobao.com/myservice/rules/rules_redirect.jhtml?trade_id=226354351557261"
                                    data-point-url="http://log.mmstat.com/listbought.1.12">投诉卖家</a>
                        </td>
                        <td class="amount" rowspan="1">
                            <strong><%: string.Format("{0:c}",ord.Cost) %></strong>
                        </td>
                        <td class="trade-status" rowspan="1">
                            <%: ord.State %>
                            <%if (ord.State == "buy")
                              { %>
                              <%: Html.ActionLink("前去付款", "cart2", "Cart", new {Id = ord.IID} ,null)%>
                            <%} %>
                        </td>
                        <td class="operate" rowspan="1">
                            <%: Html.ActionLink("再次购买", "Buy", "Item", new {Id = ord.IID} ,null)%>
                        </td>
                        <td class="other" rowspan="1">
                            <a class="J_DelOrder J_MakePoint" >删除</a>
                        </td>
                    </tr>
                    
                </tbody>
                <%} %>
                <tfoot>
                    <tr class="sep-row">
                        <td colspan="9">
                        </td>
                    </tr>
                    <tr class="toolbar skin-gray">
                        <td colspan="3">
                            <label>
                                <input type="checkbox" class="all-selector" id="J_AllSelector2">全选</label>
                            <a id="J_CombinPay2" href="javascript:void(0)" class="J_MakePoint toolbtn" data-point-url="http://log.mmstat.com/listbought.1.8">
                                合并付款</a> <a href="#" class="J_MakePoint toolbtn" data-point-url="http://log.mmstat.com/listbought.32"
                                    id="J_CombineAgentPay2">合并代付</a> <a id="J_BatchReceive2" href="javascript:void(0)"
                                        class="J_MakePoint toolbtn long-toolbtn" data-point-url="http://log.mmstat.com/listbought.1.11">
                                        批量确认收货</a>
                        </td>
                        <td class="page-nav-cell" colspan="6">
                            <ul class="page-nav">
                                <li class="curr-page"><a class="selected J_MakePoint" href="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;prePageNo=1&amp;clickMore=0&amp;pageNum=1"
                                    data-point-url="http://log.mmstat.com/listbought.1.27">1</a> </li>
                                <li><span>共1页 &nbsp;</span> </li>
                                <li><span>到第
                                    <input id="J_PageNum" type="text" name="pageNum" size="2" maxlengh="4">
                                    <span>页</span>
                                    <input id="J_JumpTo" type="button" value="确定" data-url="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;prePageNo=1&amp;clickMore=0&amp;tPage=1&amp;isJumpTo=true"
                                        data-point-url="http://log.mmstat.com/listbought.31" class="J_MakePoint">
                                </span></li>
                            </ul>
                        </td>
                    </tr>
                </tfoot>
            </table>

        </div>
        <!--end bought-list-->
    </div>
    <!--end main-content-->
</asp:Content>
