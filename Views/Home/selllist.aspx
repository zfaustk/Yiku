<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <link rel="Stylesheet" href="../../Content/list/base.css" >
    <link rel="Stylesheet" href="../../Content/list/bk.css" >
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
<div id="page" style="width:990px;height:700px;">
    <!--
<style>
.mt-header{
margin-top:10px !important;
}
#decSaleTopBanner{ display:none;} 
</style>
<a href="http://www.taobao.com/market/2012/1212/home.php?spm=1.377271.302995.1&ad_id=&am_id=1301045826a610fee231&cm_id=&pm_id=" target=_blank>
<img src="http://img01.taobaocdn.com/tps/i1/T1tYUvXaFgXXcAwN6h-990-125.png" width="990" style="border:none;display:block;width:990px;margin-left:auto;margin-right:auto;">
</a>
-->
 
<link rel="stylesheet" href="../../Content/list/banshi.css">
<link rel="Stylesheet" href="../../Content/pro/app.css" >
<link rel="Stylesheet" href="../../Content/pro/pf-base.css" >
<style>
#Content .main-wrap,
#content .main-wrap {
 margin-left: 140px;
}

#Content .col-sub,
#content .col-sub {
 width: 140px;
margin-left: -100%;
*display: inline;
}
</style>

<header class="mt-header" data-spm="a210b">
</header>
<script>    TB.Global.init();</script>
<!-- end vmcommon/mytaobao -->


<div id="content">
 <div id="mytaobao-panel" class="grid-c2">
 <div class="col-main">


<div class="main-wrap">
 <input id="J_ShareParam" type="hidden" value="{&quot;client_id&quot;:&quot;004&quot;}">
<span class="mytaobao-rc-tp"><span></span></span>
<div id="main-content">
<div class="navigation">
 <div class="crumbs " data-spm="6">
 <span>&gt;</span><span>&gt;</span>我的订单
 </div>
</div>
<div id="selllist" class="sns-config">

			<div class="sns-tab tab-app">
<ul>
		<li class="selected">
				<a href="#" data-spm-anchor-id="0.0.0.0"><span>售出的宝贝</span></a>
		</li>
</ul>


		<ul class="tab-sub">
			<li class="selected"><a href="base_info_set.htm"><span>所有宝贝</span></a></li>
			<li><a href="headset.htm?tracelog=Photo011"><span>未付款宝贝</span></a></li>
			<li><a href="school.htm"><span>已付款宝贝</span></a></li>
		</ul>
            </div>
			<div class="sns-box box-detail">
				<div class="bd">
					<div class="sns-nf">									
					</div>
				</div>
			</div>
</div>
</div> 
<style type="text/css">
thead{
display: table-header-group;
vertical-align: middle;
border-color: inherit;
}
th{
height: 29px;
border-bottom: 1px solid #aec7e5;
background: url(../../Content/image/itemlist_bg.gif) repeat-x 0 0;
text-align: center;
color: #000;
}
</style>
<div class="item-list-bd" data-spm="11">
<table id="J_ListTable" data-url="http://trade.taobao.com/trade/json/memo_info.htm?user_type=seller" data-stage-url="http://trade.taobao.com/trade/modify_price.htm" style="width:800px;">
<colgroup>
<col class="item-list-col0">
 <col class="item-list-col1"><!-- 宝贝 -->
 <col class="item-list-col2"><!-- 单价(元) -->
 <col class="item-list-col3"><!-- 数量 -->
 <col class="item-list-col4"><!-- 纠纷 -->
 <col class="item-list-col6"><!-- 买家 -->
 <col class="item-list-col7"><!-- 交易状态 -->
 <col class="item-list-col8"><!-- 实收款(元) -->
 <col class="item-list-col9"><!-- 评价 -->
</colgroup>
<thead>
<tr>
<th> </th>
<th class="item">宝贝</th>
<th class="price">单价(元)</th>
<th class="num">数量</th>
<th class="trouble">售后</th>
<th class="contact">买家</th>
<th class="trade-status">交易状态</th>
<th class="order-price">实收款(元)</th>
<th class="remark">评价</th>
</tr>
</thead>
 
</tbody>
</table> 
 

</div>
<!--end main-content-->
</div> 
<!--end main-wrap-->
</div><!-- end col-main -->

 <div class="col-sub">
 <!--$sns mytaobao_menu.vm-->
<aside class="mt-menu" id="J_MtSideMenu">
<div class="mt-avatar">
<div class="mt-avatar-box" id="J_MtAvatarBox">
<a class="mt-user-avatar" href="http://i.taobao.com/u/ODMyMjU2MTcy/front.htm?tracelog=snshomeside&amp;nekot=1369316320448" target="_blank">
<img src="http://wwc.taobaocdn.com/avatar/getAvatar.do?userId=832256172&amp;width=100&amp;height=100&amp;type=sns"></a>
<a class="mt-avatar-operation hide" id="J_MtAvatarOperation" href="http://i.taobao.com/user/headset.htm?nekot=1369316320448&amp;tracelog=newmytb_touxiangxiugai">上传新头像</a>
</div>
<div class="mt-edit-userinfo">
<a href="http://i.taobao.com/user/baseInfoSet.htm?nekot=1369316320448&amp;tracelog=newmytb_bianjiziliao" class="mt-edit-info">编辑资料</a>
<a href="http://i.taobao.com/user/privacy_set.htm?nekot=1369316320448&amp;tracelog=newmytb_yinsishezhi" class="mt-edit-private">隐私设置</a>
</div>
</div>

<div class="mt-menu-tree"> 
<dl class="mt-menu-item" data-spm="a2109">
<dt class="fs14">我的交易</dt>
<dd>
<a href="./profile" role="menuitem" data-spm="d1000367" >个人信息管理</a>
</dd>
<dd class="mt-menu-sub unfold">
<a id="bought" href="./list" data-spm="d1000368" >已买到的宝贝</a>
</dd>
<dd id="favorite">
<a href="./collect" data-spm="d1000374" >我的收藏</a>
</dd>


<dt class="fs14">我是卖家</dt>
<dd id="point"><a href="./sell" data-spm="d1000375">宝贝管理</a></dd>
<dd id="gotBonus"><a href="./selllist" data-spm="d1000376" class="selected">订单管理</a></dd>
<dd id="myRate"><a href="./sellorder" data-spm="d1000377">订单确认</a></dd>
</dl>
</div>
</aside> 
 </div>
 </div>
 </div>


</asp:Content>
