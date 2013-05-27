<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.SearchModel>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    <%: Model.strSearch ?? "-" %>- 依库,一库的选择
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <meta http-equiv="content-type" content="text/html; charset=gbk">
    <script charset="gbk" async="" src="../../Scripts/search/btm-search.js"></script>
    <script charset="GBK" async="" src="../../Scripts/search/bottombar.js"></script>
    <script charset="GBK" async="" src="../../Scripts/search/brandbar.js"></script>
    <script async="" src="../../Scripts/search/counter6.js"></script>
    <script async="" src="../../Scripts/search/tgallery_002.js"></script>
    <script src="../../Scripts/search/adapter-min.js"></script>
    <script async="" src="../../Scripts/search/feedback.js"></script>
    <script async="" src="../../Scripts/search/tgallery.js"></script>
    <script async="" src="../../Scripts/search/core.js"></script>
    <script async="" src="../../Scripts/search/tb-mpp-min.js"></script>
    <script async="" src="../../Scripts/search/tlabs-min.js"></script>
    <script async="" src="../../Scripts/search/webww-min.js"></script>
    <script async="" src="../../Scripts/search/backtop.js"></script>
    <script async="" src="../../Scripts/search/a.js"></script>
    <script async="" src="../../Scripts/search/init.js"></script>
    <script charset="utf-8" async="" src="../../Scripts/search/switchable-min.js"></script>
    <script charset="gbk" async="" src="../../Scripts/search/a_003.js"></script>
    <script charset="utf-8" async="" src="../../Scripts/search/a_006.js"></script>
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
        var __list_atpanel_param = 'rn=88e60eb00e70c9a30ada641920d6a5bf&q=%CB%D1%84%31%A4%37B%B5%C4&bid=4&uid=lpm0157&catid=2&prop=&sort=s&disp=g&filter=user_group:-0_0-0_3_0_3_3_3---1-6----|scroll:1349*4166|client:1349*618|offset:1349*4166|screen:1366*768&loc=&n=60&page=1&v=mall_1.0&vmarket=0&machineid=d525c27a92a046ec1b87f8588be1fb3d&tmalltrackid=&nav=&navlog=&rewq=%CB%D1%84%31%A4%37B%B5%C4&rewcatid=2&page_type=1&stats=qp:1|cat:1|brand-qp:1|key:1|pricemodel:fcity|pic:2|querytype:4|skuahead:2|queryProp:2|querytype:32|screen:1366*768|lessprocess:1|defaultsearch:1|app:tmallsearchquery&filter_new=sort:s|post_fee:0|support_cod:0|manyPoints:0|wwonline:0|miaosha:0|isCombo:0|vip:0|pic_detail:0|floc:0|fprice:0|tm_lq:0|tm_hot:0|tm_new:0|new:0|filter_mj:0&from=&active=0&wq=&suggest=&search_type=search&abtest=&std_query=b&top_query=&direct_rc=2&', __header_atpanel_param = 'bid=4&rn=88e60eb00e70c9a30ada641920d6a5bf';
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
        .SearchBtn
        {
            margin: 8px;
            width: 48px;
            height: 30px;
            border: 0;
            font-size: 18px;
            color: #FFF;
            background-color: #C3B360;
            border-radius: 5px;
            transition: .1s;
        }
        .SearchBtn:hover
        {
            background-color: #7F7140;
        }
        .mt-header
        {
            height: 0px !important;
        }
        .clearfix_yiku
        {
            padding-top: 15px;
            overflow: visible;
        }
        .clearfix_mid
        {
            overflow: inherit;
        }
        .cateAttrs li
        {
            display: block;
            margin: 0 5px 8px 0;
            width: 80px;
            overflow: hidden;
        }
        .fRange
        {
            overflow:hidden;
        }
        .mallSearch-form 
        {
            background-color:#FFF!important;
        }
        #Yikus button{
            float: right;
            
            
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="J_Nav">
        <div class="attrs">
            <div class="cateAttrs">
                <div class="j_Cate attr">
                    <div class="attrKey">
                        分类</div>
                    <div class="attrValues">
                        <ul style="height: auto;" class="av-collapse">
                            <% if (Model.Classes != null) foreach (var classm in Model.Classes)
                               { %>
                            <li>
                                <%: Html.ActionLink(classm.Name ,"Search", "Item", new { Cname = classm.Name}, new {title = classm.Name} )%>
                            </li>
                            <%} %>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
        
        <div class="clearfix" id="J_Filter" >
            <%using (Html.BeginForm("Search", "Item", FormMethod.Post, new { Class = "mallSearch-form" }))
              {
                  string strSearch = Model.strSearch;
            %>
            <table><tr>
                <td>商品名</td><td><%: Html.TextBoxFor( m=> m.strSearch)%>
                </td>
                <td>用户名</td><td><%: Html.TextBoxFor(m => m.Uname, new { Class = "fsort" })%>
                </td>
                <td>分类</td><td><%: Html.TextBoxFor(m => m.Cname, new { Class = "fSort" })%>
                </td>
                <td>最低价</td><td>
                    <%: Html.TextBoxFor(m => m.pMin, new { autocomplete = "off", maxlength = "8", Class = "fSort" })%>
                    </td>
                <td>最高价</td><td>
                    <%: Html.TextBoxFor(m => m.pMax, new { autocomplete = "off", maxlength = "8", Class = "fSort" })%>
                </td>
                <td>
                    <button type = "submit" class="SearchBtn">
                        <b>搜索</b>
                        </button> 
                </div>   
                </td>        
            
            </tr></table>

            <%} %>

            

        </div>

        <div id="J_ComboRec">
        <div class="clearfix">
            <p class="ui-page-s">
            <b class="ui-page-s-len"><%: Model.skip + 1 %>/<%: Model.pageCount %></b> 
            <b class="ui-page-s-prev" title="上一页"><%: Html.ActionLink("<","Search","Item",new { Uname=Model.Uname,Cname=Model.Cname ,strSearch = Model.strSearch,pMin = Model.pMin, pMax = Model.pMax, skip= Model.skip -1},null)   %></b>
            <b class="ui-page-s-next" title="下一页"><%: Html.ActionLink(">","Search","Item",new { Uname=Model.Uname,Cname=Model.Cname ,strSearch = Model.strSearch,pMin = Model.pMin, pMax = Model.pMax, skip= Model.skip +1},null)   %></b>
            </p>
        </div>
        <div class="qt">
            <%: Model.strSearch %>
            <span class="m10">(<%: Model.ItemsCount%>
                件相关商品)</span>
        </div>
    </div>

        <div style="height: 30px; display: none;" id="J_FilterPlaceholder">
        </div>

    </div>
    
    <div class=" view view-noSku clearfix  clearfix_yiku" id="J_ItemList">
        <%if (Model.Exist)
              foreach (var item in Model.Items)
              { %>
        <div class="product">
            <div class="product-iWrap">
                <div class="productImg-wrap">
                    <a class="productImg" target="_blank">
                        <img alt="" style="width: 220px; height: 220px;" src='
                            <%: (item.thePictureRoute == null)?"":"../../Content/Image/Items/"+ item.thePictureRoute %>
                        '>
                    </a>
                </div>
                <p class="productPrice">
                    <%string sPrice = String.Format("{0:f}", item.Price); %>
                    <em title="<%: sPrice %>">&#165;<%: sPrice %></em>
                </p>
                <p class="productTitle">
                    <%: Html.ActionLink(item.Name, "Details", "Item", new { ID = item.IID }, new { target = "_blank" })%>
                </p>
                <p class="productStatus">
                    销量:<em><%: item.Volume %></em>
                </p>
                <div class="productShop">
                    <%: Html.ActionLink(item.User.Name, "Search", "Item", new { Uname = item.User.Name }, new { target = "_blank",Class = "productShop-name"})%>
                </div>
                <p class="productIcons">
                </p>
                <p class="productAttrs">
                </p>
            </div>
        </div>
        <%} %>
    </div>
    
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
