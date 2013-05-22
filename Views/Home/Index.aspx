<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    
    <div id="content">
	    
        <input type="hidden" value="7J9nT6FrXi2h" id="J_TbToken" />
        
    <div class="brandCon">
        <div class="brandFp">
            <div class="brandFp-nav">
                <ul class="bF-navList" data-spm="“3.272134.263213”">
            
                    <% foreach(var classm in Model.rootClasses){ %>
		            <li class="bFnL-item">
                        <h3>
                            <%: Html.ActionLink(classm.Name,"Item",new {Cl = classm.CID })  %>
                        </h3>
            
                        <div class="bFnL-subNav">
                            <% foreach (var cl in Model.sonClasses(classm))
                                { %>
                                <%: Html.ActionLink(cl.Name, "Item", new { Cl = cl.CID })%>

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
                <p class="bF-azIndex-tips">More<i>&#9830;</i></p>
            </div>
            <div class="brandFp-slide" id="J_FpSlide" data-spm="3.305668.277516"> <!-- 中间显示部分-->
                <div class="brandFp-slide-w" style="position: relative;">
                    <ul class="brandFp-slide-bd" style="position: absolute; width: 2950px; left: -1180px;">
                   	    <li style="display: block; float: left;"><a href="http://www.tmall.com/go/act/tmall/ydkh.php?spm=3.305668.277516.1" target="_blank"><img alt="马云新书" src="./品牌街-天猫Tmall.com-上天猫，就购了_files/T1__qKXxxXXXb9EtTW-590-460.jpg" height="460" width="590"></a></li>
                        <li style="display: block; float: left;"><a href="http://www.tmall.com/go/act/tmall/zwsppj.php?spm=3.305668.277516.3" target="_blank"><img alt="真维斯" src="./品牌街-天猫Tmall.com-上天猫，就购了_files/T2_0n4XXBaXXXXXXXX_!!289268212.jpg" height="460" width="590"></a></li>
                    </ul>
                </div>
		        <a title="上一页" href="javascript:void(0);" class="ui-slide-arrow-l brandFp-slide-l" style="left: 13.25px;"><</a>
		        <a title="下一页" href="javascript:void(0);" class="ui-slide-arrow-l brandFp-slide-r" style="right: 13.25px;">></a>
                <ul class="ks-switchable-nav">
                    <li class="">1</li><li class="">2</li><li class="ks-active">3</li><li>4</li><li>5</li>
                </ul>
            </div>
            <style>.bFl-item-logo li{background-image:url(http://img01.taobaocdn.com/tps/i1/T1a3_QXohaXXXzKHv4-200-366.png);}.brandFloor .bFlil-link:hover{-webkit-animation:none;}.bFlil-mask-add{position:static;display:inline-block;}#brandFloor8 .brandFloor .bFlil-link:hover{top:0;}</style>
        </div>



    <div class="floorLoading j_BrandFloor" id="brandFloor1">
        <div>           
            <div class="brandFloor">
				<h3 class="ui-title">
					<em class="ui-title-num">01</em>
					<a target="_blank" href="#" class="ui-title-con brandFloor-hd0">
						<b class="ui-title-text">
							推荐
							<s class="ui-title-mask"></s>
						</b>
						<i class="ui-title-arrow"></i>
					</a>
				</h3>

            <div class="brandFloor-con">
                 <div class="module">
                 
                 <ul class="brandFloor-list" data-spm="3.2167905.a2223nt">
			
			<li class="bFl-item">
				<div class="bFl-item-slide j_FloorSlide">
					<div class="bFlis-hd">
						
						                           <span>休闲户外</span>
                        						
						<ul class="bFlis-hd-nav">
							<li class="brandSlide-active">&#8226;</li>
							<li>&#8226;</li>
						</ul>
					</div>
					<ul class="bFlis-con">
						
												<li class="bFlis-con-list">
							<a target="_blank" href="http://crocs.tmall.com/?spm=3.2167905.a2223nt.1"><img src="http://img01.taobaocdn.com/tps/i1/T1ExeiXzXcXXX4jQcy-190-120.jpg" alt="crocs" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://crocs.tmall.com/?spm=3.2167905.a2223nt.2">
								<b class="bFlisc-mask-shop">crocs</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="97466">+ 关注</b>							</a>
						</li>
												<li class="bFlis-con-list">
							<a target="_blank" href="http://uniqlo.tmall.com/?spm=3.2167905.a2223nt.3"><img src="http://img02.taobaocdn.com/imgextra/i2/196993935/T2pUfNXk8XXXXXXXXX_!!196993935.jpg" alt="优衣库" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://uniqlo.tmall.com/?spm=3.2167905.a2223nt.4">
								<b class="bFlisc-mask-shop">优衣库</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="29527">+ 关注</b>							</a>
						</li>
												
					</ul>
				</div>
				<ul class="bFl-item-logo clearfix">
					
										<li>
						<a class="bFlil-link" target="_blank" href="http://dickies.tmall.com/?spm=3.2167905.a2223nt.5" title="dickies">
							<span class="bFlil-img"><img height="45" width="90" alt="dickies" src="http://img02.taobaocdn.com/tps/i2/T1chXCXvXbXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3272234">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://triumph.tmall.com/?spm=3.2167905.a2223nt.6" title="黛安芬">
							<span class="bFlil-img"><img height="45" width="90" alt="黛安芬" src="http://img02.taobaocdn.com/tps/i2/T1EiVAXDNfXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="60578">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://thenorthface.tmall.com/?spm=3.2167905.a2223nt.7" title="The North Face">
							<span class="bFlil-img"><img height="45" width="90" alt="The North Face" src="http://img01.taobaocdn.com/tps/i1/T1JEBzXsVfXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="9865041">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://replay.tmall.com/?spm=3.2167905.a2223nt.8" title="replay">
							<span class="bFlil-img"><img height="45" width="90" alt="replay" src="http://img04.taobaocdn.com/tps/i4/T1iXmGXBVeXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20823">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://forever21.tmall.com/?spm=3.2167905.a2223nt.9" title="forever21">
							<span class="bFlil-img"><img height="45" width="90" alt="forever21" src="http://img01.taobaocdn.com/tps/i1/T1QZXBXxBcXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="66097950">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://vans.tmall.com/?spm=3.2167905.a2223nt.10" title="Vans">
							<span class="bFlil-img"><img height="45" width="90" alt="Vans" src="http://img01.taobaocdn.com/imgextra/i1/746866993/T2MenPXntXXXXXXXXX_!!746866993.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="29529">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://it.tmall.com/?spm=3.2167905.a2223nt.11" title="i.t">
							<span class="bFlil-img"><img height="45" width="90" alt="i.t" src="http://img04.taobaocdn.com/tps/i4/T1_.BCXrdXXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3294660">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://andrewmarc.tmall.com/?spm=3.2167905.a2223nt.12" title="andrew marc">
							<span class="bFlil-img"><img height="45" width="90" alt="andrew marc" src="http://img01.taobaocdn.com/tps/i1/T1s5GkXv8dXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="27266868">+ 关注品牌</b> 							</span>
						</a>
					</li>
										
				</ul>
			</li>
			
			<li class="bFl-item">
				<div class="bFl-item-slide j_FloorSlide">
					<div class="bFlis-hd">
						
						                           <span>名品配饰</span>
                        						
						<ul class="bFlis-hd-nav">
							<li class="brandSlide-active">&#8226;</li>
							<li>&#8226;</li>
						</ul>
					</div>
					<ul class="bFlis-con">
						
												<li class="bFlis-con-list">
							<a target="_blank" href="http://yintai.tmall.com/search.htm?spm=3.2167905.a2223nt.13&amp;orderType=_newOn&amp;viewType=grid&amp;baobei_type=&amp;keyword=gucci&amp;price1=&amp;price2"><img src="http://img02.taobaocdn.com/tps/i2/T16iVuXqtXXXX4jQcy-190-120.jpg" alt="Gucci" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://yintai.tmall.com/search.htm?spm=3.2167905.a2223nt.14&amp;orderType=_newOn&amp;viewType=grid&amp;baobei_type=&amp;keyword=gucci&amp;price1=&amp;price2">
								<b class="bFlisc-mask-shop">Gucci</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="29878">+ 关注</b>							</a>
						</li>
												<li class="bFlis-con-list">
							<a target="_blank" href="http://rayban.tmall.com/?spm=3.2167905.a2223nt.15"><img src="http://img03.taobaocdn.com/tps/i3/T17gluXvlXXXX4jQcy-190-120.jpg" alt="雷朋" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://rayban.tmall.com/?spm=3.2167905.a2223nt.16">
								<b class="bFlisc-mask-shop">雷朋</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="55652">+ 关注</b>							</a>
						</li>
												
					</ul>
				</div>
				<ul class="bFl-item-logo clearfix">
					
										<li>
						<a class="bFlil-link" target="_blank" href="http://leviswatch.tmall.com/?spm=3.2167905.a2223nt.17" title="levi’s">
							<span class="bFlil-img"><img height="45" width="90" alt="levi’s" src="http://img03.taobaocdn.com/tps/i3/T1cIGkXpFfXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3271216">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://lesportsaccx.tmall.com/?spm=3.2167905.a2223nt.18" title="lesportsac">
							<span class="bFlil-img"><img height="45" width="90" alt="lesportsac" src="http://img01.taobaocdn.com/tps/i1/T1DUClXxBaXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="101942">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://parker.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.19&amp;rn=f3d86af27c4f66ed002088ceb8f6309e" title="派克">
							<span class="bFlil-img"><img height="45" width="90" alt="派克" src="http://img04.taobaocdn.com/tps/i4/T1aDdCXtBXXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="105801">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://5lux.tmall.com/search.htm?spm=3.2167905.a2223nt.20&amp;scid=393427998&amp;scname=QXJtYW5pILCiwurE4Q%3D%3D&amp;checkedRange=true&amp;queryType=cat" title="Armani">
							<span class="bFlil-img"><img height="45" width="90" alt="Armani" src="http://img01.taobaocdn.com/tps/i1/T1110AXxxgXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="29465">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://kelinshangpin.tmall.com/view_page-658924005.htm?spm=3.2167905.a2223nt.21" title="COACH">
							<span class="bFlil-img"><img height="45" width="90" alt="COACH" src="http://img03.taobaocdn.com/tps/i3/T18_pBXqlcXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3889310">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://odm.tmall.com/?spm=3.2167905.a2223nt.22" title="odm">
							<span class="bFlil-img"><img height="45" width="90" alt="odm" src="http://img02.taobaocdn.com/tps/i2/T1oDKjXtJgXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="141387377">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://lnksmp.tmall.com/search.htm?spm=3.2167905.a2223nt.23&amp;search=y&amp;scid=343360973&amp;pv=20000:29512" title="Prada">
							<span class="bFlil-img"><img height="45" width="90" alt="Prada" src="http://img04.taobaocdn.com/tps/i4/T1G00BXA4cXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="29512">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://huaixuan.tmall.com/search.htm?spm=3.2167905.a2223nt.24&amp;search=y&amp;scid=333534104&amp;viewType=grid&amp;orderType=_hotsell&amp;pageNum=1#anchor" title="BURBERRY">
							<span class="bFlil-img"><img height="45" width="90" alt="BURBERRY" src="http://img01.taobaocdn.com/tps/i1/T1eq8BXuhdXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20558">+ 关注品牌</b> 							</span>
						</a>
					</li>
										
				</ul>
			</li>
			
			<li class="bFl-item">
				<div class="bFl-item-slide j_FloorSlide">
					<div class="bFlis-hd">
						
						                           <span>时尚百货</span>
                        						
						<ul class="bFlis-hd-nav">
							<li class="brandSlide-active">&#8226;</li>
							<li>&#8226;</li>
						</ul>
					</div>
					<ul class="bFlis-con">
						
												<li class="bFlis-con-list">
							<a target="_blank" href="http://pernodricard.tmall.com/view_page-625600976.htm?spm=3.2167905.a2223nt.25"><img src="http://img03.taobaocdn.com/tps/i3/T1.XijXxXhXXX4jQcy-190-120.jpg" alt="芝华士" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://pernodricard.tmall.com/view_page-625600976.htm?spm=3.2167905.a2223nt.26">
								<b class="bFlisc-mask-shop">芝华士</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="4533616">+ 关注</b>							</a>
						</li>
												<li class="bFlis-con-list">
							<a target="_blank" href="http://kose.tmall.com/?spm=3.2167905.a2223nt.27"><img src="http://img02.taobaocdn.com/tps/i2/T1n.pAXtdaXXX4jQcy-190-120.jpg" alt="高丝" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://kose.tmall.com/?spm=3.2167905.a2223nt.28">
								<b class="bFlisc-mask-shop">高丝</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="20060">+ 关注</b>							</a>
						</li>
												
					</ul>
				</div>
				<ul class="bFl-item-logo clearfix">
					
										<li>
						<a class="bFlil-link" target="_blank" href="http://borghese.tmall.com/?spm=3.2167905.a2223nt.29" title="贝佳斯">
							<span class="bFlil-img"><img height="45" width="90" alt="贝佳斯" src="http://img04.taobaocdn.com/tps/i4/T1c4lCXt8bXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20007">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://astalift.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.30&amp;user_number_id=505723120&amp;rn=08df5de840f870a8ff308647f97e52fd" title="Astalift/艾诗缇">
							<span class="bFlil-img"><img height="45" width="90" alt="Astalift/艾诗缇" src="http://img01.taobaocdn.com/tps/i1/T1J34BXDXcXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="79958900">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://johnniewalker.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.31&amp;rn=b2fc83234e0389b9cddbc44c51b8b23d" title="Johnnie walker/尊尼获加">
							<span class="bFlil-img"><img height="45" width="90" alt="Johnnie walker/尊尼获加" src="http://img01.taobaocdn.com/tps/i1/T1q_OjXpXfXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="4536184">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://godiva.tmall.com/?spm=3.2167905.a2223nt.32" title="GODIVA/歌帝梵">
							<span class="bFlil-img"><img height="45" width="90" alt="GODIVA/歌帝梵" src="http://img03.taobaocdn.com/tps/i3/T17QVCXptaXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="50641283">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://asc.tmall.com//search.htm?spm=3.2167905.a2223nt.33&amp;userId=&amp;shopId=100479260&amp;view_type=&amp;order_type=&amp;search=y&amp;keyword=%C0%AD%B7%C6&amp;price1=&amp;price2=" title="拉菲">
							<span class="bFlil-img"><img height="45" width="90" alt="拉菲" src="http://img03.taobaocdn.com/tps/i3/T1ckh4Xt8jXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="39887589">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://tsubaki.tmall.com/?spm=3.2167905.a2223nt.34" title="丝蓓绮">
							<span class="bFlil-img"><img height="45" width="90" alt="丝蓓绮" src="http://img04.taobaocdn.com/tps/i4/T1TKBBXzVcXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3600519">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://bacardi.tmall.com/?spm=3.2167905.a2223nt.35" title="Bacardi/百加得">
							<span class="bFlil-img"><img height="45" width="90" alt="Bacardi/百加得" src="http://img02.taobaocdn.com/tps/i2/T1VU0zXEFfXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="4535635">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://brands.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.36&amp;rn=56ac4f0a8cd1df475250086dd472ebd2" title="白蘭氏">
							<span class="bFlil-img"><img height="45" width="90" alt="白蘭氏" src="http://img02.taobaocdn.com/tps/i2/T1wd5jXqdhXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3228597">+ 关注品牌</b> 							</span>
						</a>
					</li>
										
				</ul>
			</li>
			
			<li class="bFl-item">
				<div class="bFl-item-slide j_FloorSlide">
					<div class="bFlis-hd">
						
						                           <span>母婴</span>
                        						
						<ul class="bFlis-hd-nav">
							<li class="brandSlide-active">&#8226;</li>
							<li>&#8226;</li>
						</ul>
					</div>
					<ul class="bFlis-con">
						
												<li class="bFlis-con-list">
							<a target="_blank" href="http://nutricia.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.37&amp;rn=aed264afc7edc17ace3f84079affab7c"><img src="http://img03.taobaocdn.com/tps/i3/T1t2GaXBdaXXX4jQcy-190-120.jpg" alt="KARICARE/可瑞康" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://nutricia.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.38&amp;rn=aed264afc7edc17ace3f84079affab7c">
								<b class="bFlisc-mask-shop">KARICARE/可瑞康</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="137284">+ 关注</b>							</a>
						</li>
												<li class="bFlis-con-list">
							<a target="_blank" href="http://nutricia.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.39&amp;rn=aed264afc7edc17ace3f84079affab7c"><img src="http://img03.taobaocdn.com/tps/i3/T1t2GaXBdaXXX4jQcy-190-120.jpg" alt="KARICARE/可瑞康" height="120" width="190" /></a>
							<a target="_blank" class="bFlis-con-mask" href="http://nutricia.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.40&amp;rn=aed264afc7edc17ace3f84079affab7c">
								<b class="bFlisc-mask-shop">KARICARE/可瑞康</b>
								<b class="bFlisc-mask-add j_CollectBrand" data-brandId="137284">+ 关注</b>							</a>
						</li>
												
					</ul>
				</div>
				<ul class="bFl-item-logo clearfix">
					
										<li>
						<a class="bFlil-link" target="_blank" href="http://dawan.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.41&amp;rn=a8db7a35dda07b00e0e8f635dfa746cd" title="Goo．n！/大王">
							<span class="bFlil-img"><img height="45" width="90" alt="Goo．n！/大王" src="http://img01.taobaocdn.com/tps/i1/T1gKyXXuhcXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3217426">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://gymboree.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.42&amp;rn=1e9de2b1403a48cc62b6851202597c15" title="GYMBOREE/金宝贝">
							<span class="bFlil-img"><img height="45" width="90" alt="GYMBOREE/金宝贝" src="http://img03.taobaocdn.com/tps/i3/T1gTuXXw0bXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="12026828">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://combi.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.43&amp;rn=84fb3fd132577fddc50049fae724e053" title="Combi/康贝">
							<span class="bFlil-img"><img height="45" width="90" alt="Combi/康贝" src="http://img02.taobaocdn.com/tps/i2/T1t5t9XE0gXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20459">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://pampers.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.44&amp;rn=f9f4667cde1e386c70ccda87c3840967" title="Pampers/帮宝适">
							<span class="bFlil-img"><img height="45" width="90" alt="Pampers/帮宝适" src="http://img04.taobaocdn.com/tps/i4/T1UTiXXw8bXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20439">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://nuk.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.45&amp;rn=fcc4f96caccaedf3e44fc6c464d68edc" title="NUK">
							<span class="bFlil-img"><img height="45" width="90" alt="NUK" src="http://img04.taobaocdn.com/tps/i4/T1WbSaXwtbXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20451">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://concord.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.46&amp;rn=66c1d8819fef4c1a438810ed5684601c" title="Concord/康科德">
							<span class="bFlil-img"><img height="45" width="90" alt="Concord/康科德" src="http://img01.taobaocdn.com/tps/i1/T1SHuaXDJbXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="3334835">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://pigeon.tmall.com/shop/view_shop.htm?spm=3.2167905.a2223nt.47&amp;rn=a19b70d03b19b5ad610481ed1de3a071" title="Pigeon/贝亲">
							<span class="bFlil-img"><img height="45" width="90" alt="Pigeon/贝亲" src="http://img01.taobaocdn.com/tps/i1/T1iZKXXs4eXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20448">+ 关注品牌</b> 							</span>
						</a>
					</li>
										<li>
						<a class="bFlil-link" target="_blank" href="http://nutrilon-brand.tmall.com/?spm=3.2167905.a2223nt.48&amp;ad_id=&amp;am_id=&amp;cm_id=1401053266be515cff88&amp;pm_id=" title="nutirilon/诺优能">
							<span class="bFlil-img"><img height="45" width="90" alt="nutirilon/诺优能" src="http://img02.taobaocdn.com/tps/i2/T1WJqXXyBdXXbc_Djq-90-45.jpg" /></span>
							<span class="bFlil-mask">
								 <b class="bFlil-mask-add j_CollectBrand" data-brandId="20324">+ 关注品牌</b> 							</span>
						</a>
					</li>
										
				</ul>
			</li>
			
		</ul></div>

                                                                          <div class="brandFloor-top">
                 <h4>本周人气排行版<s></s></h4> 						         <div class="module" ><ol class="bFt-list j_FloorTop">
	
		<li  class="bFlil-expand" >
		<i class="bFt-list-num">1</i>
		<p class="bFt-list-name"><a href="http://nike.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.1&amp;rn=5ce66ab59cd27312f2931f012a85d51d" target="_blank">Nike/耐克</a></p>
		<p class="bFt-list-sell">人气指数<em>28930</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="20578">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">2</i>
		<p class="bFt-list-name"><a href="http://adidas.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.2&amp;rn=b1466db085cc9f16ce8558aea2a576ab" target="_blank">Adidas/阿迪达斯</a></p>
		<p class="bFt-list-sell">人气指数<em>14913</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="20579">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">3</i>
		<p class="bFt-list-name"><a href="http://uniqlo.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.3&amp;rn=cac49cc3f81e393fb51a16f9b9ecb9e7" target="_blank">Uniqlo/优衣库</a></p>
		<p class="bFt-list-sell">人气指数<em>12292</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="29527">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">4</i>
		<p class="bFt-list-name"><a href="http://lee.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.4&amp;rn=61450df38cb2c58ce816854865db4dbc" target="_blank">Lee</a></p>
		<p class="bFt-list-sell">人气指数<em>10190</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="20819">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">5</i>
		<p class="bFt-list-name"><a href="http://converse.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.5&amp;rn=2b04357d681f3902c187047822e3961f" target="_blank">Converse/匡威</a></p>
		<p class="bFt-list-sell">人气指数<em>8818</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="20582">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">6</i>
		<p class="bFt-list-name"><a href="http://vans.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.6&amp;rn=234de83d72c8ec5cc03df0f674a1d9fa" target="_blank">VANS</a></p>
		<p class="bFt-list-sell">人气指数<em>5992</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="29529">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">7</i>
		<p class="bFt-list-name"><a href="http://dickies.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.7&amp;rn=ebdca04a4aeab9e072f1bc4b72316475" target="_blank">Dickies</a></p>
		<p class="bFt-list-sell">人气指数<em>5828</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="3272234">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">8</i>
		<p class="bFt-list-name"><a href="http://forever21.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.8&amp;user_number_id=791583018&amp;rn=2be49a1ca33d0e024ba89f50cc296f0e" target="_blank">Forever 21/永远21</a></p>
		<p class="bFt-list-sell">人气指数<em>5824</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="66097950">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">9</i>
		<p class="bFt-list-name"><a href="http://gap.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.9&amp;rn=f27391ffbaa479cbd53b338b8db6706a" target="_blank">Gap</a></p>
		<p class="bFt-list-sell">人气指数<em>5434</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="29877">+ 关注<br />品牌</a> 	</li>
		<li >
		<i class="bFt-list-num">10</i>
		<p class="bFt-list-name"><a href="http://sony.tmall.com/shop/view_shop.htm?spm=3.2170509.a2223o5.10&amp;rn=55764755b62f57bcc40cd02ae2c3308c" target="_blank">Sony/索尼</a></p>
		<p class="bFt-list-sell">人气指数<em>4348</em></p>
		 <a class="bFt-list-add j_CollectBrand" data-brandId="10752">+ 关注<br />品牌</a> 	</li>
		
</ol></div>

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
