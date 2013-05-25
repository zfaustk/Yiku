<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.CollectModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    我的收藏
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>我的收藏
            </div>
        </div>
        <div id="collect" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="#" data-spm-anchor-id="0.0.0.0"><span>收藏的宝贝</span></a>
                    </li>
                    <li><a href="#"><span>收藏的卖家</span></a> </li>
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
                    <table class="bought-table" id="J_BoughtTable" style="width: 100%">
                        <thead style="width: 100%">
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
                                <th class="amount">
                                    折后价
                                </th>
                                <th class="remark">
                                    加入购物车
                                </th>
                                <th class="other">
                                    操作
                                </th>
                            </tr>
                            <tr class="sep-row">
                                <td colspan="6">
                                </td>
                            </tr>
                        </thead>
                        <% foreach (var clm in Model.Collections)
                           { %>
                        <tbody class=" success-order xcard">
                            <tr class="sep-row">
                                <td colspan="6">
                                </td>
                            </tr>
                            <tr class="order-hd">
                                <td colspan="1">
                                    <span class="no">商家 </span>
                                </td>
                                <td colspan="6">
                                    <span class="no"><%: Html.ActionLink(clm.User.Name, "Index", "User", new { ID = clm.User.UID }, null )%></span>
                                </td>
                            </tr>
                            <tr class="order-bd last">
                                <td class="baobei" colspan="2">
                                    <a target="_blank" hidefocus="true" title="查看宝贝详情" href="#“" class="pic s50">
                                        <img alt="查看宝贝详情" src="http://img04.taobaocdn.com/bao/uploaded/i4/17114019395186948/T1qdE0XfddXXXXXXXX_!!0-item_pic.jpg_sum.jpg ">
                                    </a>
                                    <div class="desc">
                                        <%: Html.ActionLink(clm.Name, "Detail", "Item", new { ID = clm.IID } , new { Class="baobei-name", target="_blank" })%>
                                        <span class="good-icons"></span>
                                        <div class="spec">
                                        </div>
                                    </div>
                                </td>
                                <td class="price" title="4720.00">
                                    4720.00
                                </td>
                                <td class="quantity" title="1">
                                    stock
                                </td>
                                <td class="amount" rowspan="1">
                                    <strong>4565.00</strong>
                                    <p class="post-type">
                                        (含免运费:45.00 )
                                    </p>
                                    <img alt="您已使用信用卡付款" title="您已使用信用卡付款" src="http://assets.taobaocdn.com/sys/common/icon/trade/xcard.png">
                                </td>
                                <td class="trade-status" rowspan="1">
                                    <a href="#" target="_blank" class="J_MakePoint status success">加入购物车 </a>
                                </td>
                                <td class="other" rowspan="1">
                                    <a class="J_DelOrder J_MakePoint" data-action="delOrder" data-point-url="http://log.mmstat.com/listbought.1.1"
                                        href="javascript:void(0)">删除</a> <a class=" J_MakePoint" data-memo-url="orderid=226354351557261&amp;isArchive=false"
                                            title="编辑备忘信息，仅自己可见" href="http://trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=226354351557261&amp;buyerId=832256172&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=false&amp;logisticsService=&amp;visibility=true"
                                            data-point-url="http://log.mmstat.com/listbought.1.15">备忘</a>
                                    <div class="J_ShareSNS sns-share">
                                        <a href="#" data-param="{&quot;type&quot;:&quot;item&quot;,&quot;itemid&quot;:&quot;22253604649&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;}"
                                            data-name="226354351557261" class="J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.14">
                                            分享 </a>
                                    </div>
                                </td>
                            </tr>
                        </tbody>
                        <%} %>
                        <tfoot style="width: 100%">
                            <tr class="sep-row">
                                <td colspan="6">
                                </td>
                            </tr>
                            <tr class="toolbar skin-gray">
                                <td class="page-nav-cell" colspan="7">
                                    <ul class="page-nav">
                                        <li class="curr-page"><a class="selected J_MakePoint" href="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;prePageNo=1&amp;clickMore=0&amp;pageNum=1"
                                            data-point-url="http://log.mmstat.com/listbought.1.27">1</a> </li>
                                        <li><span>共<%: Model.pageCount %>页 &nbsp;</span> </li>
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
            </div>
        </div>
    </div>
    <!--end main-content-->
</asp:Content>
