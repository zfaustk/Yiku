/*pub-1|2013-05-17 16:47:40*/KISSY.add("malldetail/tabbar/reviewsTmall",function(b,d,a,c){return{init:function(e){var h=d.get("#J_Reviews"),f=b.cfg(),i=d.create("<div></div>");if(!h){return}d.append(i,h);var g=b.t();a.loadAssets((f.orderId?["/t/tml/review/1.0.6/css/compose.css?"+g]:[]).concat(["/t/tml/review/1.0.6/css/list.css?"+g,"/t/tml/review/1.0.6/css/tag.css?"+g]));a.loadAssets((f.orderId?["/t/tml/review/1.0.6/compose.js?"+g]:[]).concat(["/t/tml/review/1.0.6/list.js?"+g,"/t/tml/review/1.0.6/index.js?"+g]),function(){b.use("tml/review/index",function(j,k){k.init(i,j.mix({tokenLoader:function(l){j.mods.Token.onInited(function(){l({token:f.valToken})})},sellerId:f.itemDO.userId,compose:(f.orderId&&{mainOrderId:f.mainOrderId,orderId:f.orderId}),list:{itemId:f.itemDO.itemId,spuId:f.itemDO.spuId}},e,true,null,true))})})}}},{requires:["dom","malldetail/common/util","malldetail/model/product"]});