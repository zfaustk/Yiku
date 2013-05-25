<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

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
        <div class="remide-box" id="J_Remide" data-spm="7">
            <h3>
                我的交易提醒：</h3>
            <ul>
                <li><a href="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;auctionStatus=NOT_PAID">
                    待付款<span class="num">(0)</span></a></li>
                <li><a href="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;auctionStatus=SEND">
                    待确认收货<span class="num">(0)</span></a></li>
                <li><a href="http://trade.taobao.com/trade/itemlist/listBoughtItems.htm?action=itemlist/QueryAction&amp;event_submit_do_query=1&amp;auctionStatus=ALL&amp;commentStatus=I_HAS_NOT_COMMENT">
                    待评价<span class="num">(0)</span></a></li>
            </ul>
        </div>
        <div class="bought-list">
            <!-- <div style="float: left;z-index:9999;" class="msg secure-tips"><p class="alert naked h"><a href="https://hi.alipay.com/campaign/account.htm" target="_blank"><font color=red>淘宝支付宝联合送礼：百万礼品随意挑，来抢吧！</font></a></p></div>
 -->
            <form class="skin-gray clearfix bought-search " action="?search" method="post" id="J_QueryConditionForm">
            <!--bought-search-more -->
            <input id="submitNameId" type="hidden" name="event_submit_do_query" value="1">
            <input type="hidden" id="myAction" name="action" value="itemlist/QueryAction">
            <input type="hidden" name="user_type" value="0">
            <input type="hidden" id="order" name="order" value="">
            <input type="hidden" id="visibility" name="visibility" value="">
            <input type="hidden" id="J_FormExpandCls" name="wrap" value="">
            <input type="hidden" name="queryBizType" value="">
            <label for="J_BaobeiName">
                宝贝名称：</label>
            <input type="text" size="50" id="J_BaobeiName" name="auctionTitle" value="" maxlength="30">
            <button class="J_MakePoint button search-btn" type="submit" data-point-url="http://log.mmstat.com/listbought.1.17">
                搜索</button>
            <ul id="J_MoreControl" class="search-filter">
                <li class="col1">
                    <label>
                        成交时间:</label>&nbsp;&nbsp; 从
                    <input type="text" size="10" id="J_BeginTime" name="bizOrderTimeBegin" value="">
                    到
                    <input type="text" size="10" id="J_EndTime" name="bizOrderTimeEnd" value="">
                </li>
                <li class="col2">
                    <label for="J_NickName">
                        卖家昵称：</label>&nbsp;&nbsp;<input type="text" name="sellerNick" size="15" id="J_NickName"
                            value="">
                </li>
                <li class="col3">
                    <label for="J_ReviewStatus">
                        评价状态：</label>
                    <select id="J_ReviewStatus" class="J_NiceSelect" name="commentStatus">
                        <option value="ALL">全部</option>
                        <option value="I_HAS_NOT_COMMENT">需我评价</option>
                        <option value="I_HAS_COMMENT">我已评价</option>
                        <option value="_HAS_COMMENT">对方已评</option>
                        <option value="ALL_COMMENT">双方已评</option>
                    </select>
                </li>
                <li class="col1 ">
                    <label for="J_TradeStatus">
                        交易状态：</label>
                    <select id="J_TradeStatus" class="J_NiceSelect" name="auctionStatus">
                        <option value="ALL">全部</option>
                        <option value="NOT_PAID">等待买家付款</option>
                        <option value="PAID">买家已付款</option>
                        <option value="SEND">卖家已发货</option>
                        <option value="SUCCESS">交易成功</option>
                        <option value="DROP">交易关闭</option>
                        <option value="REFUNDING">退款中的订单</option>
                    </select>
                </li>
                <li class="col2">
                    <label for="J_AfterServiceStatus">
                        售后服务：</label>
                    <select name="tradeDissension" class="J_NiceSelect" id="J_AfterServiceStatus">
                        <option value="ALL">全部</option>
                        <option value="ACCUSED">已投诉</option>
                        <option value="REFUNDING">退款中</option>
                    </select>
                </li>
            </ul>
            </form>
            <form action="" method="post" id="J_BoughtListForm">
            <input id="J_Token" type="hidden" name="_tb_token_" value="BpL49Ws9oBm">
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
                        <th class="trade-status">
                            <div class="trade-status">
                                <select id="J_TradeStatusHandle">
                                    <option data-msg="交易状态" value="ALL">交易状态</option>
                                    <option data-msg="等待买家付款" value="NOT_PAID">等待买家付款</option>
                                    <option data-msg="买家已付款" value="PAID">买家已付款</option>
                                    <option data-msg="卖家已发货" value="SEND">卖家已发货</option>
                                    <option data-msg="交易成功" value="SUCCESS">交易成功</option>
                                    <option data-msg="交易关闭" value="DROP">交易关闭</option>
                                    <option data-msg="退款中的订单" value="REFUNDING">退款中的订单</option>
                                </select>
                            </div>
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
                            <label>
                                <input type="checkbox" class="all-selector" id="J_AllSelector">全选</label>
                            <a href="#" class="J_MakePoint toolbtn" data-point-url="http://log.mmstat.com/listbought.1.8"
                                id="J_CombinPay">合并付款</a> <a href="#" class="J_MakePoint toolbtn" data-point-url="http://log.mmstat.com/listbought.32"
                                    id="J_CombineAgentPay">合并代付</a> <a href="#" class="J_MakePoint toolbtn long-toolbtn"
                                        data-point-url="http://log.mmstat.com/listbought.1.11" id="J_BatchReceive">批量确认收货</a>
                            <span id="J_xCardTip" style="display: none;">如想使用信用卡付款，请只选择带有
                                <img src="http://a.tbcdn.cn/sys/common/icon/trade/xcard.png" alt="支持信用卡支付" title="支持信用卡支付">
                                标识的宝贝</span>
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
                                    <input type="checkbox" class="selector" id="cb226354351557261" name="biz_order_id"
                                        value="226354351557261" disabled="disabled">
                                    订单编号：<span class="order-num">226354351557261</span>
                                </label>
                                <input type="hidden" name="payOrderId_226354351557261" id="payOrderId_226354351557261"
                                    value="226354351557261">
                                <input type="hidden" name="tradeStatus_226354351557261" id="tradeStatus_226354351557261"
                                    value="TRADE_FINISHED">
                            </span><span class="deal-time">成交时间：2013-02-16 19:35</span> <span class="seller"><a
                                target="_blank" class="nickname J_MakePoint" title="叶落方知天下秋" href="http://store.taobao.com/shop/view_shop.htm?user_number_id=52147114"
                                data-point-url="http://log.mmstat.com/listbought.1.21">叶落方知天下秋</a> <span class="ww-light ww-small"
                                    data-nick="叶落方知天下秋" data-icon="small" data-tnick="叶落方知天下秋" data-display="inline"
                                    data-item="$bizOrder.itemID:226354351557261" data-point-url="http://log.mmstat.com/listbought.1.13">
                                    <a href="http://www.taobao.com/webww/?ver=1&amp;&amp;touid=cntaobao%E5%8F%B6%E8%90%BD%E6%96%B9%E7%9F%A5%E5%A4%A9%E4%B8%8B%E7%A7%8B&amp;siteid=cntaobao&amp;status=2&amp;portalId=&amp;gid=$bizOrder.itemID:226354351557261&amp;itemsId="
                                        target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。">
                                        <span>旺旺在线</span></a></span> </span>
                            <input type="hidden" name="sellerId" value="52147114">
                            <input type="hidden" name="buyerId" value="832256172">
                            <input type="hidden" name="payOrderId_226354351557261" id="payOrderId_226354351557261"
                                value="226354351557261">
                            <input type="hidden" name="tradeStatus_226354351557261" id="tradeStatus_226354351557261"
                                value="TRADE_FINISHED">
                        </td>
                    </tr>
                    <tr id="item226354351557261" class="order-bd last">
                        <td class="baobei" colspan="2">
                            <a target="_blank" hidefocus="true" title="查看宝贝详情" href="http://trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=226354351557261"
                                class="pic s50">
                                <img alt="查看宝贝详情" src="http://img04.taobaocdn.com/bao/uploaded/i4/17114019395186948/T1qdE0XfddXXXXXXXX_!!0-item_pic.jpg_sum.jpg ">
                            </a>
                            <div class="desc">
                                <a class="baobei-name" target="_blank" href="http://trade.taobao.com/trade/detail/tradeSnap.htm?tradeID=226354351557261">
                                    Asus/华硕 N56XI361VZ-SL I7四核GT650M/升级GTX660M 15寸笔记本 </a><span class="good-icons"><a
                                        title="保障卡" href="http://trade.taobao.com/trade/security/security_card.htm?bizOrderId=226354351557261"
                                        target="_blank">
                                        <img src="http://img02.taobaocdn.com/tps/i2/T1S4ysXh8pXXXXXXXX-52-16.png">
                                    </a></span>
                                <div class="spec">
                                    <span>颜色分类: 黑色</span><span>笔记本套餐: 套餐四</span>
                                </div>
                            </div>
                        </td>
                        <td class="price" title="4720.00">
                            4720.00
                        </td>
                        <td class="quantity" title="1">
                            1
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
                            <strong>4565.00</strong>
                            <p class="post-type">
                                (含免运费:45.00 )
                            </p>
                            <img alt="您已使用信用卡付款" title="您已使用信用卡付款" src="http://assets.taobaocdn.com/sys/common/icon/trade/xcard.png">
                        </td>
                        <td class="trade-status" rowspan="1">
                            <a href="http://trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=226354351557261"
                                target="_blank" data-point-url="http://log.mmstat.com/listbought.1.19" class="J_MakePoint status success">
                                交易成功 </a><span><a href="http://trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=226354351557261"
                                    target="_blank" class="detail-link J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.29">
                                    订单详情</a> </span><a href="http://wuliu.taobao.com/user/order_detail_new.htm?trade_id=226354351557261&amp;seller_id=52147114"
                                        class="view-logistics J_MakePoint" target="_blank" data-point-url="http://log.mmstat.com/listbought.1.28">
                                        查看物流</a>
                            <div class="remark-status">
                                双方已评</div>
                        </td>
                        <td class="operate" rowspan="1">
                            <a href="http://rate.taobao.com/append_rate.htm?biz_order_id=226354351557261&amp;is_archive=false"
                                target="_blank" class="J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.6">
                                追加评论</a>
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
                <tbody data-isarchive="true" data-orderid="191088028287261" data-status="TRADE_FINISHED"
                    class=" success-order">
                    <tr class="sep-row">
                        <td colspan="9">
                        </td>
                    </tr>
                    <tr class="order-hd">
                        <td colspan="9">
                            <span class="no">
                                <label>
                                    <input type="checkbox" class="selector" id="cb191088028287261" name="biz_order_id"
                                        value="191088028287261" disabled="disabled">
                                    <span class="g-u"><a href="http://www.tmall.com">
                                        <img src="http://img02.taobaocdn.com/tps/i2/T1F9jSXlXjXXb.cabb-23-18.png"></a>
                                    </span>订单编号：<span class="order-num">191088028287261</span>
                                </label>
                                <input type="hidden" name="payOrderId_191088028287261" id="payOrderId_191088028287261"
                                    value="191088028287261">
                                <input type="hidden" name="tradeStatus_191088028287261" id="tradeStatus_191088028287261"
                                    value="TRADE_FINISHED">
                            </span><span class="deal-time">成交时间：2013-01-22 16:00</span> <span class="seller"><a
                                target="_blank" class="nickname J_MakePoint" title="鼎信网络充值专营店" href="http://store.taobao.com/shop/view_shop.htm?user_number_id=784630040"
                                data-point-url="http://log.mmstat.com/listbought.1.21">鼎信网络充...</a> <span class="ww-light ww-small"
                                    data-nick="鼎信网络充值专营店" data-icon="small" data-tnick="鼎信网络充值专营店" data-display="inline"
                                    data-item="$bizOrder.itemID:191088028287261" data-point-url="http://log.mmstat.com/listbought.1.13">
                                    <a href="http://www.taobao.com/webww/?ver=1&amp;&amp;touid=cntaobao%E9%BC%8E%E4%BF%A1%E7%BD%91%E7%BB%9C%E5%85%85%E5%80%BC%E4%B8%93%E8%90%A5%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;portalId=&amp;gid=$bizOrder.itemID:191088028287261&amp;itemsId="
                                        target="_blank" class="ww-inline ww-online" title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。">
                                        <span>旺旺在线</span></a></span> </span>
                            <input type="hidden" name="sellerId" value="784630040">
                            <input type="hidden" name="buyerId" value="832256172">
                            <input type="hidden" name="payOrderId_191088028287261" id="payOrderId_191088028287261"
                                value="191088028287261">
                            <input type="hidden" name="tradeStatus_191088028287261" id="tradeStatus_191088028287261"
                                value="TRADE_FINISHED">
                        </td>
                    </tr>
                    <tr id="item191088028287261" class="order-bd last">
                        <td class="baobei" colspan="2">
                            <a target="_blank" hidefocus="true" title="查看宝贝详情" href="http://buy.taobao.com/auction/buy_now.jhtml?item_id_num=13463737147"
                                class="pic s50">
                                <img alt="查看宝贝详情" src="http://img02.taobaocdn.com/bao/uploaded/i2/T1wv1RXjXoXXaxyJvb_123448.jpg_sum.jpg ">
                            </a>
                            <div class="desc">
                                <a class="baobei-name" target="_blank" href="http://buy.taobao.com/auction/buy_now.jhtml?item_id_num=13463737147">
                                    上海移动话费充值50元 及时到账 自动发货 </a><span class="good-icons"><a class="xb-description" href="http://www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id="
                                        title="消费者保障服务，卖家承诺如实描述" target="_blank"></a><a class="xb-quality" href="http://www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id="
                                            title="消费者保障服务，卖家承诺假一赔三" target="_blank"></a></span>
                                <div class="spec">
                                </div>
                            </div>
                        </td>
                        <td class="price" title="49.66">
                            49.66
                        </td>
                        <td class="quantity" title="1">
                            1
                        </td>
                        <td class="after-service">
                            <!--司法拍卖、支付宝电影票交易、支付宝基金订单,网游订单不涉及售后信息-->
                            <a href="javascript:void(0)" class="tousu-weiquan J_MakePoint J_HasBuy J_ApplyRepayTrigger"
                                title="" target="_blank" url="http://support.taobao.com/myservice/rules/rules_redirect.jhtml?trade_id=191088028287261"
                                data-point-url="http://log.mmstat.com/listbought.1.12">投诉卖家</a>
                        </td>
                        <td class="amount" rowspan="1">
                            <strong>49.66</strong>
                            <p class="post-type">
                                (自动充值)
                            </p>
                        </td>
                        <td class="trade-status" rowspan="1">
                            <a href="http://trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=191088028287261"
                                target="_blank" data-point-url="http://log.mmstat.com/listbought.1.19" class="J_MakePoint status success">
                                交易成功 </a><span><span class="vuinfo-icon" data-url="biz_order_id=191088028287261&amp;user_type=1&amp;archive=true">
                                </span><a href="http://trade.taobao.com/trade/detail/trade_item_detail.htm?bizOrderId=191088028287261"
                                    target="_blank" class="detail-link J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.29">
                                    订单详情</a> </span>
                            <div class="remark-status">
                                双方已评</div>
                        </td>
                        <td class="operate" rowspan="1">
                            <a href="http://rate.taobao.com/append_rate.htm?biz_order_id=191088028287261&amp;is_archive=true"
                                target="_blank" class="J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.6">
                                追加评论</a> <a href="#" class="J_Rebuy" data-itemid="13463737147" data-time="1358841821000">
                                    再次购买</a>
                        </td>
                        <td class="other" rowspan="1">
                            <a class="J_DelOrder J_MakePoint" data-action="delOrder" data-point-url="http://log.mmstat.com/listbought.1.1"
                                href="javascript:void(0)">删除</a> <a class=" J_MakePoint" data-memo-url="orderid=191088028287261&amp;isArchive=true"
                                    title="编辑备忘信息，仅自己可见" href="http://trade.taobao.com/trade/memo/update_buy_memo.htm?bizOrderId=191088028287261&amp;buyerId=832256172&amp;user_type=0&amp;clickMore=0&amp;pageNum=1&amp;auctionTitle=&amp;bizOrderTimeBegin=&amp;bizOrderTimeEnd=&amp;commentStatus=&amp;sellerNick=&amp;auctionStatus=&amp;isArchive=true&amp;logisticsService=&amp;visibility=true"
                                    data-point-url="http://log.mmstat.com/listbought.1.15">备忘</a>
                            <div class="J_ShareSNS sns-share">
                                <a href="#" data-param="{&quot;type&quot;:&quot;item&quot;,&quot;itemid&quot;:&quot;13463737147&quot;, &quot;comment&quot; : &quot;亲，很棒的宝贝噢~&quot;}"
                                    data-name="191088028287261" class="J_MakePoint" data-point-url="http://log.mmstat.com/listbought.1.14">
                                    分享 </a>
                            </div>
                        </td>
                    </tr>
                </tbody>
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
            </form>
        </div>
        <!--end bought-list-->
    </div>
    <!--end main-content-->
</asp:Content>
