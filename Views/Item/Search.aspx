<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.SearchModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Model.strSearch ?? "-" %>- 依库,一库的选择
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <script charset="gbk" async="" src="../../Models/Scripts/search/btm-search.js"></script>
    <script charset="GBK" async="" src="../../Models/Scripts/search/bottombar.js"></script>
    <script charset="GBK" async="" src="../../Models/Scripts/search/brandbar.js"></script>
    <script async="" src="../../Models/Scripts/search/counter6.js"></script>
    <script async="" src="../../Models/Scripts/search/tgallery_002.js"></script>
    <script src="../../Models/Scripts/search/adapter-min.js"></script>
    <script async="" src="../../Models/Scripts/search/feedback.js"></script>
    <script async="" src="../../Models/Scripts/search/tgallery.js"></script>
    <script async="" src="../../Models/Scripts/search/core.js"></script>
    <script async="" src="../../Models/Scripts/search/tb-mpp-min.js"></script>
    <script async="" src="../../Models/Scripts/search/tlabs-min.js"></script>
    <script async="" src="../../Models/Scripts/search/webww-min.js"></script>
    <script async="" src="../../Models/Scripts/search/backtop.js"></script>
    <script async="" src="../../Models/Scripts/search/a.js"></script>
    <script async="" src="../../Models/Scripts/search/init.js"></script>
    <script charset="utf-8" async="" src="../../Models/Scripts/search/switchable-min.js"></script>
    <script charset="gbk" async="" src="../../Models/Scripts/search/a_003.js"></script>
    <script charset="utf-8" async="" src="../../Models/Scripts/search/a_006.js"></script>
    <link rel="shortcut icon" href="" type="image/x-icon">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <script src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/a_002.js"></script>
    <link rel="stylesheet" href="../../Content/a.css">
    <link rel="stylesheet" href="../../Content/SearchYiku.css">
    <script src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/aplus_v2.js"
        exparams="category=2&amp;userid=&amp;b2c_orid=std%5fquery%3a%25CB%25D1%2b%253F%2bb%2b%25B5%25C4%7cdefalut%5fsearch%3a1%7ctop%5fquery%3a%7crc%3a2&amp;at_type=search&amp;at_bucketid=sbucket%5f4&amp;at_mall_pro_re=7&amp;aplusat_rn=88e60eb00e70c9a30ada641920d6a5bf&amp;at_rn=88e60eb00e70c9a30ada641920d6a5bf&amp;"
        id="tb-beacon-aplus" async="" type="text/javascript"></script>
    
    <script src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/a_005.js"
        async="" type="text/javascript"></script>

    
    <script>        window.g_config = { appId: 7 };</script>
    <script>
        var __list_atpanel_param = 'rn=88e60eb00e70c9a30ada641920d6a5bf&q=%CB%D1%84%31%A4%37B%B5%C4&bid=4&uid=lpm0157&catid=2&prop=&sort=s&disp=g&filter=user_group:-0_0-0_3_0_3_3_3---1-6----|scroll:1349*4166|client:1349*618|offset:1349*4166|screen:1366*768&loc=&n=60&page=1&v=mall_1.0&vmarket=0&machineid=d525c27a92a046ec1b87f8588be1fb3d&tmalltrackid=&nav=&navlog=&rewq=%CB%D1%84%31%A4%37B%B5%C4&rewcatid=2&page_type=1&stats=qp:1|cat:1|brand-qp:1|key:1|pricemodel:fcity|pic:2|querytype:4|skuahead:2|queryProp:2|querytype:32|screen:1366*768|lessprocess:1|defaultsearch:1|app:tmallsearchquery&filter_new=sort:s|post_fee:0|support_cod:0|manyPoints:0|wwonline:0|miaosha:0|isCombo:0|vip:0|pic_detail:0|floc:0|fprice:0|tm_lq:0|tm_hot:0|tm_new:0|new:0|filter_mj:0&from=&active=0&wq=&suggest=&search_type=search&abtest=&std_query=b&top_query=&direct_rc=2&',__header_atpanel_param = 'bid=4&rn=88e60eb00e70c9a30ada641920d6a5bf';
    </script>
    <script type="text/javascript">
        TB.use("mod~global", function () {
            if (TB && TB.Global && TB.Global.init) {
                TB.Global.init();
            }
        });
    </script>
    <script>        TMall.THeader.init();</script>
    <style>
        .mt-header 
        {
            display:none;
        }
        .clearfix_yiku
        {
            padding-top:15px;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="J_Nav" >
        <%using(Html.BeginForm()){ %>
        <div class="attrs">
            <div class="cateAttrs" >
                <div class="j_Cate attr">
                    <div class="attrKey">
                        分类</div>
                    <div class="attrValues">
                        <ul style="height: auto;" class="av-collapse" data-atp="{loc},{cat},,,{f},3,{c},">
                            <li><a title="天猫图书(6)" data-f="spu-cat-qp" data-c="cat-qp" href="http://list.tmall.com/search_product.htm?cat=50021913&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=s&amp;style=g&amp;search_condition=0&amp;area_code=310000&amp;from=sn_1_cat-qp#J_crumbs">
                                天猫图书<span>(6)</span> </a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="attrs-border">
            </div>
            <div class="attrExtra">
                <p class="relKeyRec" data-spm="a220m.1000858.1000723" data-atp="{loc},{q},,,spu-key,5,key,">
                    <span>您是不是想找</span> <a href="http://list.tmall.com/search_product.htm?style=g&amp;vmarket=0&amp;frm=&amp;tsearch=&amp;from=rs_1_key&amp;q=%CB%F8%D0%BE+%B7%C0%B5%C1+%B3%ACb%BC%B6">
                        锁芯防盗超b级</a> <a href="http://list.tmall.com/search_product.htm?style=g&amp;vmarket=0&amp;frm=&amp;tsearch=&amp;from=rs_1_key&amp;q=%B1%BC%CC%DAb50">
                            奔腾b50</a>
                </p>
            </div>
        </div>
        <%} %>
        <div class="filter clearfix" id="J_Filter" data-spm="a220m.1000858.1000724">
            <form action="http://list.tmall.com/search_product.htm" id="J_FForm">
            <div class="fRange">
                <b class="fR-text">默认排序</b> <i class="f-ico-triangle-rb"></i>
                <ul class="fR-list" data-atp="{loc},price_ascending,,,spu-sort,20,sort,">
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=p&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        <i class="fRl-ico-pu"></i>价格从低到高</a> </li>
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=pd&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        <i class="fRl-ico-pd"></i>价格从高到低</a> </li>
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=td&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        <i class="fRl-ico-sd"></i>总销量从高到低</a> </li>
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=d&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        <i class="fRl-ico-msd"></i>月销量从高到低</a> </li>
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=pt&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        <i class="fRl-ico-td"></i>按发布时间排序</a> </li>
                    <li><a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=st&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter">
                        恢复默认排序</a> </li>
                </ul>
            </div>
            <a class="fSort" href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=d&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter"
                title="点击后按月销量从高到低" atpanel="7,week_sale,,,spu-sort,20,sort,">销量<i class="f-ico-arrow-d"></i></a>
            <a class="fSort" href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=p&amp;style=g&amp;search_condition=0&amp;area_code=310000#J_Filter"
                title="点击后按价格从低到高" atpanel="9,price_ascending,,,spu-sort,20,sort,">价格<i class="f-ico-triangle-mt"></i><i
                    class="f-ico-triangle-mb"></i></a>
            <div class="fPrice" id="J_FPrice">
                <div class="fP-box">
                    <b class="fPb-item"><i class="ui-price-plain">&#165;</i>
                        <input name="start_price" autocomplete="off" maxlength="8" class="j_FPInput" type="text">
                    </b><i class="fPb-split"></i><b class="fPb-item"><i class="ui-price-plain">&#165;</i>
                        <input name="end_price" autocomplete="off" maxlength="8" class="j_FPInput" type="text">
                    </b>
                </div>
                <div class="fP-expand">
                    <a class="ui-btn-s" id="J_FPCancel">清空</a> <a class="ui-btn-s-primary" id="J_FPEnter"
                        atpanel=",,,,spu-fprice,20,fprice,">确定</a>
                </div>
            </div>
            <div class="fMenu" id="J_FMenu">
                <div class="fM-con">
                    <a href="javascript:;" hidefocus="true" class="j_FMcExpand ui-more-drop-l">更多<i class="ui-more-drop-l-arrow"></i></a>
                    <label>
                        <input name="post_fee" value="-1" atpanel="1,post_fee-1,,,spu-fservice,20,fservice,"
                            type="checkbox">包邮</label>
                    <label>
                        <input name="miaosha" value="1" atpanel="2,miaosha-1,,,spu-fservice,20,fservice,"
                            type="checkbox">折扣</label>
                    <input name="zk_type" value="0" type="hidden"><label><input name="wwonline" value="1"
                        atpanel="4,wwonline-1,,,spu-fservice,20,fservice," type="checkbox">旺旺在线</label>
                    <label>
                        <input name="combo" value="1" atpanel="3,combo-1,,,spu-fservice,20,fservice," type="checkbox">搭配减价</label>
                    <label>
                        <input name="manyPoints" value="1" atpanel="6,manyPoints-1,,,spu-fservice,20,fservice,"
                            type="checkbox">多倍积分</label>
                    <label>
                        <input name="filter_mj" value="1" atpanel="7,filter_mj-1,,,spu-fservice,20,fservice,"
                            type="checkbox">满就减</label>
                    <label>
                        <input name="support_cod" value="1" atpanel="8,support_cod-1,,,spu-fservice,20,fservice,"
                            type="checkbox">货到付款</label>
                </div>
            </div>
            <a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=s&amp;style=w&amp;search_condition=0&amp;area_code=310000#J_Filter"
                class="fType-w " atpanel=",w,,,,20,filter,">店铺<i class="fTw-ico"></i></a> <a href="javascript:;"
                    class="fType-g fType-cur" atpanel=",g,,,,20,filter,">大图<i class="fTg-ico"></i></a>
            <a href="http://list.tmall.com/search_product.htm?cat=2&amp;s=0&amp;n=60&amp;q=%CB%D1%3FB%B5%C4&amp;sort=s&amp;style=l&amp;search_condition=0&amp;area_code=310000#J_Filter"
                class="fType-l " atpanel=",l,,,,20,filter,">小图<i class="fTl-ico"></i></a>
            <input name="search_condition" value="16" type="hidden">
            <input name="cat" value="2" type="hidden">
            <input name="sort" value="s" type="hidden"><input name="style" value="g" type="hidden"><input
                name="vmarket" value="0" type="hidden">
            <input name="q" value="搜?B的" type="hidden">
            </form>
            <p class="ui-page-s">
                <b class="ui-page-s-len">1/1</b> <b class="ui-page-s-prev" title="上一页">&lt;</b>
                <b class="ui-page-s-next" title="下一页">&gt;</b>
            </p>
        </div>
        <div style="height: 30px; display: none;" id="J_FilterPlaceholder">
        </div>
    </div>

    <div class=" view view-noSku clearfix  clearfix_yiku" id="J_ItemList" >
    <%foreach (var item in Model.Items)
      { %>
        <div class="product">
            <div class="product-iWrap">
                <div class="productImg-wrap">
                    <a class="productImg" target="_blank" >
                        <img alt="" style="width:220px;height:220px;" src='
                            <%: (item.thePictureRoute == null)?"":"../../Content/Image/Items/"+ item.thePictureRoute %>
                        '>
                        
                    </a>
                </div>
                <p class="productPrice">
                    <%string sPrice = String.Format("{0:f}",item.Price); %>
                    <em title="<%: sPrice %>">&#165;<%: sPrice %></em>
                </p>
                <p class="productTitle">
                    <%: Html.ActionLink(item.Name, "Details", "Item", new { ID = item.IID }, new { target = "_blank" })%>
                </p>
                <p class="productStatus">
                    销量:<em><%: item.Volume %></em>
                </p>
                <div class="productShop">
                    <a class="productShop-name" href="#" target="_blank">
                    <%: item.User.Name %>
                    </a>
                </div>
                <p class="productIcons">
                </p>
                <p class="productAttrs">
                </p>
            </div>
        </div>
    <%} %>
    </div>
    <div id="J_ComboRec">

        <div class="qc">
            <div class="view view-noSku clearfix">
                <div class="product" data-id="14739308675">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=14739308675&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-1,14739308675,50007418,77132062,spu,1,lessprocess,787888901">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1H7CKXw4XXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="38.00">&#165;38.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=14739308675&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="搜狐畅游 【天龙八部】点卡 40元800点 官方直充" atpanel="1-1,14739308675,50007418,77132062,spu,1,lessprocess,787888901">
                                <span class="H">搜</span>狐畅游 【天龙八部】点卡 40元800点 官方直充</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>1.2万</em>|<a href="http://detail.tmall.com/item.htm?id=14739308675&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-1-1,14739308675,50007418,77132062,spu,1,lessprocess,787888901">累计评价:2248</a></p>
                    </div>
                </div>
                <div class="product" data-id="13429501264">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=13429501264&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-2,13429501264,50007418,77131938,spu,1,lessprocess,787888901">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1VjOKXxFaXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="9.50">&#165;9.50</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=13429501264&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="搜狐畅游 【天龙八部】点卡 10元200点 官方直充" atpanel="1-2,13429501264,50007418,77131938,spu,1,lessprocess,787888901">
                                <span class="H">搜</span>狐畅游 【天龙八部】点卡 10元200点 官方直充</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>6535</em>|<a href="http://detail.tmall.com/item.htm?id=13429501264&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-2-1,13429501264,50007418,77131938,spu,1,lessprocess,787888901">累计评价:2065</a></p>
                    </div>
                </div>
                <div class="product" data-id="13429385904">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=13429385904&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-3,13429385904,50007418,77131996,spu,1,lessprocess,787888901">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1RTKIXARdXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="4.75">&#165;4.75</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=13429385904&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="搜狐畅游 【天龙八部】点卡 5元100点 官方直充" atpanel="1-3,13429385904,50007418,77131996,spu,1,lessprocess,787888901">
                                <span class="H">搜</span>狐畅游 【天龙八部】点卡 5元100点 官方直充</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>4465</em>|<a href="http://detail.tmall.com/item.htm?id=13429385904&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-3-1,13429385904,50007418,77131996,spu,1,lessprocess,787888901">累计评价:1479</a></p>
                    </div>
                </div>
                <div class="product" data-id="14690655410">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=14690655410&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-4,14690655410,50007418,144130555,spu,1,lessprocess,183047676">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1Xu01Xi0dXXcmugoV_020546.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="2.50">&#165;2.50</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=14690655410&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="天龙八部3畅游金卡 搜狐畅游金卡 兼容2888等所有卡 官方自动发货" atpanel="1-4,14690655410,50007418,144130555,spu,1,lessprocess,183047676">
                                天龙八部3畅游金卡 <span class="H">搜</span>狐畅游金卡 兼容2888等所有卡 官方自动发货</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>6388</em>|<a href="http://detail.tmall.com/item.htm?id=14690655410&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-4-1,14690655410,50007418,144130555,spu,1,lessprocess,183047676">累计评价:2335</a></p>
                    </div>
                </div>
                <div class="product" data-id="7161441660">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=7161441660&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-5,7161441660,50007418,77131895,spu,1,lessprocess,374544688">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T157pbXo4j53xXXXXX.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="92.00">&#165;92.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=7161441660&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="搜狐畅游 天龙八部3点卡 天龙八部100元2000点4000元宝 自动充值" atpanel="1-5,7161441660,50007418,77131895,spu,1,lessprocess,374544688">
                                <span class="H">搜</span>狐畅游 天龙八部3点卡 天龙八部100元2000点4000元宝 自动充值</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>5536</em>|<a href="http://detail.tmall.com/item.htm?id=7161441660&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-5-1,7161441660,50007418,77131895,spu,1,lessprocess,374544688">累计评价:2781</a></p>
                    </div>
                </div>
                <div class="product" data-id="19781431991">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=19781431991&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                class="productImg" target="_blank" atpanel="1-6,19781431991,50007418,77131895,spu,1,lessprocess,741045700">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1Kjw7XdpeXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="91.98">&#165;91.98</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=19781431991&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1"
                                target="_blank" title="搜狐天龙八部3点卡畅游一卡通100元2000点数4000元宝票自动充值" atpanel="1-6,19781431991,50007418,77131895,spu,1,lessprocess,741045700">
                                <span class="H">搜</span>狐天龙八部3点卡畅游一卡通100元2000点数4000元宝票自动充值</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>4280</em>|<a href="http://detail.tmall.com/item.htm?id=19781431991&amp;is_b=1&amp;cat_id=2&amp;q=%CB%D1&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="1-6-1,19781431991,50007418,77131895,spu,1,lessprocess,741045700">累计评价:416</a></p>
                    </div>
                </div>
            </div>
        </div>
        <div class="clearfix">
            <a class="qMore ui-btn-s-primary" atpanel="1-2,%CB%D1,,,,20,lessprocess," href="http://list.tmall.com/search_product.htm?style=g&amp;vmarket=0&amp;q=%CB%D1&amp;frm=&amp;tsearch=&amp;from=rs_1_key"
                target="_blank">查看全部&gt;&gt;</a>
        </div>
        <div class="qt">
            <del>搜</del> <del>?</del> <em>b</em> <del>的</del> <span class="m10">(455806件相关商品)</span>
            <a atpanel="2-1,b,,,,20,lessprocess," href="http://list.tmall.com/search_product.htm?style=g&amp;vmarket=0&amp;q=b&amp;frm=&amp;tsearch=&amp;from=rs_1_key"
                target="_blank"><em class="ws m0">查看全部</em>&gt;&gt;</a>
        </div>
        <div class="qc">
            <div class="view view-noSku clearfix">
                <div class="product" data-id="23249476208">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=23249476208&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-1,23249476208,162104,215804834,spu,1,lessprocess,420806631">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1TNtNXu4bXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="1180.00">&#165;1180.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=23249476208&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="VOA维欧艾 短袖真丝衬衫女 2013夏装欧美桑蚕丝衬衣 真丝上衣B158" atpanel="2-1,23249476208,162104,215804834,spu,1,lessprocess,420806631">
                                VOA维欧艾 短袖真丝衬衫女 2013夏装欧美桑蚕丝衬衣 真丝上衣<span class="H">B</span>158</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>528</em>|<a href="http://detail.tmall.com/item.htm?id=23249476208&amp;is_b=1&amp;cat_id=2&amp;q=b&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="2-1-1,23249476208,162104,215804834,spu,1,lessprocess,420806631">累计评价:359</a></p>
                    </div>
                </div>
                <div class="product" data-id="18694771516">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=18694771516&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-2,18694771516,50010850,213416218,spu,1,lessprocess,133006562">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T18uuzXupbXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="299.00">&#165;299.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=18694771516&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="包邮[千人团]歌莉娅goelia2013夏娃娃领雪纺百褶连衣裙135E4A48B" atpanel="2-2,18694771516,50010850,213416218,spu,1,lessprocess,133006562">
                                包邮[千人团]歌莉娅goelia2013夏娃娃领雪纺百褶连衣裙135E4A48<span class="H">B</span></a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>1020</em>|<a href="http://detail.tmall.com/item.htm?id=18694771516&amp;is_b=1&amp;cat_id=2&amp;q=b&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="2-2-1,18694771516,50010850,213416218,spu,1,lessprocess,133006562">累计评价:209</a></p>
                    </div>
                </div>
                <div class="product" data-id="22252920084">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=22252920084&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-3,22252920084,50010850,213785559,spu,1,lessprocess,133006562">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1Bm9sXsNfXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="369.00">&#165;369.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=22252920084&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="包邮[千人团]歌莉娅goelia2013夏压褶荷叶袖雪纺连衣裙135E4B300" atpanel="2-3,22252920084,50010850,213785559,spu,1,lessprocess,133006562">
                                包邮[千人团]歌莉娅goelia2013夏压褶荷叶袖雪纺连衣裙135E4<span class="H">B</span>300</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>769</em>|<a href="http://detail.tmall.com/item.htm?id=22252920084&amp;is_b=1&amp;cat_id=2&amp;q=b&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="2-3-1,22252920084,50010850,213785559,spu,1,lessprocess,133006562">累计评价:277</a></p>
                    </div>
                </div>
                <div class="product" data-id="17058430213">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=17058430213&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-4,17058430213,50010850,213783625,spu,1,lessprocess,133006562">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1ZSmoXstfXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="369.00">&#165;369.00</em>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=17058430213&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="包邮[千人团]歌莉娅goelia2013夏新印花修身散摆连衣裙135E4B50A" atpanel="2-4,17058430213,50010850,213783625,spu,1,lessprocess,133006562">
                                包邮[千人团]歌莉娅goelia2013夏新印花修身散摆连衣裙135E4<span class="H">B</span>50A</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>429</em>|<a href="http://detail.tmall.com/item.htm?id=17058430213&amp;is_b=1&amp;cat_id=2&amp;q=b&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="2-4-1,17058430213,50010850,213783625,spu,1,lessprocess,133006562">累计评价:132</a></p>
                    </div>
                </div>
                <div class="product" data-id="16118437923">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=16118437923&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-5,16118437923,50012010,209249653,spu,1,lessprocess,381435256">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T126xmXx0gXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="1357.85">&#165;1357.85</em> <del>&#165;1798.00</del>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=16118437923&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="ELLE 2012秋冬专柜新款牛皮真皮女包包原价1798  E2071B21602BU" atpanel="2-5,16118437923,50012010,209249653,spu,1,lessprocess,381435256">
                                ELLE 2012秋冬专柜新款牛皮真皮女包包原价1798 E2071<span class="H">B</span>21602<span class="H">B</span>U</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>29</em>|<a href="http://detail.tmall.com/item.htm?id=16118437923&amp;is_b=1&amp;cat_id=2&amp;q=b&amp;on_comment=1#J_TabBar"
                                target="_blank" atpanel="2-5-1,16118437923,50012010,209249653,spu,1,lessprocess,381435256">累计评价:35</a></p>
                    </div>
                </div>
                <div class="product" data-id="24097480052">
                    <div class="product-iWrap">
                        <div class="productImg-wrap">
                            <a href="http://detail.tmall.com/item.htm?id=24097480052&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                class="productImg" target="_blank" atpanel="2-6,24097480052,50012010,217633633,spu,1,lessprocess,473632116">
                                <img src="%E6%90%9C%20B%E7%9A%84-%E5%A4%A9%E7%8C%ABTmall.com-%E4%B8%8A%E5%A4%A9%E7%8C%AB%EF%BC%8C%E5%B0%B1%E8%B4%AD%E4%BA%86_files/T1Y8qXXBBfXXXXXXXX_0-item_pic.jpg">
                            </a>
                        </div>
                        <p class="productPrice">
                            <em title="768.90">&#165;768.90</em> <del>&#165;1280.00</del>
                        </p>
                        <p class="productTitle">
                            <a href="http://detail.tmall.com/item.htm?id=24097480052&amp;is_b=1&amp;cat_id=2&amp;q=b"
                                target="_blank" title="波斯丹顿 牛皮 男包 丝光网纹 男士手提包 斜挎包 韩版商务B10592" atpanel="2-6,24097480052,50012010,217633633,spu,1,lessprocess,473632116">
                                波斯丹顿 牛皮 男包 丝光网纹 男士手提包 斜挎包 韩版商务<span class="H">B</span>10592</a>
                        </p>
                        <p class="productStatus">
                            月销量:<em>6</em></p>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <h2>
        Searchs</h2>
    <% using (Html.BeginForm())
       {%>
    <%: Html.ValidationSummary(true) %>
    <fieldset>
        <legend>Fields</legend>
        <div class="editor-label">
            <%: Html.LabelFor(model => model.skip) %>
        </div>
        <div class="editor-field">
            <%: Html.TextBoxFor(model => model.skip) %>
            <%: Html.ValidationMessageFor(model => model.skip) %>
        </div>
        <p>
            <input type="submit" value="Save" />
        </p>
    </fieldset>
    <% } %>
    <div>
        <%: Html.ActionLink("Back to List", "Index") %>
    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
