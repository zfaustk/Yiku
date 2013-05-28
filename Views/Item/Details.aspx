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
                                            <%: String.Format("{0:c}",Model.item.Price * 2 + 10)%>
                                        </strong>) </span></li>
                            <li class="tb-delivery tm-clear" id="J_RSPostageCont"><span class="tb-metatit">配送</span>
                                <div class="tb-postAge">
                                    <span id="J_deliveryAdd" class="tb-deliveryAdd">
                                        <%: Model.item.User.Address ?? "卖家" %></span> 至
                                    <%:Html.ActionLink( (Model.CurrentUser != null) ? Model.CurrentUser.Address ?? "买家" : "买家" , "profile" , "MyYiku") %>
                                    <div id="J_PostageToggleCont" class="tb-postAge-info">
                                        <span class="tb-deliveryAdd">快递: </span><a class="tb-postAgeCont">卖家包邮</a>
                                    </div>
                                </div>
                            </li>
                            <li class="tb-sold-out tm-clear J_MonSales"><span class="tb-metatit">月销量</span> <em
                                class="J_MonSalesNum">
                                <%: String.Format("{0:f}",Model.item.Volume) %></em>件 <span id="J_CspuSaleNum"></span>
                            </li>
                            <%if (!String.IsNullOrEmpty(Model.item.Cut))
                              {%>
                            <li class="tb-item-rates tm-clear" id="J_ItemRates"><span class="tb-metatit">折扣:</span>
                                <div id="J_Stars">
                                    <p>
                                        <span class="c-value-no c-value-0">
                                            <%: Model.item.Cut%></span>
                                    </p>
                                </div>
                            </li>
                            <%} %>
                        </ul>
                        <div class="tb-key">
                            <div class="tb-skin tb-naked">
                                <div class="tb-sku">
                                    <!-- meizInfo.vm start-->
                                    <!-- meizInfo.vm end-->
                                    <%using (Html.BeginForm())
                                      { %>
                                    <dl class="tb-amount tm-clear">
                                        <dt class="tb-metatit">数量</dt>
                                        <dd id="J_Amount">
                                            <span class="tb-amount-widget" id="J_AmountWidget">
                                                <input id="J_IptAmount" name="BuyNumber" class="tb-text" value="1" maxlength="8" title="请输入购买量" type="text" />
                                            </span>件
                                        </dd>
                                        <em id="J_EmStock">(库存<%: string.Format("{0:d}", Model.item.Stock - Model.item.Volume)%>件)</em>
                                    </dl>
                                    <div class="tb-action tm-clear ">
                                        <div class="tb-btn-buy tb-btn-sku">
                                            <button type="submit" style="border:none;">
                                                <a id="J_LinkBuy" title="将本商品">加入购物车<b></b></a>
                                            </button>
                                        </div>
                                        <div class="tb-btn-basket tb-btn-sku">
                                            <%: Html.ActionLink("收藏本商品","Collect",new {ID = Model.item.IID} )%>
                                            
                                            </div>
                                        
                                    </div>
                                    <%} %>
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
                            </ul>
                        </div>
                        <div class="tabbar-placeholder" id="J_Tabbar_placeholder" style="height: 0px; margin-top: 0px;
                            overflow: hidden;">
                        </div>
                        <div id="attributes" class="attributes">
                            <div class="attributes-list" id="J_AttrList">
                                <p class="attr-list-hd tm-clear">
                                    <em>
                                        <%: Model.item.Name %>：</em>
                                </p>
                            </div>
                        </div>
                        <div id="description" class="J_DetailSection tshop-psm tshop-psm-bdetaildes tm-curTab">
                            <h4 class="hd">
                                商品详情</h4>
                        </div>
                        <div id="J_DcBottomRightWrap">
                            <div id="J_DcBottomRight" class="J_DcAsyn">
                                <div class="insertmodules J_TRegion">
                                    <div class="box J_TBox tshop-pbsm -_-ssd10c">
                                        <div class="shop-custom   no-border">
                                            <div class="bd bd_dd">
                                                <%: Model.item.Detail %>
                                            </div>
                                        </div>
                                    </div>
                                    <input value="b-content" type="hidden">
                                </div>
                            </div>
                        </div>
                        <% if (Model.item.User != null)
                           { %>
                        <div id="J_Detail">
                            <div style="" id="J_TabRecommends" class="simple J_DetailSection hslice J_newRecommends">
                                <h4 class="hd">
                                    给我推荐</h4>
                                <div class="ald ald-03013 ald-03013-tab">
                                    <div class="ald-inner ald-03013-item-4">
                                        <div class="ald-hd">
                                            <s></s><span>此会员还发布了：</span></div>
                                        <div class="ald-bd">
                                            <ul class="ald-itemlist">
                                                <% foreach (var item in Model.item.User.Items.Take(4))
                                                   { %>
                                                <li class="ald-item">
                                                    <div class="ald-img">
                                                        <a href="./<%: item.IID %>" target="_blank" title="<%: item.Name %>">
                                                            <img alt="" src="../../../Content/Image/Items/<%: item.thePictureRoute %>" style="width: 168px!important;
                                                                height: 168px" />
                                                        </a>
                                                    </div>
                                                    <div class="ald-title">
                                                        <%: Html.ActionLink(item.Name, "Details", "Item", new { Id = item.IID }, new { target = "_blank" })%>
                                                    </div>
                                                    <div class="ald-meta">
                                                        <strong class="ald-price">
                                                            <span class="ald-rmb">&#165;</span>
                                                            <%: string.Format("{0:f}",item.Price) %>
                                                        </strong>
                                                    </div>
                                                </li>
                                                <%} %>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </div>
                <div id="ks-lazyload275" class="col-sub">
                    <div id="side-shop-info" class="shop-intro">
                        <h3 class="hd">
                            商家信息</h3>
                        <div class="bd">
                            <div class="name">
                                <%: Html.ActionLink(Model.item.User.Name, "Search", "Item", new { Uname = Model.item.User.Name }, new { target = "_blank" })%>
                            </div>
                            <div>
                                <div class="shop-rate">
                                    <ul>
                                        <li>收件人：
                                            <%: Model.item.User.Consignee ?? "未填"%>
                                        </li>
                                        <li>地址：
                                            <%: Model.item.User.Address ?? "未填"%>
                                        </li>
                                        <li>电话：
                                            <%: Model.item.User.Tel ?? "未填"%>
                                        </li>
                                    </ul>
                                </div>
                                <div class="tm-shopAction">
                                    <%: Html.ActionLink("看他的商品", "Search", "Item", new { Uname = Model.item.User.Name }, new { Class = "ui-btn-m" })%>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <%} %>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FooterScriptContent" runat="server">
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
    <style>
        .bd_dd
        {
            font-size: 32px;
        }
    </style>
</asp:Content>
