/*pub-1|2013-04-11 15:40:50*/(function(h,g,k){var n=g.Event,a=g.DOM,b=g.Anim,i=g.UA.ie&&g.UA.ie<9,f=i&&g.UA.ie==6,m="J_ScrollTopBtn",c="ui-scrolltop-hidden";function l(p){var o=k.getElementsByTagName("script"),t=o[o.length-1].src||"",q=new RegExp("\\?(?:.+&)?"+p+"=([^&]*)(&|$)","i"),s=t.match(q);return(s!=null)?unescape(s[1]):null}function j(s){var o=k.getElementsByTagName("script"),q=o[o.length-1],r=q.getAttribute("data-st-"+s);return r?r:l(s)}var e={bottom:200,right:10,height:"60px",width:"60px",baseLine:400,isAnim:false,type:1},d={scrollEl:null,getValue:function(){return h.pageYOffset||k.body.scrollTop||k.documentElement.scrollTop},updateValue:function(p,o,r,q){h.scrollTo(0,-r*(p/=q)*(p-2)+o)},scrollTop:function(w){var o=this,s=o.getValue(),v=null,p=5,u=0,q=0,r=parseInt(s/150);if(w!==s){q=w-s;v=setInterval(function(){if(u<=r){o.updateValue(u,s,q,r);u++}else{clearInterval(v)}},p)}},addCss:function(){var o=".ui-scrolltop{ display:block; position:fixed; _position:absolute; right:10px; bottom:200px; z-index: 9999; height:60px; width:60px; text-indent:-999999px; overflow: hidden; background:#000 url(data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAAEMAAAANAgMAAACP9jv8AAAACVBMVEX///////8AAACO9MPsAAAAAXRSTlMAQObYZgAAAGhJREFUeF49zsEJwCAMBdBvoRfvWaJTOEIPZp+O4lEyZcn/RIl+SMJDAG2gTlfc7+k8H8Pm6cRiuFfjip3RphXUV4ghJIaQjVZQoCfkLDI7C7kgiAuRDK+YvJwLQnBPhovRw7ER5of3DyPbFp8RB9axAAAAAElFTkSuQmCC) 18px 21px no-repeat; *background-image:url(http://a.tbcdn.cn/apps/tmall/mui/backtop/img/backtop.png);opacity:0.5; filter:alpha(opacity=50); cursor: pointer; -moz-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -webkit-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -o-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  transition: opacity 0.3s ease-in,opacity 0.3s ease-out; } .ui-scrolltop:hover{ opacity:1; filter:alpha(opacity=100); -moz-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -webkit-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -o-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  transition: opacity 0.3s ease-in,opacity 0.3s ease-out; } .ui-scrolltop-hidden{ visibility: hidden; _visibility:visible;_display:none;opacity:0; filter:alpha(opacity=0); -moz-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -webkit-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  -o-transition: opacity 0.3s ease-in,opacity 0.3s ease-out;  transition: opacity 0.3s ease-in,opacity 0.3s ease-out; }.ui-scrolltop-wb{ background-position:-25px 21px; background-color:#fff; }";return o},createEl:function(){var p=this,q=p.addCss(),o='<a id="'+m+'" class="ui-scrolltop ui-scrolltop-hidden '+(e.type==2?"ui-scrolltop-wb":"")+'" title="\u8fd4\u56de\u9876\u90e8">\u8fd4\u56de\u9876\u90e8</a>',r=a.create(o);a.addStyleSheet(q);a.append(r,"body");return r},bindEvent:function(){var p=this,r=p.scrollEl,o=e,q=o.baseLine;if(!r){return}n.on(r,"click",function(t){t.preventDefault();if(f){a.addClass(r,c)}o.isAnim?p.scrollTop(0):h.scrollTo(0,0)});n.on(h,"scroll",s);if(i){n.on(r,"mouseenter",function(){b(r,{opacity:"1"},0.2).run()});n.on(r,"mouseleave",function(){b(r,{opacity:".5"},0.2).run()})}function s(){var t=a.hasClass(r,c),w=parseInt(a.scrollTop(k));if(w>q&&t){if(i){b(r,{opacity:"0.5"},0.2).run()}a.removeClass(r,c)}else{if(w<q&&!t){if(i){b(r,{opacity:"0"},0.2).run()}a.addClass(r,c)}}if(f){var u=a.viewportHeight(k),v=(w+u)-o.bottom-a.height(r);a.css(r,"top",v)}}},init:function(o){if(g.get("#"+m)){return}var p=this,q=j("type"),r=j("anim");if(q){e.type=q}if(r){e.isAnim=r}p.scrollEl=p.createEl();p.bindEvent()}};g.ready(function(){d.init()})})(window,KISSY,document);