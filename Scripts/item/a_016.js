/*pub-1|2013-04-11 17:02:59*/KISSY.add("malldetail/tabbar/DealRecord",function(n,C,G){var w=n.UA,H=document,u=H.body,m="data-request-url",d="tb-hidden",F="tb-show-code",c="click",B="mouseenter",o="mouseleave",t="\u8f93\u5165\u6709\u8bef",z="#J_showBuyerList",k="#J_DealCode",j="#J_DealCodePic",a="#J_DealCodeInput",f;var p={init:function(){var K="J_RecordPopup",L=C.get("#"+K),J=this,I=w.ie<8;if(!L){L=H.createElement("div");L.id=K;L.className="tb-record-popup tb-hidden";u.insertBefore(L,u.firstChild);L.innerHTML='<div class="tb-wrap"><h3>\u6210\u4ea4\u65f6\u540d\u79f0\uff1a</h3><p id="J_RecordTitle"></p><i></i></div></div>'}J.box=L;J.titleBox=C.get("#J_RecordTitle");J.offX=I?48:50;J.offY=I?-8:-6},show:function(J){var I=this,K=I.box,L=C.offset(J);C.removeClass(K,d);C.css(K,"top",L.top-K.offsetHeight+I.offY);C.css(K,"left",L.left-K.offsetWidth+I.offX);return I},hide:function(){var I=this;C.addClass(I.box,d);return I},setTitle:function(I){var J=this;J.titleBox.innerHTML=I;return J}};function l(){var K=C.query("tr",z),J="tb-hover",I="zoom";G.on(K,B,function(){var L=this;C.addClass(L,J);C.css(L,I,1)});G.on(K,o,function(){var L=this;C.removeClass(L,J);C.css(L,I,0)})}function q(I){return I+(I.indexOf("?")===-1?"?":"&")}function s(J){var I=C.attr(J,"detail:params").split(",")[0];return q(I)+"callback=TShop.mods.DealRecord.reload"}function g(J){var I=C.get(j);I.src=J}function y(I){var J=C.get(a);g(I.code);J.value=t;J.select()}function i(I){return I.replace(/<\/?[^>]+>/gi,"")}function D(J){var I=n.trim(i(J.value));if(!I||I===t){return}var K=q(C.attr(f,m));n.getScript(K+"&code="+I)}function b(){var I=C.query(".J_TAjaxTrigger",f);G.on(I,c,function(J){J.preventDefault();if(n.mods.TabBar&&n.mods.TabBar.curIndex()=="J_DealRecord"){n.sendAtpanel("tmalldetail.3.1")}else{n.sendAtpanel("tmalldetail.3.6")}var K=s(this);C.attr(f,m,K);n.getScript(K)})}function e(){var I=C.query(".J_View",f);if(!I.length){return}if(w.ie===6){l()}p.init();G.on(I,B,function(K){var J=this;K.halt();p.setTitle(C.attr(J,"data-title")).show(J)});G.on(I,o,function(J){J.halt();p.hide()})}function x(){var I=C.attr(k,"data-apicode");I=q(I)+"callback=TShop.mods.DealRecord.changeCode&t=";G.on(C.parent(j),c,function(J){J.halt();n.getScript(I+n.now())})}function h(){var I=C.get(a);G.on(I,"focus",function(){if(I.value===t){I.value=""}});G.on("#J_DealCodeBtn",c,function(J){J.halt();D(I)});G.on(k,"keydown",function(J){if(J.keyCode==13){D(I)}});G.on("#J_CloseDealCode",c,function(J){J.preventDefault();C.removeClass(f,F)})}function E(J){var I=J.html;switch(J.type){case"list":C.removeClass(f,F);f.innerHTML=I;b();e();break;case"code":C.addClass(f,F);if(!C.get(k)){f.appendChild(C.create(I));x();h()}}}function r(){var J=C.get("#J_listBuyerOnView");if(!J){return}var I=C.get(".J_TAjaxIndicator",f);var K=s(J);if(n.cfg("isLoadDealRecord")){I.innerHTML="\u6b63\u5728\u52a0\u8f7d\u6570\u636e...";n.getScript(K)}}function A(I){if(n.isString(I)){f.innerHTML=I;b();e()}else{if(n.isPlainObject(I)){if(I.html){E(I)}else{if(I.code){y(I)}}}}if(n.mods.TabBar&&n.mods.TabBar.curIndex()=="description"){n.sendAcAtpanel("tmalldetail.4.2")}}function v(I){if(!n.isPlainObject(I)||!n.isString(I.code)){return}g(I.code)}return n.mods.DealRecord={init:function(){var I=C.get(".J_MonSalesNum","#J_DealRecord");if(I){n.use("malldetail/model/product",function(J,K){K.onChange("salesCount",function(L){I.innerHTML=L.monTotal;C.show(C.parent(I,".J_MonSales"))})})}f=f||C.get(z);if(f){r()}},reload:function(I){A(I)},changeCode:function(I){v(I)}}},{requires:["dom","event"]});