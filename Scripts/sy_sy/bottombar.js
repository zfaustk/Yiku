/*pub-1|2012-10-29 16:14:10*/(function(B){var A="tgallery/tmall/common/bottombar";(!B.config)&&B.add(A,{requires:["core"]});B.add(A,function(E,F,D){var C,J,I=E.UA.ie==6,F=F||E.DOM,D=D||E.Event;function H(){F.addStyleSheet('#J_CommonBottomBar{position:fixed;bottom:0;right:0;z-index:100002;_position:absolute;_bottom:auto;}#J_CommonBottomBar td{vertical-align:bottom;_position:relative;_overflow:hidden}.tm_cmbar_clearfix::after {clear: both;}.tm_cmbar_clearfix::after, .tm_cmbar_clearfix::before{display: table;content: "";overflow: hidden;}.tm_cmbar_clearfix {zoom: 1;}#J_CommonBottomBar .tm_cmbar{position:relative;}');C=F.create('<table id="J_CommonBottomBar"><tr><td order="0"></td></tr></table>');F.hide(C);setTimeout(function(){document.body.appendChild(C)},I?40:0);var L=0;function K(){if(L>150){return }if(F.get("#tstart .tstart-toolbar")){F.css(C,{right:"25px"});return }L++;setTimeout(K,200)}K()}function G(){if(J){return }J=setTimeout(function(){var L=document.body.scrollTop||document.documentElement.scrollTop||0;var M=(document.body.scrollWidth-document.body.clientWidth>0?20:0);var K=(L+F.viewportHeight(document))-F.height(C)-M;F.css(C,"top",K);J=null},64)}return E[A]=E[A]||{add:function(P,N){if(!C){H()}N=N||{};P=F.get(P);F.addClass(P,"tm_cmbar_clearfix");var L=N.order||F.attr(P,"order")||0,Q=C.rows[0],M=Q.cells,K;for(var O=0;O<M.length;O++){if(F.contains(M[O],P)){return }if(L<(F.attr(M[O],"order")||0)){K=Q.insertCell(O);break}}if(!K){K=Q.insertCell(-1)}F.attr(K,"order",L);F.addClass(P,"tm_cmbar");F.append(P,K);this.refresh()},remove:function(K){F.remove(K);this.refresh()},show:function(){F.show(C);if(I){D.on(window,"scroll",G);D.on(window,"resize",G);setTimeout(G,32)}},hide:function(){F.hide(C);if(I){D.remove(window,"scroll",G);D.remove(window,"resize",G)}},refresh:function(){if(C.firstChild){this.show()}else{this.hide()}if(I){setTimeout(G,32)}}}},{requires:["dom","event"]})})(KISSY);