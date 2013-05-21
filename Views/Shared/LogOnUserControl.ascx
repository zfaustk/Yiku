<%@ Control Language="C#" Inherits="System.Web.Mvc.ViewUserControl" %>
<div role="navigation" id="site-nav"><div id="sn-bd"><div class="sn-container">

<link rel="stylesheet" href="../../Content/a_0022.css">
<link rel="stylesheet" href="../../Content/T1pKTWXcReXXX7spjX.css" type="text/css" media="screen">			
<link rel="stylesheet" href="../../Content/T10szYXgRaXXX7spjX.css" type="text/css" media="screen">							
<link rel="stylesheet" href="../../Content/MainPage_.css">

<b class="sn-edge"></b>
    <%
        if (Request.IsAuthenticated) {
    %>
    
    <ul class="sn-quick-menu">
        <li class="sn-seller j_SellerCenter">
            <a target="_top" href="#"> <b>
                <%: Page.User.Identity.Name %>的依库</b>
            </a>
        </li>
        <li class="sn-seller j_SellerCenter">
            <a target="_top" href="http://mai.taobao.com/seller_admin.htm">商家中心</a>
        </li>
        <li class="sn-mybrand">
            <div id="menu-291" aria-hidden="true" role="menu" class="menu-hd">
                    <div class="menu-bd-panel" id="myTaobaoPanel">
                            <a href="Item/Buy" target="_top" rel="nofollow">已卖出的宝贝</a>

                    </div>
                </div>
        </li>
        <li class="sn-mybrand">
            <div id="Div1" aria-hidden="true" role="menu" class="menu-hd">
                    <div class="menu-bd-panel" id="Div2">
                            <a href="Item/Buy" target="_top" rel="nofollow">已买到的宝贝</a>
                    </div>
                </div>
        </li>
        <li class="cart mini-cart menu">
                
                
            <a id="mc-menu-hd" class="menu-hd" href="ShoppingCar" target="_top" rel="nofollow">
                <span class="mini-cart-line"></span>
                <s></s>购物车
                <span class="mc-count mc-pt3">0</span>件
            </a>
        </li>
        <li class="sn-favorite menu-item">
            <div class="sn-menu">
                <a aria-label="右键弹出菜单，tab键导航，esc关闭当前菜单" aria-haspopup="menu-292" tabindex="0" class="menu-hd" href="Collector" target="_top" rel="nofollow">收藏夹<b></b></a>

                <div id="menu-292" aria-hidden="true" role="menu" class="menu-bd">
                    <div class="menu-bd-panel">
                            <a href="http://favorite.taobao.com/collect_list.htm?itemtype=1" target="_top" rel="nofollow">收藏的宝贝</a>
                            <a href="http://favorite.taobao.com/collect_list.htm?itemtype=0" target="_top" rel="nofollow">收藏的店铺</a>   
                    </div>
                </div>
            </div>
        </li>
        <li class="sn-home">
            <a href="Home/">依库网</a>
        </li>
        
    </ul>
        
    <%
        }
        else {
    %> 
    <p id="login-info" class="sn-login-info">喵，欢迎来依库！
        <%: Html.ActionLink("请登录", "LogIn", "Account") %>
        <%: Html.ActionLink("免费注册", "Register", "Account")%>
        <i class="sn-separator"></i>
    </p>
    <%
        }
    %>
</div></div></div>

    

