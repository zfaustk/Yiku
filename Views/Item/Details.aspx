<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.ItemModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Model.item.Name ?? "商品详情"%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <% if (Model != null && Model.Exist)
       { %>
    <div id="detail">
        <div id="J_DetailMeta" class="tb-detail-bd tm-clear">
            <div class="tb-summary tm-clear">
                <div class="tb-property">
                    <div class="tb-wrap">
                        <div class="tb-detail-hd ">
                            <a style="color: #3F2F2C; font-size: 32px">
                                <%: Model.item.Name %></a>
                        </div>
                        <ul class="tb-meta">
                            <li class="tb-detail-price tm-clear" id="J_StrPriceModBox"><span class="tb-metatit">
                                价格</span> <span class="tm-yen">&#165;</span> <strong id="J_StrPrice">
                                    <%: String.Format("{0:f}",Model.item.Price) %></strong> <span class="tb-11-tagTip"
                                        id="J_Tb-11-tagTip">(专柜价<strong class="del">
                                            <%: String.Format("{0:f}",Model.item.Price * 2 + 10) %>
                                        </strong>元， <a href="#" target="_blank">什么是专柜价？</a>) </span><span class="tm-mjsTarget J_PromArrow"
                                            data-type="mjslist">店铺活动 <span class="tb-arrow"></span></span>
                                <div id="J_MoreMjsSlider" class="tm-promo-slider">
                                    <p>
                                    </p>
                                    <a class="ui-more-nbg" href="">更多<i class="ui-more-nbg-arrow"></i> </a>
                                </div>
                            </li>
                            <li class="tb-detail-price tm-clear tb-promo-price  tb-hidden" id="J_PromoPrice"><span
                                class="tb-metatit">促销</span>
                                <div id="J_PromoBox">
                                </div>
                            </li>
                            <li class="tb-delivery tm-clear" id="J_RSPostageCont"><span class="tb-metatit">配送</span>
                                <div class="tb-postAge">
                                    <span id="J_deliveryAdd" class="tb-deliveryAdd">
                                        <%: Model.item.User.Address ?? "卖家" %></span>至 <a id="J_dqPostAgeCont" href="#"
                                            class="tb-postAgeCont">
                                            <%: (Model.CurrentUser != null) ? Model.CurrentUser.Address ?? "买家" : "买家"%></a>
                                    <div id="J_PostageToggleCont" class="tb-postAge-info">
                                        <span class="tb-deliveryAdd">快递: 卖家包邮 </span>
                                    </div>
                                    <div id="friInfo">
                                        确认收货地，以确保在商家销售区域</div>
                                </div>
                            </li>
                            <li class="tb-sold-out tm-clear J_MonSales"><span class="tb-metatit">月销量</span> <em
                                class="J_MonSalesNum">
                                <%: String.Format("{0:f}",Model.item.Volume) %></em>件 <span id="J_CspuSaleNum"></span>
                            </li>
                            <li class="tb-item-rates tm-clear" id="J_ItemRates"><span class="tb-metatit">评价</span>
                                <div id="J_Stars">
                                    <p>
                                        <span class="c-value-no c-value-0"></span>
                                    </p>
                                </div>
                            </li>
                        </ul>
                        <div class="tb-key">
                            <div class="tb-skin tb-naked">
                                <div class="tb-sku">
                                    <!-- meizInfo.vm start-->
                                    <!-- meizInfo.vm end-->
                                    <dl class="tb-amount tm-clear">
                                        <dt class="tb-metatit">数量</dt>
                                        <dd id="J_Amount">
                                            <span class="tb-amount-widget" id="J_AmountWidget">
                                                <input id="J_IptAmount" class="tb-text" value="1" maxlength="8" title="请输入购买量" type="text" />
                                            </span>件
                                        </dd>
                                        <em id="J_EmStock">(库存<%: string.Format("{0:d}",Model.item.Stock - Model.item.Volume) %>件)</em>
                                    </dl>
                                    <div class="tb-action tm-clear ">
                                        <div class="tb-btn-buy tb-btn-sku">
                                            <a id="J_LinkBuy" href="#" data-addfastbuy="true" title="点击此按钮，到下一步确认购买信息。">立刻购买<b></b></a>
                                        </div>
                                        <div class="tb-btn-basket tb-btn-sku">
                                            <a href="#" id="J_LinkBasket">加入购物车<b></b></a></div>
                                        <div class="tb-btn-add tb-btn-sku tb-hidden">
                                            <a href="#" id="J_LinkAdd">加入购物车<b></b></a></div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <ul class="tb-meta tb-meta tb-serUnified tm-clear">
                            <li><span class="tb-metatit" data-spm="1000988"><a href="#" target="_blank">依库积分</a>
                            </span>送<em id="J_EmPoint" class="tb-serIntegral"><%: String.Format("{0:D}",Convert.ToInt32(Model.item.Price/10)) %>分
                            </em></li>
                        </ul>
                    </div>
                </div>
                <div class="tb-gallery">
                    <a href="#" target="_blank" style="width: 450px;" id="J_ImgBooth" class="tb-booth tb-s360">
                        <span class="ks-imagezoom-wrap">
                            <%foreach (var pic in Model.item.Pictures)
                              { %>
                            <img id="J_ZoomHook" src="../../../Content/Image/Items/<%: pic.Route %>" class="_ItemPics" />
                            <%break;
                              } %>
                            <span style="" class="ks-imagezoom-icon"></span></span></a>
                    <ul id="J_UlThumb" class="tb-thumb tm-clear">
                        <li><a href="#"></a></li>
                    </ul>
                </div>
            </div>
        </div>
        <div id="bd" class="tb-shop">
            <div class="layout grid-s5m0">
                <div class="col-main tm-clear clearfix">
                    <div id="mainwrap" class="main-wrap">
                        <div style="width: 788px; position: static; top: 0px; display: block;" id="J_TabBarBox">
                            <ul id="J_TabBar" class="tabbar tm-clear">
                                <li class="tm-selected"><a data-spm-anchor-id="a220o.1000855.0.121" href="#description"
                                    hidefocus="true" data-index="0">商品详情</a> </li>
                                <li class=""><a data-spm-anchor-id="a220o.1000855.0.122" href="#J_Reviews" hidefocus="true"
                                    data-index="1">累计评价 <span style="display: inline;" class="J_ReviewsCount"><em class="J_ReviewsCountNum">
                                        0</em></span> </a></li>
                                <li class=""><a data-spm-anchor-id="a220o.1000855.0.123" href="#J_DealRecord" hidefocus="true"
                                    data-index="2">月成交记录 <span class="J_MonSales">(<em class="J_MonSalesNum tm-MRswitchRecord">0</em>件)</span>
                                </a></li>
                                <li class=""><a data-spm-anchor-id="a220o.1000855.0.124" href="#J_TabRecommends"
                                    hidefocus="true" data-index="3">给我推荐</a> </li>
                            </ul>
                        </div>
                        <div class="tabbar-placeholder" id="J_Tabbar_placeholder" style="height: 0px; margin-top: 0px;
                            overflow: hidden;">
                        </div>
                        <div id="attributes" class="attributes">
                            <div class="attributes-list" id="J_AttrList">
                                <p class="attr-list-hd tm-clear">
                                    <em>产品参数：</em></p>
                                <ul id="J_AttrUL">
                                    <li title="从舆论喧嚣到理性回归——...">产品名称：从舆论喧嚣到理性回归——...</li>
                                    <li title="&nbsp;9787561444740">ISBN编号:&nbsp;9787561444740</li>
                                    <li title="&nbsp;1">印数:&nbsp;1</li>
                                </ul>
                            </div>
                        </div>
                        <div id="mall-banner">
                        </div>
                        <div id="J_DcTopRightWrap">
                            <div id="J_DcTopRight" class="J_DcAsyn">
                                <!--rightkey:p_lazyRight_sid57300329_pid1055883,cacheAt:2013-05-20 16:59:12,ip:172.24.41.33-->
                                <div class="-_-shop">
                                </div>
                            </div>
                        </div>
                        <div id="description" class="J_DetailSection tshop-psm tshop-psm-bdetaildes tm-curTab">
                            <h4 class="hd">
                                商品详情</h4>
                        </div>
                        <div id="J_DcBottomRightWrap">
                            <div id="J_DcBottomRight" class="J_DcAsyn">
                                <div class="insertmodules J_TRegion">
                                    <div class="box J_TBox tshop-pbsm -_-ssd10c" data-spm="110.0.3-18311698313" microscope-data="3-18311698313">
                                        <div class="shop-custom   no-border">
                                            <div class="bd">
                                            </div>
                                        </div>
                                    </div>
                                    <input value="b-content" type="hidden"></div>
                            </div>
                        </div>
                        <div id="J_Detail">
                            <div style="min-height: 400px;" id="J_Reviews" class="J_DetailSection">
                                <h4 class="hd">
                                    累计评价<span style="display: inline;" class="J_ReviewsCount"><em class="J_ReviewsCountNum">0</em></span></h4>
                                <div class="tm-rate">
                                    <div style="display: block;" class="rate-header">
                                        <div class="rate-score">
                                            <h4>
                                                与描述相符</h4>
                                            <strong>0</strong><p>
                                                <span class="score-value-no score-value-0"><em></em></span>
                                            </p>
                                        </div>
                                        <div class="rate-graph">
                                            <div class="graph-scroller">
                                                <span style="width: 0%"><em>0</em></span></div>
                                            <ol class="graph-desc">
                                                <li>非常不满</li><li>不满意</li><li>一般</li><li>满意</li><li>非常满意</li></ol>
                                        </div>
                                    </div>
                                    <div class="rate-compose">
                                    </div>
                                    <div class="rate-subject">
                                    </div>
                                    <div class="publicize">
                                        5月20-5月29日期间,认真写评价就有机会赢得500万彩票大奖！<div class="pubmore">
                                            <span class="ui-msg-question"><span class="ui-msg-icon"></span></span><a href="http://www.tmall.com/go/act/sale/xpjscp.php?ad_id=&amp;am_id=1301056723b1ff6c5c00&amp;cm_id=&amp;pm_id="
                                                target="_blank">查看活动详情</a></div>
                                    </div>
                                    <div class="rate-toolbar">
                                        <span class="rate-filter">
                                            <input class="rate-list-append" id="J_RateWithAppend1369099442957" name="append"
                                                type="checkbox"><label for="J_RateWithAppend1369099442957">查看追加</label><input id="J_RateWithContent1369099442957"
                                                    name="content" checked="checked" type="checkbox"><label for="J_RateWithContent1369099442957">有内容评价</label></span><span
                                                        class="rate-sort"><a title="按评价时间从近到远进行排序" class="active" href="#" data-value="1"><span
                                                            class="rate-arrow">按时间</span></a><a title="按买家信用等级从高到低进行排序" href="#" data-value="2"><span
                                                                class="rate-arrow">按信用</span></a><a title="按评价内容丰富程度进行推荐排序" class="rate-sort-recommend"
                                                                    href="#" data-value="3"><span class="rate-arrow">按推荐</span><s class="rate-beta"></s></a></span></div>
                                    <div class="rate-grid">
                                        <table>
                                            <tbody>
                                            </tbody>
                                        </table>
                                    </div>
                                    <div class="rate-page">
                                    </div>
                                </div>
                            </div>
                            <div id="J_DealRecord" class="J_DetailSection">
                                <h4 class="hd">
                                    月成交记录<span class="J_MonSales">(<em class="J_MonSalesNum tm-MRswitchRecord">0</em>件)</span></h4>
                                <div>
                                    <div class="ui-msg attr-promise-tip">
                                        <div class="ui-msg-con ui-msg-tip">
                                            拍下价格的不同可能会由于促销和打折引起的，详情可以咨询商家。 <s class="ui-msg-icon"></s>
                                        </div>
                                    </div>
                                    <ul class="lst-summary-inrecord tm-clear">
                                        <li class="detail-price tm-clear"><span>原价：</span><strong class="J_originalPrice">21.00</strong>元</li>
                                        <li><span class="ww-light ww-large" data-nick="%E6%96%B0%E5%8D%8E%E6%96%87%E8%BD%A9%E7%BD%91%E7%BB%9C%E4%B9%A6%E5%BA%97"
                                            data-tnick="%E6%96%B0%E8%8F%AF%E6%96%87%E8%BB%92%E7%B6%B2%E7%B5%A1%E6%9B%B8%E5%BA%97"
                                            data-encode="true" data-display="inline"><a title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。"
                                                class="ww-inline ww-online" href="http://www.taobao.com/webww/?ver=1&amp;&amp;touid=cntaobao%E6%96%B0%E5%8D%8E%E6%96%87%E8%BD%A9%E7%BD%91%E7%BB%9C%E4%B9%A6%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;portalId=&amp;gid=4492887220&amp;itemsId="
                                                target="_blank"><span>旺旺在线</span></a></span></li>
                                    </ul>
                                </div>
                                <div id="J_showBuyerList" class="J_TAjaxContainer tm-clear">
                                    <div id="J_showListIndicator" class="J_TAjaxIndicator">
                                    </div>
                                    <button id="J_listBuyerOnView" type="button" data-checksoldnum="true" class="J_TAjaxTrigger hidden J_TAjaxTriggerButton"
                                        detail:params="http://mdskip.taobao.com/extension/dealRecords.htm?bid_page=1&amp;page_size=15&amp;is_start=false&amp;item_type=b&amp;ends=1369181043000&amp;starts=1368576243000&amp;item_id=4492887220&amp;user_tag=307827232&amp;old_quantity=3&amp;zhichong=true&amp;seller_num_id=101450072&amp;dk=&amp;isFromDetail=yes&amp;totalSQ=1&amp;sbn=36f97e1b548b6f39d19535232e4915b1">
                                        c</button>
                                </div>
                            </div>
                            <div id="J_SellerInfo" class="simple J_DetailSection hslice tb-sellerinfo" data-url="http://mdskip.taobao.com/extension/seller_info.htm?user_num_id=101450072&amp;user_tag=307827232&amp;shop_start=1209453308000">
                                <h5 class="hd">
                                    服务质量</h5>
                            </div>
                            <div style="" id="J_TabRecommends" class="simple J_DetailSection hslice J_newRecommends">
                                <h4 class="hd">
                                    给我推荐</h4>
                                <div class="ald ald-03013 ald-03013-tab">
                                    <div class="ald-inner ald-03013-item-4" data-name="view">
                                        <div class="ald-hd">
                                            <s></s><span>看了此商品的会员通常还看了</span></div>
                                        <div class="ald-bd">
                                            <ul class="ald-itemlist">
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253875744&amp;spm=1003.2.2.1&amp;scm=1003.3.03013.2_1&amp;acm=03013.1003.55.208.2253875744_1&amp;pos=1&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="提问:主持人必备之功 原版小说 书籍 商城 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1UGJTXyFdXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253875744&amp;spm=1003.2.2.1&amp;scm=1003.3.03013.2_1&amp;acm=03013.1003.55.208.2253875744_1&amp;pos=1&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">提问:主持人必备之功 原版小说 书籍 商城 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>28.50</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：5分，2人评价" class="ald-rate ald-rate-5"><em>5分</em></span><a class="ald-comment"
                                                            target="_blank" href="http://detail.tmall.com/item.htm?id=2253875744&amp;on_comment=1#J_TabBar">(2人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253698324&amp;spm=1003.2.2.2&amp;scm=1003.3.03013.2_2&amp;acm=03013.1003.55.208.2253698324_1&amp;pos=2&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="&lt;华尔街日报&gt;是如何讲故事的 书籍 商城 人文社科 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1BI6ZXiBkXXaClTzb_095335.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253698324&amp;spm=1003.2.2.2&amp;scm=1003.3.03013.2_2&amp;acm=03013.1003.55.208.2253698324_1&amp;pos=2&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">&lt;华尔街日报&gt;是如何讲故事的 书籍 商城 人文社科 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>28.50</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.8分，4人评价" class="ald-rate ald-rate-48"><em>4.8分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=2253698324&amp;on_comment=1#J_TabBar">(4人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=10035455784&amp;spm=1003.2.2.3&amp;scm=1003.3.03013.2_3&amp;acm=03013.1003.55.208.10035455784_1&amp;pos=3&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="广播电视学概论（第三版） 书籍 商城 人文社科 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1B3CGXpRgXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=10035455784&amp;spm=1003.2.2.3&amp;scm=1003.3.03013.2_3&amp;acm=03013.1003.55.208.10035455784_1&amp;pos=3&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">广播电视学概论（第三版） 书籍 商城 人文社科 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>36.00</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4分，1人评价" class="ald-rate ald-rate-4"><em>4分</em></span><a class="ald-comment"
                                                            target="_blank" href="http://detail.tmall.com/item.htm?id=10035455784&amp;on_comment=1#J_TabBar">(1人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=17398973410&amp;spm=1003.2.2.4&amp;scm=1003.3.03013.2_4&amp;acm=03013.1003.55.208.17398973410_1&amp;pos=4&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="中国广播收听年鉴(2012) 书籍 商城 人文社科 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1NRlxXt0cXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=17398973410&amp;spm=1003.2.2.4&amp;scm=1003.3.03013.2_4&amp;acm=03013.1003.55.208.17398973410_1&amp;pos=4&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">中国广播收听年鉴(2012) 书籍 商城 人文社科 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>73.50</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：5分" class="ald-rate ald-rate-5"><em>5分</em></span></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                    <div class="ald-inner ald-03013-item-5" data-name="buy">
                                        <div class="ald-hd">
                                            <s></s><span>买了此商品的会员通常还买了</span></div>
                                        <div class="ald-bd">
                                            <ul class="ald-itemlist">
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=9722711026&amp;spm=1003.2.1.1&amp;scm=1003.3.03013.2_5&amp;acm=03013.1003.55.208.9722711026_1&amp;pos=5&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="世界新闻传播史(2版) 书籍 商城 人文社科 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1LouIXC0aXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=9722711026&amp;spm=1003.2.1.1&amp;scm=1003.3.03013.2_5&amp;acm=03013.1003.55.208.9722711026_1&amp;pos=5&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">世界新闻传播史(2版) 书籍 商城 人文社科 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>32.00</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.8分，1人评价" class="ald-rate ald-rate-48"><em>4.8分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=9722711026&amp;on_comment=1#J_TabBar">(1人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=3614599546&amp;spm=1003.2.1.2&amp;scm=1003.3.03013.2_6&amp;acm=03013.1003.55.208.3614599546_1&amp;pos=6&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="通讯员习作点评//实用新闻写作丛书(第2版) 书籍 商城 人文社科">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1hV5HXrNfXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=3614599546&amp;spm=1003.2.1.2&amp;scm=1003.3.03013.2_6&amp;acm=03013.1003.55.208.3614599546_1&amp;pos=6&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">通讯员习作点评//实用新闻写作丛书(第2版) 书籍 商城 人文社科</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>11.20</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.8分，3人评价" class="ald-rate ald-rate-48"><em>4.8分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=3614599546&amp;on_comment=1#J_TabBar">(3人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=12344502851&amp;spm=1003.2.1.3&amp;scm=1003.3.03013.2_7&amp;acm=03013.1003.55.208.12344502851_1&amp;pos=7&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="年轻的心在哭泣 原版小说 书籍 商城 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1GsT7XeVXXXc1cVra_120011.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=12344502851&amp;spm=1003.2.1.3&amp;scm=1003.3.03013.2_7&amp;acm=03013.1003.55.208.12344502851_1&amp;pos=7&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">年轻的心在哭泣 原版小说 书籍 商城 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>24.90</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.5分，1人评价" class="ald-rate ald-rate-45"><em>4.5分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=12344502851&amp;on_comment=1#J_TabBar">(1人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253679760&amp;spm=1003.2.1.4&amp;scm=1003.3.03013.2_8&amp;acm=03013.1003.55.208.2253679760_1&amp;pos=8&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="现代校对实用手册 书籍 商城 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1amgwXalfXXc44RA__080336.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=2253679760&amp;spm=1003.2.1.4&amp;scm=1003.3.03013.2_8&amp;acm=03013.1003.55.208.2253679760_1&amp;pos=8&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">现代校对实用手册 书籍 商城 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>21.80</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.6分，2人评价" class="ald-rate ald-rate-46"><em>4.6分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=2253679760&amp;on_comment=1#J_TabBar">(2人评价)</a></div>
                                                </li>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="http://detail.tmall.com/item.htm?id=12344534293&amp;spm=1003.2.1.5&amp;scm=1003.3.03013.2_9&amp;acm=03013.1003.55.208.12344534293_1&amp;pos=9&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank" title="辛德勒名单 原版小说 书籍 商城 正版 文轩网">
                                                            <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/T1dtQUXeVfXXXXXXXX_0-item_pic.jpg"></a></div>
                                                    <div class="ald-title">
                                                        <a href="http://detail.tmall.com/item.htm?id=12344534293&amp;spm=1003.2.1.5&amp;scm=1003.3.03013.2_9&amp;acm=03013.1003.55.208.12344534293_1&amp;pos=9&amp;uuid=22919d7141ab4305a2a7cc3bea92389b"
                                                            target="_blank">辛德勒名单 原版小说 书籍 商城 正版 文轩网</a></div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price"><span class="ald-rmb">&#165;</span>31.10</strong></div>
                                                    <div class="ald-meta">
                                                        <span title="商品评价：4.5分，4人评价" class="ald-rate ald-rate-45"><em>4.5分</em></span><a
                                                            class="ald-comment" target="_blank" href="http://detail.tmall.com/item.htm?id=12344534293&amp;on_comment=1#J_TabBar">(4人评价)</a></div>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div id="ks-lazyload275" class="col-sub">
                    <!-- tair resultCode=code=0, msg=success, tair key: msa101450072, version: 1, cdate: 1970-01-01 08:00:00, mdate: 2013-05-21 08:10:43, edate: 2013-05-21 12:10:43,  -->
                    <div id="side-shop-info" class="shop-intro">
                        <h3 class="hd">
                            商家信息</h3>
                        <div class="bd">
                            <div class="name">
                                新华文轩网络书店 <a target="_blank" href="http://amos.alicdn.com/getcid.aw?v=2&amp;uid=%E6%96%B0%E5%8D%8E%E6%96%87%E8%BD%A9%E7%BD%91%E7%BB%9C%E4%B9%A6%E5%BA%97&amp;site=cntaobao&amp;s=2&amp;groupid=0&amp;charset=utf-8">
                                    <img src="%E4%BB%8E%E8%88%86%E8%AE%BA%E5%96%A7%E5%9A%A3%E5%88%B0%E7%90%86%E6%80%A7%E5%9B%9E%E5%BD%92%E2%80%94%E2%80%94%E5%AF%B9%E7%BD%91%E7%BB%9C%E4%BA%BA%E8%82%89%E6%90%9C%E7%B4%A2%E7%9A%84%E5%A4%9A%E7%BB%B4%E7%A0%94%E7%A9%B6%20%E4%B9%A6%E7%B1%8D%20%E5%95%86%E5%9F%8E-tmall.com%E5%A4%A9%E7%8C%AB_files/online.gif"
                                        alt="点这里给商家发消息" border="0"></a>
                            </div>
                            <div>
                                <div class="shop-rate">
                                    <h4>
                                        店铺动态评分 <span class="compare">与同行业相比</span></h4>
                                    <ul>
                                        <li>描述相符：<a href="http://rate.taobao.com/user-rate-aeb920815f8e2079e4f67855fe9319ed.htm"
                                            target="_blank"><em title="4.82322分" class="count">4.8</em><span class="rateinfo lower"
                                                title=" 计算规则:(店铺得分-同行业平均分)/(同行业店铺最高得分-同行业平均分) "> <b>低于</b> 0.62%</span></a></li><li>
                                                    服务态度：<a href="http://rate.taobao.com/user-rate-aeb920815f8e2079e4f67855fe9319ed.htm"
                                                        target="_blank"><em title="4.7709分" class="count">4.7</em><span class="rateinfo lower"
                                                            title=" 计算规则:(店铺得分-同行业平均分)/(同行业店铺最高得分-同行业平均分) "> <b>低于</b> 1.70%</span></a></li><li>
                                                                发货速度：<a href="http://rate.taobao.com/user-rate-aeb920815f8e2079e4f67855fe9319ed.htm"
                                                                    target="_blank"><em title="4.71137分" class="count">4.7</em><span class="rateinfo lower"
                                                                        title=" 计算规则:(店铺得分-同行业平均分)/(同行业店铺最高得分-同行业平均分) "> <b>低于</b> 2.43%</span></a></li></ul>
                                </div>
                                <div data-spm="1000993" class="tm-shopAction">
                                    <a href="http://winshare.tmall.com/" target="_blank" class="ui-btn-m">进入店铺</a> <a
                                        id="xshop_collection_href" href="http://favorite.taobao.com/popup/add_collection.htm?itemid=57300329&amp;itemtype=0&amp;ownerid=aeb920815f8e2079e4f67855fe9319ed&amp;scjjc=2&amp;_tb_token_=gk8NQK166x8i"
                                        mercury:params="id=57300329&amp;itemid=57300329&amp;itemtype=0&amp;ownerid=aeb920815f8e2079e4f67855fe9319ed"
                                        class="J_TDialogTrigger J_PopupTrigger collection xshop_sc J_TokenSign" data-width="458"
                                        data-height="346" data-closebtn="true">收藏店铺</a>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            TShop.poc('buyshow');
            (function () {

                TShop.Setup({
                    rstShopId: 57300329, valLoginIndicator: "http:\/\/buy.taobao.com\/auction\/buy.htm?from=itemDetail&x_id=&item_id=4492887220&id=4492887220",
                    renderSystemServer: 'http://render.taobao.com', valMode: 128,
                    "valCartInfo": { "itemId": "4492887220", "dbNum": "", "cartUrl": "http:\/\/cart.taobao.com\/my_cart.htm?from=bdetail", "statsUrl": "http://www.atpanel.com/1.gif?category=cart_{loc}_333806" },
                    "apiBidCount": "http:\/\/tbskip.taobao.com\/json\/show_bid_count.htm?itemNumId=4492887220&old_quantity=3&date=1368576243000",
                    "apiAddCart": "http:\/\/cart.taobao.com\/add_cart_item.htm?item_id=4492887220",
                    "valPointRate": "0.5",
                    "valPointTimes": "1",
                    "apiItemViews": "http:\/\/count.taobao.com\/counter2?keys=ICVT_7_4492887220&inc=ICVT_7_4492887220&sign=79023d79b9ae596b8e856d7f2e1a7e224a9e4",
                    "apiBeans": "http:\/\/count.tbcdn.cn\/counter3?keys=SM_368_dsr-101450072,ICCP_1_4492887220",
                    "valTimeLeft": "81606",
                    "valItemInfo": {
                    },

                    "orderId": "",
                    "mainOrderId": "",
                    "isSevenDaysRefundment": true,
                    "isAreaSell": false,
                    "isService": false,
                    "isHouseholdService": false,
                    "isTmallComboSupport": false,
                    "standardItem": false,
                    "tmallRateType": 0, "isWTContract": false, "isMeiz": false,
                    "trialItemId": 0,
                    "trialErrNum": 0,
                    "releaseTime": "1369040348000",
                    "renderTime": "1369040349992",
                    "apiMember": 'http://tmm.taobao.com/member/query_member_for_detail.do',
                    "vipBirthJumpLink": 'http://vip.tmall.com/vip/privilege.htm?priv=birthdaygift&spm=2001.1.4.3',








                    "initApi": "http://mdskip.taobao.com/core/initItemDetail.htm?trialErrNum=0&isSpu=false&isIFC=false&sellerUserTag4=4431316355&notAllowOriginPrice=false&sellerUserTag2=18015687270205454&sellerUserTag3=633318731186816&isAreaSell=false&isForbidBuyItem=false&isMeizTry=false&tmallBuySupport=true&itemTags=1163,1478,2049,2882,3974,4166,7810,7938,8258&household=false&sellerUserTag=307827232&tgTag=false&itemId=4492887220&isUseInventoryCenter=false&isSecKill=false&isApparel=false&service3C=false&cartEnable=true",
                    "changeLocationApi": "http://mdskip.taobao.com/core/changeLocation.htm?itemTags=1163,1478,2049,2882,3974,4166,7810,7938,8258&sellerUserTag=307827232&household=false&tgTag=false&isSpu=false&itemId=4492887220&isUseInventoryCenter=false&isSecKill=false&sellerUserTag4=4431316355&notAllowOriginPrice=false&sellerUserTag2=18015687270205454&sellerUserTag3=633318731186816&isAreaSell=false&service3C=false&cartEnable=true",
                    "initExtensionApi": "http://mdskip.taobao.com/extension/initExtension.htm?showBreadCrumb=false&sellerId=101450072&showShopProm=true&showSpuMaintainer=false",
                    "initExtraApi": "http://mdskip.taobao.com/extension/initExtra.htm",





                    "api": {
                        "fetchDcUrl": "http://tdecorate.tbcdn.cn/dc/fetchDc.htm?pid=&sellerId=101450072&t=1369040348000"
                    },

                    "itemDO": {
                        'categoryId': '333806',
                        'itemId': '4492887220',
                        'isBidden': false,
                        'isInRepository': false,
                        'auctionType': 'b',
                        'auctionStatus': '0',
                        'canView': true,
                        'sellerFreeze': false,
                        'quantity': 3,
                        'isOnline': true,
                        'isSecondKillFromPC': false,
                        'isSecondKillFromPCAndWap': false,
                        'userId': '101450072',
                        "sellerNickName": '%E6%96%B0%E5%8D%8E%E6%96%87%E8%BD%A9%E7%BD%91%E7%BB%9C%E4%B9%A6%E5%BA%97',
                        'isEcardAuction': false,
                        'brand': '',
                        'brandId': '',
                        'brandSiteId': '0',
                        'isDcAsyn': true,
                        'reservePrice': '21.00',
                        'spuId': '89989311',
                        'feature': '1',
                        'validatorUrl': 'http://store.taobao.com/tadget/shop_stats.htm',
                        'templateName': '',
                        'templateId': '1097902',
                        'tagPicUrl': ''
                    },
                    "detail": {
                        'canEditInItemDet': true,
                        'autoccUser': false,
                        'isShowPreClosed': false,
                        'goNewAuctionFlow': false,
                        'isAllowReport': true,
                        'isTeMai': false,
                        'isIFCShop': false,
                        'isItemAllowSellerView': true,
                        'isAuthSeller': true,
                        'timeKillAuction': false,
                        'quantityList': [],
                        'defaultItemPrice': '21.00',
                        'rateEnable': true,
                        'loginBeforeCart': false,
                        'cdn75': false,
                        'rateCloudDisable': false,
                        'isDownShelf': false,
                        'isHasPos': false,
                        'dsrFromCounterEnable': false
                    },
                    "idsMod": [],
                    "tag": {
                        "isAsynDesc": true, 'isMedical': false,
                        'isRightRecommend': false,
                        'isBrandSiteRightColumn': true,
                        'isBrandAttr': true
                    },
                    "url": {
                        'topUploadServerBaseUrl': 'http://upload.taobao.com',
                        'BIDRedirectionitemDomain': 'http://paimai.taobao.com',
                        'tradeBaseUrl': 'http://trade.taobao.com/trade',
                        'tgDomain': 'http://ju.taobao.com',
                        'mallList': 'http://list.tmall.com',
                        'buyBase': 'http://buy.taobao.com/auction',
                        "tbskip": "http://tbskip.taobao.com",
                        "rate": "http://rate.tmall.com",
                        "mdskip": "http://mdskip.taobao.com"
                    },
                    "tradeType": 2,
                    "cartEnable": true,


                    "tradeConfig": {
                        1: "http://buy.taobao.com/auction/buy_now.jhtml",
                        2: "http://buy.tmall.com/order/confirm_order.htm",
                        3: "http://obuy.tmall.com/home/order/confirm_order.htm",
                        4: ""
                    },
                    "noSkipMode": {
                        timeout: 15000,
                        tradeResult: {
                            cartEnable: true,
                            cartType: 2,
                            tradeEnable: true,
                            tradeType: 2,
                            tradeDisableTypeEnum: ""
                        }

                    }
                });

            })();</script>
    </div>
    <%} %>
</asp:Content>
