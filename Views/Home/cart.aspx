<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>

<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/a.css" >
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/cart-min.css" >
</asp:Content>


<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

<div class="flow-steps">
    <ol class="num5">
        <li class="current">
        <span class="first">1. 查看购物车</span>
        </li>
        <li>
        <span>2. 确认订单信息</span>
        </li>
        <li class="last">
        <span>3. 付款到支付宝</span>
        </li>
    </ol>
</div>

<div id="cart">
    <div class="status-wrapper">
        <div style="display: none;" id="J_StatusBarTips" class="status-bar-tips">
            <div class="content">
                <span class="icon-warn"></span>
                <span style="display: none;" class="text J_MostText">您的购物车快满了，您可以购买、删除购物车内的宝贝，或将暂时不购买的宝贝移入收藏夹！</span>
                <span style="display: none;" class="text J_FullText">您的购物车已满，您可以购买、删除购物车内的宝贝，或将暂时不购买的宝贝移入收藏夹！</span>
                <span class="extra-op J_StatusTipsExtraOp">您还可以将一个月前的商品<a href="javascript:void(0);" class="J_DelItemsOneMonthAgo J_MakePoint" data-point-url="http://log.mmstat.com/tbcart.1.53?cache=5564944">全部删除</a>或<a href="javascript:void(0);" data-point-url="http://log.mmstat.com/tbcart.1.54?cache=9189915" class="J_FavItemsOneMonthAgo J_MakePoint">全部移入收藏夹</a>！</span>
            </div>
            <a href="javascript:void(0);" class="close J_CloseStatusTips">关闭</a>
            <span class="arrow"><span class="arrow-inner"></span></span>
        </div>
        <div class="status-bar" id="status-bar" data-total="50" data-limit="45">
            <div class="J_StatusContent">
                <div class="box">
                    <div class="box-status" id="J_StatusInStatusBox">
                        购物车状态：
                        <div class="bar clearfix">
                            <div style="width: 5px;" class="normal" title="正常宝贝"></div>
                            <div style="display: none;" class="disable" title="临时失效宝贝"></div>
                            <div style="display: none;" class="invalid" title="永久失效宝贝"></div>
                        </div>
                        <span class="num"><span class="J_TotalNum">2</span>/50</span>
                                                            </div>


                </div>
            </div>
        </div>
                
        <div id="J_Choose" class="choose">
                            <a href="#" id="J_UndoDel" class="undo-del hidden" data-api="/undelete_cart_items.htm?shop_id=0">撤销删除</a>
                        <div class="total-fee">
                <div id="J_SmallGo" data-spm="1000632" class="box-shadow btn-small-go">结 算</div>
                <span class="total-fee-info g_price">商品总价(不含运费)：<span>¥</span><em id="J_Total2" class="total2">108.00</em></span>
            </div>
        </div>
    </div>
	<span class="text undo-text J_UndoText">撤销删除失败，您的购物车已经满了，请点击"收藏"将其中部分宝贝移至收藏夹，然后再进行撤销删除。</span>
		<table class="order-table" id="J_CartEnable" data-spm="1000638" cellpadding="0" cellspacing="0">
		<colgroup valign="middle">
			<col width="62">
			<col>
			<col width="70">			<col width="70">
			<col width="100">
			<col width="105">
			<col width="116">
			<col width="56">
		</colgroup>
		<thead>
			<tr>
				<th class="s-chk"><label for="J_SelectAll"><input id="J_SelectAll" checked="checked" type="checkbox">全选</label></th>
				<th class="s-title">店铺宝贝</th>
				<th class="s-point">商城积分</th>				<th class="s-price">单价(元)</th>
				<th class="s-amount">数量</th>
				<th class="s-agio">优惠</th>
				<th class="s-total">小计(元)</th>
				<th class="s-del"></th>
			</tr>
		</thead>
				
    	
			<tbody data-shopid="708117215" class="J_Order">
	    	<tr class="J_ItemHead shop">
	        	<td colspan="4">
				<input checked="checked" name="" class="J_forShop" type="checkbox"> &nbsp;店铺：<a href="http://store.taobao.com/shop/view_shop.htm?shop_id=66836255" target="_blank" title="天技数码专营店">天技数码专营店</a>									<em class="icon" style="background:none"><img src="%E6%B7%98%E5%AE%9D%E7%BD%91%20-%20%E6%88%91%E7%9A%84%E8%B4%AD%E7%89%A9%E8%BD%A6_files/T1F9jSXlXjXXb.png"></em>
								<span class="seller">
									卖家：<a href="http://member1.taobao.com/member/user_profile.jhtml?user_id=66bd0a325764c64816526d4ebf4f9929" target="_blank">天技数码专营店</a>
								</span>
								<span class="ww-light ww-large" data-items="10444086815" data-nick="天技数码专营店" data-display="inline"><a title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。" class="ww-inline ww-online" href="http://www.taobao.com/webww/?ver=1&amp;&amp;touid=cntaobao%E5%A4%A9%E6%8A%80%E6%95%B0%E7%A0%81%E4%B8%93%E8%90%A5%E5%BA%97&amp;siteid=cntaobao&amp;status=2&amp;portalId=&amp;gid=&amp;itemsId=" target="_blank"><span>旺旺在线</span></a></span>
								</td> 
	    			        	<td colspan="4" class="promo-info">
	        					</td>
	      	</tr>
																 			  
   
	<tr data-cartid="28791189157" data-itemid="10444086815" data-skuid="16099869578" class="J_ItemBody uncod xcard selected ">
		
	    	<td class="s-chk">
    		                <input class="J_CheckBoxItem " name="cartIds" value="28791189157" checked="checked" type="checkbox">
    		    	</td>
		    	<td class="s-title">
    		    			<a href="http://item.taobao.com/item.htm?id=10444086815" target="_blank">
    		    		<span class="small2big-text">查看大图</span>
    		    			<img src="%E6%B7%98%E5%AE%9D%E7%BD%91%20-%20%E6%88%91%E7%9A%84%E8%B4%AD%E7%89%A9%E8%BD%A6_files/T1gNhQXsBcXXXXXXXX_0-item_pic.jpg" class="itempic">
    						雷柏1090 1090P 无线鼠标可爱舒适电脑笔记本5号电池省电鼠标包邮
    		</a>
    		    					
			
			    			        			    			    					
			    			        			        				<span class="icon-3c"><a href="http://3c.tmall.com/" target="_blank"><em>电器城</em></a></span>
            			                             				    			    		    		    		<span title="支持信用卡支付" class="xcard-icon"></span>    		    		<div class="props">
    		    		    			    				    				<span>颜色分类:  2.4G 1090黑色送鼠标垫 </span>    			    		    		
    		</div>

            <div class="extra-props clearfix">
                            </div>

			
			    	</td>
				<td class="s-point"><em tabindex="0">4</em></td>				<td class="s-price  ">
			            <em class="J_Price" tabindex="0">49.00</em>
    				</td>
		       		        <td class="s-amount ">
	                            <a href="#" class="no-minus">-</a><input value="1" class="text text-amount" data-max="126" data-stock="126" data-now="1" autocomplete="off" type="text"><a href="#" class="plus">+</a>
	             	          	        </td>
            	
		    	<td class="s-agio">
    						-
			    	</td>
		<td class="s-total"><em tabindex="0">49.00</em></td>
					<td class="s-del">
									<a title="移至收藏夹" class="fav" href="#">移入收藏夹</a>
								<a href="javascript:;" class="J_Del">删除</a>
			</td>
				
 	</tr>
 	
 		
			
				 	</tbody>
 	    	
			<tbody data-shopid="144313245" class="J_Order">
	    	<tr class="J_ItemHead shop">
	        	<td colspan="4">
				<input checked="checked" name="" class="J_forShop" type="checkbox"> &nbsp;店铺：<a href="http://store.taobao.com/shop/view_shop.htm?shop_id=36671973" target="_blank" title="阁调男装 主营品牌男装 格子衬衫 （全5分好评即有免单机会）">阁调男装 主营品牌</a>								<span class="seller">
									卖家：<a href="http://member1.taobao.com/member/user_profile.jhtml?user_id=3023db97bdf282083c002066cfbf2468" target="_blank">怒放的狗尾草</a>
								</span>
								<span class="ww-light ww-large" data-items="7935078073" data-nick="怒放的狗尾草" data-display="inline"><a title="点此可以直接和卖家交流选好的宝贝，或相互交流网购体验，还支持语音视频噢。" class="ww-inline ww-online" href="http://www.taobao.com/webww/?ver=1&amp;&amp;touid=cntaobao%E6%80%92%E6%94%BE%E7%9A%84%E7%8B%97%E5%B0%BE%E8%8D%89&amp;siteid=cntaobao&amp;status=2&amp;portalId=&amp;gid=&amp;itemsId=" target="_blank"><span>旺旺在线</span></a></span>
								</td> 
	    			        	<td colspan="4" class="promo-info">
	        							<div class="scrolling-container">
															<ul class="scrolling-promo-hint J_ScrollingPromoHint">
						<li title=" 满58元, 送3元店铺优惠券">
   		 			 满58元, 送3元店铺优惠券				</li>
					</ul>
						</div>
							</td>
	      	</tr>
																 			  
   
	<tr data-cartid="28784573013" data-itemid="7935078073" data-skuid="23152820238" class="J_ItemBody uncod xcard selected ">
		
	    	<td class="s-chk">
    		                <input class="J_CheckBoxItem " name="cartIds" value="28784573013" checked="checked" type="checkbox">
    		    	</td>
		    	<td class="s-title">
    		    			<a href="http://item.taobao.com/item.htm?id=7935078073" target="_blank">
    		    		<span class="small2big-text">查看大图</span>
    		    			<img src="%E6%B7%98%E5%AE%9D%E7%BD%91%20-%20%E6%88%91%E7%9A%84%E8%B4%AD%E7%89%A9%E8%BD%A6_files/T2hFvyXj4aXXXXXXXX_144313245.jpg" class="itempic">
    						热卖！正品牌春装休闲磨毛格子衬衫男长袖法兰绒韩版男士格纹衬衣
    		</a>
    		    					
			
						
										    		    		<span title="支持信用卡支付" class="xcard-icon"></span>    		    		<div class="props">
    		    		    			    				    				<span>颜色:  依恋红蓝格mm-088 </span><span>尺码: 40</span>    			    		    		
    		</div>

            <div class="extra-props clearfix">
                                                    <div class="xb">
                        <span>保障: </span>
							                                                                <a class="xb-truth" title="消费者保障服务，卖家承诺商品如实描述" target="_blank" href="http://www.taobao.com/go/act/315/xfzbz_rsms.php?ad_id=&amp;am_id=130011830696bce9eda3&amp;cm_id=&amp;pm_id=">如实描述</a>
                                <a class="xb-auth" title="消费者保障服务，卖家承诺假一赔三" target="_blank" href="http://www.taobao.com/go/act/315/xfzbz_jyps.php?ad_id=&amp;am_id=1300118304240d56fca9&amp;cm_id=&amp;pm_id=">假一赔三</a>                                <a class="xb-return" title="消费者保障服务，卖家承诺7天无理由退换货" target="_blank" href="http://www.taobao.com/go/act/315/xbqt090304.php?ad_id=&amp;am_id=130011831021c2f3caab&amp;cm_id=&amp;pm_id=">7天退换</a>
                                                                        
                                                                        
                												</div>
					                            </div>

			
			    	</td>
				<td class="s-point"><em tabindex="0">0</em></td>				<td class="s-price  ">
			                <em class="s-old-price">118.00</em>
		                <em class="J_Price" tabindex="0">59.00</em>
    		    			<em class="s-change-price-text">省59.00</em>
    				</td>
		       		        <td class="s-amount ">
	                            <a href="#" class="no-minus">-</a><input value="1" class="text text-amount" data-max="133" data-stock="133" data-now="1" autocomplete="off" type="text"><a href="#" class="plus">+</a>
	             	          	        </td>
            	
		    	<td class="s-agio">
    						 				
																																										                            	 <span>
									<img class="J_Aigo" data-popstr="省59元:限时打折" style="cursor: pointer" src="%E6%B7%98%E5%AE%9D%E7%BD%91%20-%20%E6%88%91%E7%9A%84%E8%B4%AD%E7%89%A9%E8%BD%A6_files/T1dXutXfBkXXXXXXXX-56-13.png">
                            	  </span>
																																																									<span><img class="J_Aigo" src="%E6%B7%98%E5%AE%9D%E7%BD%91%20-%20%E6%88%91%E7%9A%84%E8%B4%AD%E7%89%A9%E8%BD%A6_files/discount_other.png" data-popstr="省59元:最后一天"></span>
					
				    		    	</td>
		<td class="s-total"><em tabindex="0">59.00</em></td>
					<td class="s-del">
									<a title="移至收藏夹" class="fav" href="#">移入收藏夹</a>
								<a href="javascript:;" class="J_Del">删除</a>
			</td>
				
 	</tr>
 	
 		
			
				 	</tbody>
 	    </table>
    <div style="position:relative;"><div style="position: static;" id="float-bar" class="float-bar default clearfix">
		<span class="select-all mg-left"><input id="floatBarSelectAll" data-point-url="http://log.mmstat.com/tbcart.1.3" checked="checked" type="checkbox"> <label for="floatBarSelectAll">全选</label></span>
        <span tabindex="0" data-spm="1000639" class="del-items mg-left" title="批量删除" id="J_DelSelect">批量删除</span>
        <span style="display: none;" tabindex="0" data-spm="1000640" class="del-invalid mg-left" title="清除失效宝贝" id="J_DelInvaid">清除失效宝贝</span>
        <span tabindex="0" class="fav-selected mg-left" title="批量移入收藏夹" id="J_FavSelected">批量移入收藏夹</span>
        
        <div id="J_FavSelectTips" style="display: none;" class="msg mg-left"></div>
        <div id="J_CleanInvlid" class="msg" style="display: none;position:absolute;left:180px;top:5px;"></div>
        <div id="J_UncodNumMessage" class="kd-popup uncod-msg hidden">
            <div class="box">
                <div class="bd">
                    有<span class="J_UncodNum uncod-num"></span>种宝贝因不支持货到付款从结果中移除。
                </div>
                <a href="" title="" class="close"><span>关闭</span></a>
            </div>
            <i class="bottom"></i>
        </div>
        <button class="btn" data-spm="1000641" type="button" id="J_Go" data-addfastbuy="true">结　算
        </button>
                <span class="total-price g_price">商品总价(不含运费)：<span>¥</span><em class="total" id="J_Total" tabindex="0">108.00</em></span>
        <i style="display: none;" class="goto" data-spm="1000643" title="返回顶部"></i>
    </div></div>
</div>

<div id="empty" class="hidden">
    <div class="status-bar" id="Div1" data-total="50" data-limit="45">
        <div class="hd">
                        	                	<a href="#" id="A1" class="undo-del hidden" data-api="/undelete_cart_items.htm?shop_id=0">撤销删除</a>            	
	                                </div>
        <div class="J_StatusContent" style="float: left;">
            <div class="box" style="float: left;">
                <div class="box-status" id="Div2">
                    购物车状态：
                    <div class="bar clearfix">
                        <div class="normal" title="正常宝贝"></div>
                        <div class="disable" title="临时失效宝贝"></div>
                        <div class="invalid" title="永久失效宝贝"></div>
                    </div>
                    <span class="num"><span class="J_TotalNum"></span>0/50</span>
                    <span class="text J_MostText">请及时清理、收藏宝贝，以免影响购物体验。</span>
                    <span class="text J_FullText">请及时清理、收藏宝贝，以免影响购物体验。</span>
                </div>
            </div>
        </div>
            
    </div>

	<h2>您的购物车还是空的，赶紧行动吧！您可以：</h2>
    <ul>
				<li>马上去 
    		    		<a href="http://ju.atpanel.com/?url=http://love.taobao.com/guang/index.htm?&amp;ad_id=&amp;am_id=&amp;cm_id=&amp;pm_id=15010035269f8e393dca" target="_blank">看黄钻买家正在买什么</a>
    				</li>
		
									<li>看看 <a href="http://trade.taobao.com/trade/itemlist/list_bought_items.htm" target="_blank">已买到的宝贝</a></li>
					    </ul>
</div>
</asp:Content>