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
 <span>&gt;</span><span>&gt;</span>个人信息管理
 </div>
</div>
<div id="profile" class="sns-config">

			<div class="sns-tab tab-app">
	<ul>
		<li class="selected">
				<a href="base_info_set.htm?spm=0.0.0.0.8jr2ru" data-spm-anchor-id="0.0.0.0"><span>个人资料</span></a>
		</li>
		<li>
				<a href="privacy_set.htm"><span>隐私设置</span></a>
		</li>
	</ul>
			<ul class="tab-sub">
			<li class="selected"><a href="base_info_set.htm"><span>基本资料</span></a></li>
			<li><a href="headset.htm?tracelog=Photo011"><span>头像照片</span></a></li>
			<li><a href="school.htm"><span>教育情况</span></a></li>
			<li><a href="job.htm"><span>工作情况</span></a></li>
					</ul>
		</div>

						<div class="sns-box box-detail">
				<div class="bd">
					<div class="sns-nf">
    					<!--step start-->
    						 
<div class="pf-step J_PfStep" data-param="{&quot;current&quot;: 0, &quot;expect&quot;: 30, &quot;msg&quot;: &quot;0%，&lt;a href='/user/base_info_set.htm'&gt;完成真实姓名&lt;/a&gt;+10%&quot;, &quot;width&quot;: 145}">
	<span>资料完整度：</span>
    <b class="pf-step-box">
        <b class="pf-current J_PfCurrent" style="width: 0%;"></b>
        <b class="pf-expect J_PfExpect" style="width: 30%;"></b>
    </b>
</div>
    					<!--step end-->						
			            <div style="font-size:15px;margin:10px 0;">亲爱的<b>lpm0157</b>，填写真实的资料，有助于好友找到你哦。</div>
						<form id="baseInfoForm" name="baseInfoForm" method="post" class="infoForm">
							<input name="_tb_token_" type="hidden" value="Z5R1so7tNDm">
							<input type="hidden" name="action" value="user/baseInfoSetAction">
							<input type="hidden" name="event_submit_do_save_or_update_base_info_setting" value="1">
							<input type="hidden" name="redirectURL" value="">
							<input type="hidden" id="J_occupation_view" value="">
							<!--方便js取值 -->
							<input type="hidden" id="J_home_url" value="$itaobaoServer.setTarget('json/school_json.htm')">
							<div id="main-profile" class="parts">
                                <p>
                                	<label for="">当前头像：</label>
                                	<span class="pf-avatar-box">
                                		<a class="pf-avatar">
                                																 		<img src="http://a.tbcdn.cn/p/sns/1.0/img/default/avatar-80.png" alt="" width="80" height="80">
                                		</a>
                                		<a href="http://i.taobao.com/user/headset.htm" class="pf-edit-avatar" style="display: none;">编辑头像</a>
                                	</span>
                                </p>
								<p>
								<label>昵称：<em>*</em></label>
								<input id="J_uniqueName" name="_fm.b._0.u" class="f-txt" type="text" value="" maxlength="25" style="width:136px">
								</p>
																	<p>
								<label>真实姓名：</label>
								<input id="J_realname" name="_fm.b._0.r" class="f-txt" type="text" value="" maxlength="6" style="width:136px">
																</p>
								<p>
								<label>性别：<em>*</em></label>
									<label for="J_gender1" class="except"><input id="J_gender1" type="radio" name="_fm.b._0.g" value="0">
									男</label>

									<label for="J_gender2" class="except"><input id="J_gender2" type="radio" name="_fm.b._0.g" value="1">
										女</label>
									
									</p>
																			
                                    <p>
									<label>生日：</label>
									<select id="J_Year" name="_fm.b._0.y">
										<option selected="selected">年</option>
																					<option value="1940">1940</option>
																					<option value="1941">1941</option>
																					<option value="1942">1942</option>
																					<option value="1943">1943</option>
																					<option value="1944">1944</option>
																					<option value="1945">1945</option>
																					<option value="1946">1946</option>
																					<option value="1947">1947</option>
																					<option value="1948">1948</option>
																					<option value="1949">1949</option>
																					<option value="1950">1950</option>
																					<option value="1951">1951</option>
																					<option value="1952">1952</option>
																					<option value="1953">1953</option>
																					<option value="1954">1954</option>
																					<option value="1955">1955</option>
																					<option value="1956">1956</option>
																					<option value="1957">1957</option>
																					<option value="1958">1958</option>
																					<option value="1959">1959</option>
																					<option value="1960">1960</option>
																					<option value="1961">1961</option>
																					<option value="1962">1962</option>
																					<option value="1963">1963</option>
																					<option value="1964">1964</option>
																					<option value="1965">1965</option>
																					<option value="1966">1966</option>
																					<option value="1967">1967</option>
																					<option value="1968">1968</option>
																					<option value="1969">1969</option>
																					<option value="1970">1970</option>
																					<option value="1971">1971</option>
																					<option value="1972">1972</option>
																					<option value="1973">1973</option>
																					<option value="1974">1974</option>
																					<option value="1975">1975</option>
																					<option value="1976">1976</option>
																					<option value="1977">1977</option>
																					<option value="1978">1978</option>
																					<option value="1979">1979</option>
																					<option value="1980">1980</option>
																					<option value="1981">1981</option>
																					<option value="1982">1982</option>
																					<option value="1983">1983</option>
																					<option value="1984">1984</option>
																					<option value="1985">1985</option>
																					<option value="1986">1986</option>
																					<option value="1987">1987</option>
																					<option value="1988">1988</option>
																					<option value="1989">1989</option>
																					<option value="1990">1990</option>
																					<option value="1991">1991</option>
																					<option value="1992">1992</option>
																					<option value="1993">1993</option>
																					<option value="1994">1994</option>
																					<option value="1995">1995</option>
																					<option value="1996">1996</option>
																					<option value="1997">1997</option>
																					<option value="1998">1998</option>
																					<option value="1999">1999</option>
																					<option value="2000">2000</option>
																					<option value="2001">2001</option>
																					<option value="2002">2002</option>
																					<option value="2003">2003</option>
																					<option value="2004">2004</option>
																					<option value="2005">2005</option>
																					<option value="2006">2006</option>
																					<option value="2007">2007</option>
																					<option value="2008">2008</option>
																					<option value="2009">2009</option>
																					<option value="2010">2010</option>
																					<option value="2011">2011</option>
																					<option value="2012">2012</option>
																					<option value="2013">2013</option>
																			</select>
									<select id="J_Month" name="_fm.b._0.m">
										<option selected="selected">月</option>
																					<option value="1">1</option>
																					<option value="2">2</option>
																					<option value="3">3</option>
																					<option value="4">4</option>
																					<option value="5">5</option>
																					<option value="6">6</option>
																					<option value="7">7</option>
																					<option value="8">8</option>
																					<option value="9">9</option>
																					<option value="10">10</option>
																					<option value="11">11</option>
																					<option value="12">12</option>
																			</select>
									<select id="J_Date" name="_fm.b._0.d">
										<option selected="selected">日</option>
																					<option value="1">1</option>
																					<option value="2">2</option>
																					<option value="3">3</option>
																					<option value="4">4</option>
																					<option value="5">5</option>
																					<option value="6">6</option>
																					<option value="7">7</option>
																					<option value="8">8</option>
																					<option value="9">9</option>
																					<option value="10">10</option>
																					<option value="11">11</option>
																					<option value="12">12</option>
																					<option value="13">13</option>
																					<option value="14">14</option>
																					<option value="15">15</option>
																					<option value="16">16</option>
																					<option value="17">17</option>
																					<option value="18">18</option>
																					<option value="19">19</option>
																					<option value="20">20</option>
																					<option value="21">21</option>
																					<option value="22">22</option>
																					<option value="23">23</option>
																					<option value="24">24</option>
																					<option value="25">25</option>
																					<option value="26">26</option>
																					<option value="27">27</option>
																					<option value="28">28</option>
																					<option value="29">29</option>
																					<option value="30">30</option>
																					<option value="31">31</option>
																			</select>
									</p>
									<div class="sns-msg" id="J_birthdayTip" style="display:none ;"><p class="error">生日如果填写的话请填写完整！</p></div>
																			<p>
									<label>居住地：</label>
									<select name="_fm.b._0.p" id="J_redstar_province"><option value=""></option><option value="110000">北京</option><option value="120000">天津</option><option value="130000">河北省</option><option value="140000">山西省</option><option value="150000">内蒙古自治区</option><option value="210000">辽宁省</option><option value="220000">吉林省</option><option value="230000">黑龙江省</option><option value="310000">上海</option><option value="320000">江苏省</option><option value="330000">浙江省</option><option value="340000">安徽省</option><option value="350000">福建省</option><option value="360000">江西省</option><option value="370000">山东省</option><option value="410000">河南省</option><option value="420000">湖北省</option><option value="430000">湖南省</option><option value="440000">广东省</option><option value="450000">广西壮族自治区</option><option value="460000">海南省</option><option value="500000">重庆</option><option value="510000">四川省</option><option value="520000">贵州省</option><option value="530000">云南省</option><option value="540000">西藏自治区</option><option value="610000">陕西省</option><option value="620000">甘肃省</option><option value="630000">青海省</option><option value="640000">宁夏回族自治区</option><option value="650000">新疆维吾尔自治区</option><option value="710000">台湾省</option><option value="810000">香港特别行政区</option><option value="820000">澳门特别行政区</option><option value="990000">海外</option></select>
									<select name="_fm.b._0.c" id="J_redstar_city"></select>
									<select name="_fm.b._0.a" id="J_redstar_area"></select>
									<input id="divisionCode" value="" type="hidden" name="_fm.b._0.di">
									</p>
									<div class="sns-msg" id="J_redstarTip" style="display:none ;"><p class="error">居住地所在的省市区为必填项！</p></div>
																			<p>
									<label>家乡：</label>
									<select id="J_live_province" name="_fm.b._0.ho"><option value=""></option><option value="110000">北京</option><option value="120000">天津</option><option value="130000">河北省</option><option value="140000">山西省</option><option value="150000">内蒙古自治区</option><option value="210000">辽宁省</option><option value="220000">吉林省</option><option value="230000">黑龙江省</option><option value="310000">上海</option><option value="320000">江苏省</option><option value="330000">浙江省</option><option value="340000">安徽省</option><option value="350000">福建省</option><option value="360000">江西省</option><option value="370000">山东省</option><option value="410000">河南省</option><option value="420000">湖北省</option><option value="430000">湖南省</option><option value="440000">广东省</option><option value="450000">广西壮族自治区</option><option value="460000">海南省</option><option value="500000">重庆</option><option value="510000">四川省</option><option value="520000">贵州省</option><option value="530000">云南省</option><option value="540000">西藏自治区</option><option value="610000">陕西省</option><option value="620000">甘肃省</option><option value="630000">青海省</option><option value="640000">宁夏回族自治区</option><option value="650000">新疆维吾尔自治区</option><option value="710000">台湾省</option><option value="810000">香港特别行政区</option><option value="820000">澳门特别行政区</option><option value="990000">海外</option></select>
									<select id="J_live_city" name="_fm.b._0.hom"></select>
									<select id="J_live_area" name="_fm.b._0.home"></select>
									<input type="hidden" name="_fm.b._0.l" value="" id="liveDivisionCode">
									</p>
							</div>
					
							<div class="act skin-blue"><span class="btn n-btn"><button type="submit" id="J_saveProfile">保存</button></span></div>
						</form>
					</div>
				</div>
			</div>
		</div>
</div> <!--end main-content-->
</div> <!--end main-wrap-->
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
<a href="./profile" role="menuitem" data-spm="d1000367" class="selected">个人信息管理</a>
</dd>
<dd class="mt-menu-sub unfold J_MtSideTree">
<a id="bought" href="./list" data-spm="d1000368" >已买到的宝贝</a>
</dd>
<dd id="favorite"><a href="./collect" data-spm="d1000374">我的收藏</a></dd>


<dt class="fs14">我是卖家</dt>
<dd id="point"><a href="./sell" data-spm="d1000375">宝贝管理</a></dd>
<dd id="gotBonus"><a href="./selllist" data-spm="d1000376">订单管理</a></dd>
<dd id="myRate"><a href="./sellorder" data-spm="d1000377">订单确认</a></dd>
</dl>
</div>
</aside> 
 </div>
 </div>
 </div>


</asp:Content>
