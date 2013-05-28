<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <style>
        .mt-header
        {
            display: none !important;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="content">
        <input type="hidden" value="7J9nT6FrXi2h" id="J_TbToken" />
        <div class="brandCon">
            <div class="brandFp">
                <div class="brandFp-nav">
                    <ul class="bF-navList">
                        <% foreach (var classm in Model.rootClasses)
                           { %>
                        <li class="bFnL-item">
                            <h3>
                                <%: Html.ActionLink(classm.Name,"Search", "Item",new {Cname = classm.Name },null)  %>
                            </h3>
                            <div class="bFnL-subNav">
                                <% foreach (var cl in Model.sonClasses(classm))
                                   { %>
                                <%: Html.ActionLink(cl.Name, "Search", "Item", new { Cname = cl.Name }, null)%>
                                <%} %>
                            </div>
                        </li>
                        <%} %>
                    </ul>
                    <div class="bF-azIndex">
                        <ol class="bF-azIndex-list clearfix">
                            <li><a href="#">Y</a></li>
                            <li><a href="#">I</a></li>
                            <li><a href="#">K</a></li>
                            <li><a href="#">U</a></li>
                        </ol>
                    </div>
                    <p class="bF-azIndex-tips">
                        More<i>&#9830;</i></p>
                </div>
                <div class="brandFp-slide" id="J_FpSlide">
                    <!-- 中间显示部分-->
                    <div class="brandFp-slide-w" style="position: relative;">
                        <ul class="brandFp-slide-bd" style="position: absolute; width: 2950px; left: -1180px;">
                            <% if (Model.MostBuy0 != null) foreach (var item in Model.MostBuy0)
                                   { %>
                            <li style="display: block; float: left;">
            
                            <a href="../../Item/Details/<%: item.IID %>" target="_blank">
                                <img alt="虎牌" src="<%: "../../Content/Image/Items/" + item.thePictureRoute %>"
                                    height="460" width="590">
                                    </a></li>
                                    <%} %>
                        </ul>
                    </div>
                    <a title="上一页" href="javascript:void(0);" class="ui-slide-arrow-l brandFp-slide-l"
                        style="left: 13.25px;"><</a> <a title="下一页" href="javascript:void(0);" class="ui-slide-arrow-l brandFp-slide-r"
                            style="right: 13.25px;">></a>
                    <ul class="ks-switchable-nav">
                        <li class="">1</li><li class="">2</li><li class="ks-active">3</li><li>4</li><li>5</li>
                    </ul>
                </div>
                <style>
                    .bFl-item-logo li
                    {
                        background-image: url(http://img01.taobaocdn.com/tps/i1/T1a3_QXohaXXXzKHv4-200-366.png);
                    }
                    .brandFloor .bFlil-link:hover
                    {
                        -webkit-animation: none;
                    }
                    .bFlil-mask-add
                    {
                        position: static;
                        display: inline-block;
                    }
                    #brandFloor8 .brandFloor .bFlil-link:hover
                    {
                        top: 0;
                    }
                </style>
                <div class="brandFp-extra">
                    <div class="bFe-userFav">
                        <h3>
                            最近被买的商品<s></s></h3>
                        <div class="bFeuF-login">
                            <% if (Model.CurrentUser == null)
                               {%>
                            <a id="J_BrandUserLogin" href="../Account/Login?returnUrl=../Home/Index " class="ui-btn-l-primary">
                                用户登录</a>
                            <%}
                               else
                               {
                                   if (Model.BuyRecently != null)
                                   {%>
                            <div>
                                <a href="../../MyYiku/Order">
                                    <img style="width: 80px!important; height: 80px;" src="<%: "../../Content/Image/Items/"+Model.BuyRecently.thePictureRoute %>" />
                                </a>
                                <div style="width: 150px; height: 40px; overflow: hidden; margin-left: 20px;">
                                    <p>
                                        <%: Html.ActionLink(Model.BuyRecently.Name, "Order", "MyYiku", null, new { Style = "color:#111;"})%></p>
                                </div>
                            </div>
                            <%}
                                   else
                                   {%>
                            没有任何商品
                            <%}
                               }%>
                        </div>
                    </div>
                    <%--<div class="bFe-recommend">
                        <h3>
                            猜你喜欢的品牌<s></s></h3>
                        <ul class="bFl-item-logo clearfix">
                            <li><a target="_blank" title="Apple/苹果" class="bFlil-link" href="http://tj189.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.30111_6">
                                <img src="http://img03.taobaocdn.com/bao/uploaded/i3/T10lZDXbFhXXbc_Djq-90-45.jpg_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="30111">+ 关注该品牌</b> </span></a></li>
                            <li><a target="_blank" title="红蜻蜓" class="bFlil-link" href="http://reddragonfly.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.44618_6">
                                <img src="http://img03.taobaocdn.com/bao/uploaded/i3/T16ZYUXkVdXXXQXDnq-90-45.png_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="44618">+ 关注该品牌</b> </span></a></li>
                            <li><a target="_blank" title="Belle/百丽" class="bFlil-link" href="http://ebelle.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.29468_6">
                                <img src="http://img02.taobaocdn.com/bao/uploaded/i2/T1kZzRXhVoXXXQXDnq-90-45.png_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="29468">+ 关注该品牌</b> </span></a></li>
                            <li><a target="_blank" title="YANGSANG/杨桑" class="bFlil-link" href="http://pba.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.117090802_6">
                                <img src="http://img.taobaocdn.com/bao/uploaded/T2s8yiXkVcXXXXXXXX_!!186687659.jpg_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="117090802">+ 关注该品牌</b> </span></a></li>
                            <li><a target="_blank" title="Fairwhale/马克华菲" class="bFlil-link" href="http://fairwhale.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.29482_6">
                                <img src="http://img03.taobaocdn.com/bao/uploaded/i3/T1BxDNXltgXXbc_Djq-90-45.jpg_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="29482">+ 关注该品牌</b> </span></a></li>
                            <li><a target="_blank" title="Osairous/欧塞洛斯" class="bFlil-link" href="http://osairous.tmall.com/?scm=1003.5.06001.0&amp;spm=1.0.0.N&amp;acm=06001.1003.661.215.91878077_6">
                                <img src="http://img03.taobaocdn.com/bao/uploaded/i3/T1E5nZXhRdXXXQXDnq-90-45.png_120x120.jpg"
                                    width="90" height="45">
                                <span class="bFlil-mask"><b class="bFlil-mask-shop">去逛逛<i></i></b> <b class="bFlil-mask-add j_CollectBrand"
                                    data-brandid="91878077">+ 关注该品牌</b> </span></a></li>
                        </ul>
                    </div>--%>
                    <div class="bFe-newBrand" >
                        <h3>
                            我的资料<s></s></h3>
                        <div class="bFenB-slide" id="J_NewBrandSlide" style="position: relative;">
                            <ul class="bFenB-slide-nav">
                                <li class="brandSlide-active">•</li>
                                <li>•</li>
                            </ul>
                            <ul class="bFenB-slide-con" data-spm="$spm_module_id" style="position: absolute;
                                width: 380px;">
                                <% if (Model.CurrentUser != null)
                                   { %>
                                <li style="display: block; float: left;">
                                    <div style="margin:20px;">用户名<%: Model.CurrentUser.Name%></div>
                                </li>
                                <br/>
                                <li style="display: block; float: left; ">
                                    <div style="height :30px;margin:20px;">积分<%: Model.CurrentUser.Point%></div>
                                </li>
                                <%} %>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
            <div class="floorLoading j_BrandFloor" id="brandFloor1">
                <div>
                    <div class="brandFloor">
                        <%--<h3 class="ui-title">
                            <em class="ui-title-num">01</em> <a target="_blank" href="#" class="ui-title-con brandFloor-hd0">
                                <b class="ui-title-text">推荐 <s class="ui-title-mask"></s></b><i class="ui-title-arrow">
                                </i></a>
                        </h3>--%>
                        <div class="brandFloor-con">
                            <%if(Model != null){ 
                                  %>
                            <div class="module">
                                <ul class="brandFloor-list" data-spm="3.2167905.a2223nt">
                                    <li class="bFl-item">
                                        <% if (Model.MostBuy0 != null)
                                        { %>
                                        <div class="bFl-item-slide j_FloorSlide">
                                            <div class="bFlis-hd">
                                                <span>最热商品</span>
                                                <ul class="bFlis-hd-nav">
                                                    <li class="brandSlide-active">&#8226;</li>
                                                    <li>&#8226;</li>
                                                </ul>
                                            </div>
                                            <%var it = Model.MostBuy0.First(); %>
                                            <ul class="bFlis-con">
                                                <li class="bFlis-con-list"><a target="_blank" href="../../Item/Details/<%: it.IID %>">
                                                    <img src="<%: "../../Content/Image/Items/"+it.thePictureRoute %>" alt="crocs"
                                                        height="120" width="190" title="<%: it.Name %>" /></a> 
                                                        </li>
                                               
                                            </ul>
                                        </div>
                                        <ul class="bFl-item-logo clearfix">
                                            <% foreach (var item in Model.MostBuy0)
                                               { %>
                                            <li>
                                                <a class="bFlil-link" target="_blank" href="../../Item/Details/<%: item.IID %>" title="<%: item.Name %>">
                                                    <span class="bFlil-img">
                                                        <img height="45" width="90" alt="item.Name" src="<%: "../../Content/Image/Items/"+item.thePictureRoute %>" />
                                                    </span><span class="bFlil-mask"><b class="bFlil-mask-add j_CollectBrand" data-brandid="3272234">
                                                        查看详情</b> </span></a></li>
                                            <%} %>
                                        </ul>
                                        <%} %>
                                        
                                    </li>
                                    <li class="bFl-item">
                                        <% if (Model.MostBuy8 != null)
                                        { %>
                                        <div class="bFl-item-slide j_FloorSlide">
                                            <div class="bFlis-hd">
                                                <span>最热商品</span>
                                                <ul class="bFlis-hd-nav">
                                                    <li class="brandSlide-active">&#8226;</li>
                                                    <li>&#8226;</li>
                                                </ul>
                                            </div>
                                            <%var it = Model.MostBuy8.First(); %>
                                            <ul class="bFlis-con">
                                                <li class="bFlis-con-list"><a target="_blank" href="../../Item/Details/<%: it.IID %>">
                                                    <img src="<%: "../../Content/Image/Items/"+it.thePictureRoute %>" alt="crocs"
                                                        height="120" width="190" title="<%: it.Name %>" /></a> 
                                                        </li>
                                               
                                            </ul>
                                        </div>
                                        <ul class="bFl-item-logo clearfix">
                                            <% foreach (var item in Model.MostBuy8)
                                               { %>
                                            <li>
                                                <a class="bFlil-link" target="_blank" href="../../Item/Details/<%: item.IID %>" title="<%: item.Name %>">
                                                    <span class="bFlil-img">
                                                        <img height="45" width="90" alt="item.Name" src="<%: "../../Content/Image/Items/"+item.thePictureRoute %>" />
                                                    </span><span class="bFlil-mask"><b class="bFlil-mask-add j_CollectBrand" data-brandid="3272234">
                                                        查看详情</b> </span></a></li>
                                            <%} %>
                                        </ul>
                                        <%} %>
                                    </li>
                                    <li class="bFl-item">
                                        <% if (Model.NewPost0 != null)
                                        { %>
                                        <div class="bFl-item-slide j_FloorSlide">
                                            <div class="bFlis-hd">
                                                <span>最新商品</span>
                                                <ul class="bFlis-hd-nav">
                                                    <li class="brandSlide-active">&#8226;</li>
                                                    <li>&#8226;</li>
                                                </ul>
                                            </div>
                                            <%var it = Model.NewPost0.First(); %>
                                            <ul class="bFlis-con">
                                                <li class="bFlis-con-list"><a target="_blank" href="../../Item/Details/<%: it.IID %>">
                                                    <img src="<%: "../../Content/Image/Items/"+it.thePictureRoute %>" alt="crocs"
                                                        height="120" width="190" title="<%: it.Name %>" /></a> 
                                                        </li>
                                               
                                            </ul>
                                        </div>
                                        <ul class="bFl-item-logo clearfix">
                                            <% foreach (var item in Model.NewPost0)
                                               { %>
                                            <li>
                                                <a class="bFlil-link" target="_blank" href="../../Item/Details/<%: item.IID %>" title="<%: item.Name %>">
                                                    <span class="bFlil-img">
                                                        <img height="45" width="90" alt="item.Name" src="<%: "../../Content/Image/Items/"+item.thePictureRoute %>" />
                                                    </span><span class="bFlil-mask"><b class="bFlil-mask-add j_CollectBrand" data-brandid="3272234">
                                                        查看详情</b> </span></a></li>
                                            <%} %>
                                        </ul>
                                        <%} %>
                                    </li>
                                    <li class="bFl-item">
                                        <% if (Model.NewPost8 != null)
                                        { %>
                                        <div class="bFl-item-slide j_FloorSlide">
                                            <div class="bFlis-hd">
                                                <span>最新商品</span>
                                                <ul class="bFlis-hd-nav">
                                                    <li class="brandSlide-active">&#8226;</li>
                                                    <li>&#8226;</li>
                                                </ul>
                                            </div>
                                            <%var it = Model.NewPost8.First(); %>
                                            <ul class="bFlis-con">
                                                <li class="bFlis-con-list"><a target="_blank" href="../../Item/Details/<%: it.IID %>">
                                                    <img src="<%: "../../Content/Image/Items/"+it.thePictureRoute %>" alt="crocs"
                                                        height="120" width="190" title="<%: it.Name %>" /></a> 
                                                        </li>
                                               
                                            </ul>
                                        </div>
                                        <ul class="bFl-item-logo clearfix">
                                            <% foreach (var item in Model.NewPost8)
                                               { %>
                                            <li>
                                                <a class="bFlil-link" target="_blank" href="../../Item/Details/<%: item.IID %>" title="<%: item.Name %>">
                                                    <span class="bFlil-img">
                                                        <img height="45" width="90" alt="item.Name" src="<%: "../../Content/Image/Items/"+item.thePictureRoute %>" />
                                                    </span><span class="bFlil-mask"><b class="bFlil-mask-add j_CollectBrand" data-brandid="3272234">
                                                        查看详情</b> </span></a></li>
                                            <%} %>
                                        </ul>
                                        <%} %>
                                    </li>
                                </ul>
                            </div>
                            <%} %>
                            <div class="brandFloor-top">
                                <h4>
                                    用户排行榜<s></s></h4>
                                <div class="module">
                                    <ol class="bFt-list j_FloorTop">
                                        <% if(Model.FavorateUsers != null)foreach (var user in Model.FavorateUsers)
                                           { %>
                                        <li class="bFlil-expand">
                                            <p class="bFt-list-name">
                                                <%: Html.ActionLink(user.Name , "Search", "Item", new {Uname = user.Name}, null) %>
                                            </p>
                                            <p class="bFt-list-sell">
                                                发布商品<em><%: user.Items.Count %></em></p> 
                                        </li>
                                        <%} %>
                                    </ol>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <script>
            KISSY.use('2.0/index', function (S, Index) {
                new Index();
            })
        </script>
    </div>
</asp:Content>
