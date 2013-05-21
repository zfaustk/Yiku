<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="ua-windows ua-ff21" lang="zh-CN"><head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

 <title>
欢迎加入依库
</title>
    <link rel="Stylesheet"  type="text/css" href="../../Content/register.css">
    <link rel="shortcut icon" href="" type="image/x-icon">
<body>
    <script type="text/javascript">        var _body_start = new Date();</script>
    <div id="wrapper">
        
<div id="header">
  <div class="site-nav single-nav">
    <div class="site-nav-logo">
      <a href="">
          <img src="" alt="依库">
      </a>
    </div>
  </div>  
</div>

        
    <div id="content">
        
    <h1>欢迎加入依库</h1>

    <div class="grid-16-8 clearfix">
        <div class="article">
	  
    
    <form name="lzform" method="post" action="">
        <div style="display:none;">
            <input name="source" value="simple" type="hidden">
            <input name="redir" value="" type="hidden">
            <img src="" onload="">
        </div>
        <div class="item extra-tips">
            <label>帐号名</label>
            <input id="email" name="form_email" class="basic-input" maxlength="60" tabindex="1" type="text">
        </div>
        <div class="suggestion">
            <div id="email_suggestion"></div>
        </div>
        <div class="item extra-tips">
            <label>密码</label>
            <input id="password" name="form_password" class="basic-input" tabindex="2" maxlength="20" type="password">
        </div>
        <div class="item extra-tips">
            <label>姓名</label>
            <input id="name" name="form_name" class="basic-input" maxlength="15" tabindex="3" type="text">
        </div>

            <div class="extra-tips">
                <label>地址</label>
                <input name="loc"  name="form_location" class="basic-input" maxlength="15" tabindex="3" type="text">
            </div>

      <div class="item-error"></div>
        <div class="item-submit">
            <label>&nbsp;</label>
            <div></div>
            <input value="注册" id="zcitem" tabindex="6" title="" type="submit"color="#ffffff" background="#fa156">
        </div>
    </form>

	</div>
        <div class="aside">
            
<p class="pl">&gt;&nbsp;已经拥有依库帐号? <a rel="nofollow" href="login">直接登录</a></p>

        </div>
        <div class="extra">
            
        </div>
    </div>
    </div>

        
    <div id="footer">
        

<span id="icp" class="fleft gray-link">
    © 2013-? yiku.com, all rights reserved
</span>



    </div>

    </div>
    <!-- COLLECTED JS -->
    
<script>
    function loadTestImage(action) {
        frm = document.lzform;
        frm.action = action;
    }

    Do('validate', 'dialog', function () {
        var email = $('#email'),
        suggestion = $('#email_suggestion'),
        email_value = '',
        e_name = '',
        e_domain = '',
        e_tip_on = 0,
        passwd_reg = /^[\u4e00-\u9fa5]/,

        email_list = new Array('163.com', '126.com', '139.com', '188.com', '2008.china.com', '2008.sina.com', '21cn.com', '263.net', 'china.com', 'chinaren.com', 'citiz.net', 'eyou.com', 'foxmail.com', 'gmail.com', 'hongkong.com', 'hotmail.com', 'live.cn', 'live.com', 'mail.china.com', 'msn.com', 'my3ia.sina.com', 'qq.com', 'sina.cn', 'sina.com', 'sina.com.cn', 'sogou.com', 'sohu.com', 'vip.163.com', 'vip.qq.com', 'vip.sina.com', 'vip.sohu.com', 'vip.tom.com', 'yahoo.cn', 'yahoo.com', 'yahoo.com.cn', 'yahoo.com.hk', 'yahoo.com.tw', 'yeah.net'),

        TXT_CAPTCHA_NULL = '请输入验证码',
        TXT_CAPTCHA_ERROR = '请输入正确的验证码',
        error_info = $('#frm_error').text();

        if (error_info === TXT_CAPTCHA_NULL || error_info === TXT_CAPTCHA_ERROR) {
            $('#frm_error').show();
        } else {
            $('<div></div>').text(error_info).addClass('item-error').insertAfter('.captcha-item').show();
            $('#frm_error').remove();
        }

        function DPA(s1, s2) {
            var m = new Array();
            var i, j;
            for (i = 0; i < s1.length + 1; i++) m[i] = new Array(); // i.e. 2-D array

            m[0][0] = 0; // boundary conditions

            for (j = 1; j <= s2.length; j++)
                m[0][j] = m[0][j - 1] - 0 + 1; // boundary conditions

            for (i = 1; i <= s1.length; i++)                            // outer loop
            {
                m[i][0] = m[i - 1][0] - 0 + 1; // boundary conditions

                for (j = 1; j <= s2.length; j++)                         // inner loop
                {
                    var diag = m[i - 1][j - 1];
                    if (s1.charAt(i - 1) != s2.charAt(j - 1)) diag++;

                    m[i][j] = Math.min(diag,               // match or change
                Math.min(m[i - 1][j] - 0 + 1,    // deletion
                m[i][j - 1] - 0 + 1)); // insertion
                } //for j
            } //for i
            return m[s1.length][s2.length];
        };

        function get_like(s) {
            r = 0;
            v = s.split('@');
            if (v.length <= 1) return;
            domain = v[1];
            e_name = v[0];
            dis = domain.length;
            for (k = 0; k < email_list.length; k++) {
                e = email_list[k];
                d = DPA(domain, e);
                if (d < dis) {
                    dis = d;
                    e_domain = e;
                }
            }
            if (dis && dis < 4) {
                r = 1;
            }
            return r;
        };

        function email_suggestion(like) {
            s = email.attr('value');
            if (!(s && s.length > 2)) {
                return;
            }
            if (like && get_like(s)) {
                as = ' <a id="yes_but" href="#">是</a>／<a href="#" id="no_but">不是</a>';
                suggestion.html('<p><span>你是否要输入' + e_name + '@</span>' + e_domain + as + '</p>');
                $("#yes_but").focus();
                e_tip_on = 1;
            }

            email_value = email.attr('value');
            return r;
        };

        $('#email').focusout(function () {
            var e = $(this).parents('.item').hasClass('has-error');
            if (!e) {
                email_suggestion(1);
            }
        });

        $('body').delegate('#yes_but', 'click', function (e) {
            e.preventDefault();
            email.attr('value', e_name + '@' + e_domain);
            email.focus();
            suggestion.html('');
            e_tip_on = 0;
        });
        $('body').delegate('#no_but', 'click', function (e) {
            e.preventDefault();
            suggestion.html('');
            e_tip_on = 0;
        });
        $("input[name='form_agreement']").each(function () {
            if ($("input[name='form_agreement']").is(':checked')) {
                $("input[type='submit']").attr('disabled', false).addClass('enabled');
            } else {
                $("input[type='submit']").attr('disabled', true).removeClass('enabled');
            }
        });
        $("input[name='form_agreement']").click(function () {
            if ($("input[name='form_agreement']").is(':checked')) {
                $("input[type='submit']").attr('disabled', false).addClass('enabled');
            } else {
                $("input[type='submit']").attr('disabled', true).removeClass('enabled');
            }

        });
        var optionMsg = {
            form_email: '用来登录豆瓣，接收到激活邮件才能完成注册',
            form_password: '至少包含字母和数字，最短8个字符，区分大小写',
            form_name: '中、英文均可，最长14个英文或7个汉字',
            loc: ''
        },
    validateError = {
        email: {
            isNull: 'Email不能为空',
            invalidFormat: 'Email格式不正确',
            //unavailable: '',
            unableForTom: '目前暂时不支持使用 tom.com 邮箱注册豆瓣帐号',
            unableForChongseo: '目前暂时不支持使用 chongseo.cn 邮箱注册豆瓣帐号'
        },
        password: {
            isNull: '密码不能为空',
            isShort: '密码长度不足8个字符',
            invalidFormat: '请使用英文字母、符号或数字',
            invalidStrong: '密码强度不够，请包含字母和数字'
        },
        location: {
            isNull: '常居地不能为空'
        },
        name: {
            isNull: '名号不能为空',
            isLong: '名号长度不能超过14个英文或7个汉字'
        },
        captcha: {
            isNull: '验证码不能为空'
        }
    },
    validateRules = {
        email: {
            elems: 'input[name=form_email]',
            isNull: function (el) {
                return !$.trim(el.val());
            },
            invalidFormat: function (el) {
                return !$.validate.isEmail($.trim(el.val()));
            },
            /*unavailable: function(el,o) {
            var item = el.parents('.item');
            o.asyncValidate(el,
            '/j/register/is_registered?email=' + $.trim(el.val()),
            function(j){
            if (j.ok){
            el.val(s);
            o.displayError(el, '该Email已经注册过');
            item.addClass('has-error');
            }
            });
            },*/
            unableForTom: function (el, o) {
                var domain = el.val().split('@')[1];
                return domain == 'tom.com';
            },
            unableForChongseo: function (el, o) {
                var domain = el.val().split('@')[1];
                return domain == 'chongseo.cn';
            }

        },
        password: {
            elems: 'input[name=form_password]',
            isNull: function (el) {
                if (el.val() === '') return true;
            },
            isShort: function (el) {
                if (el.val() != '' && el.val().length < 8) {
                    return true;
                }
            },
            invalidFormat: function (el) {
                var s = $.trim(el.val());
                return passwd_reg.test(s);
            },
            invalidStrong: function (el) {
                var s = $.trim(el.val());
                if (!(/\d/.test(s))) {
                    return true;
                }
                if (!(/[a-zA-Z\~\)\!\$\%\*\(\_\+\-\=\{\}\[\]\|\:\;\<\>\?\,\.\/\@\#\^\"\'\`\?\&]/.test(s))) {
                    return true;
                }
            }
        },
        name: {
            elems: 'input[name=form_name]',
            isNull: function (el) {
                return !$.trim(el.val());
            },
            isLong: function (el) {
                return $.trim(el.val()).replace(/[^\x00-\xff]/g, '豆瓣').length <= 14 ? false : true;
            }
        },
        location: {
            elems: 'input[name=loc]',
            isNull: function (el) {
                return !$.trim(el.val());
            }
        },
        captcha: {
            elems: 'input[name=captcha-solution]',
            isNull: function (el) {
                return !$.trim(el.val());
            }

        }
    };
        $('form').validateForm(validateRules, validateError, optionMsg, null);

        $('#cap_resend').click(function (e) {
            e.preventDefault();
            resendCaptcha();
        });

        function resendCaptcha() {
            var cap_img = $('.captcha-img');
            var cap_input = $("input[name='captcha-id']");
            var url = '/j/misc/reg_captcha';
            $.getJSON(url, function (j) {
                cap_img.attr('src', j.url);
                cap_input.val(j.token);
            });
        }
        String.prototype.strReverse = function () { var b = ""; for (var a = 0; a < this.length; a++) { b = this.charAt(a) + b } return b }; function checkPassword(f) { if (!f) { return 0 } var h = 8; if (f.length < h) { return 0 } var g = 0; var e = "abcdefghijklmnopqrstuvwxyz"; var d = "01234567890"; var a = "~)!@#$%^&*()_+-={}[]|:;<>?,./"; if (f.length >= 10) { g += 20 } if (f.length >= 12) { g += 20 } if (f.match(/[a-z]/g)) { g += 20 } if (f.match(/[0-9]/g)) { g += 20 } if (f.match(/[A-Z]/g)) { g += 20 } for (var i = 0; i < a.length; i++) { if (f.indexOf(a[i]) != -1) { g += 20; break } } for (var i = 0; i < 23; i++) { var b = e.substring(i, parseInt(i + 3)); var c = b.strReverse(); if (f.indexOf(b) != -1 || f.indexOf(c) != -1) { g -= 20 } b = e.toUpperCase().substring(i, parseInt(i + 3)); c = b.strReverse(); if (f.indexOf(b) != -1 || f.indexOf(c) != -1) { g -= 20 } } for (var i = 0; i < 8; i++) { var b = d.substring(i, parseInt(i + 3)); var c = b.strReverse(); if (f.indexOf(b) != -1 || f.toLowerCase().indexOf(c) != -1) { g -= 20 } } return Math.max(g, 0) };

        var delayKey,
    displayPasswdMeter = function (n, item) {
        var s, node = item.find('.validate-meter');

        if (n < 60) {
            s = '弱';
        } else if (n < 80) {
            s = '一般';
        } else {
            s = '强';
        }

        item.find('.validate-option, .validate-error').hide();

        if (node.length === 0) {
            node = $('<span class="validate-meter"></span>').appendTo(item);
        }

        node.show().text('密码强度：' + s);
    };

        $('#password').bind({
            focus: function () {
                var el = $(this),
        item = el.parent();

                if (item.find('.validate-error').css('display') === 'inline') {
                    return;
                }

                if (el.val().length >= 8) {
                    item.find('.validate-option').hide();
                }
            },

            blur: function () {
                var el = $(this),
        item = el.parent(),
        error = item.find('.validate-error');

                if (error.css('display') === 'inline') {
                    item.find('.validate-meter').hide();
                    return;
                }
            },

            keyup: function (e) {
                var el = this;
                if (this.value.length < 8) {
                    return;
                }
                delayKey && clearTimeout(delayKey);
                delayKey = setTimeout(function () {
                    displayPasswdMeter(checkPassword(el.value), $(el).parent());
                }, 10);
            }
        });

    });
</script>


<style type="text/css">
/* for pop dialog */
.loading { font-size: 14px; margin: 12px; color: #888; background-position: left center; padding: 0 0 0 20px; float: none; width: auto; height: auto }
#l_tabs li { display: inline-block; padding: 0px 12px }
#l_tabs li { *display: inline }
.selected { background: #93b77b;  border-radius: 3px; -moz-border-radius: 3px; -webkit-border-radius: 3px; color: #ffffff }
.selected a, .selected a:link { color: #fff!important; background: none; cursor: default; }
.panel ul { border-top: 1px solid #cccccc; padding: 12px 0 0 12px; margin: 10px 0 }
.panel a { font-size: 14px }
.panel ul li { display: inline-block; padding: 0 3px ; margin-right: 15px }
.panel ul li { *display: inline }
.off { display: none }
.panel li.on , .panel li.off { margin-right: 8px }
.panel li.on a , .panel li.off a { font-size: 12px; line-height: 15px }
.expand , .contract { margin: 0; text-align: right; padding-right: 10px }
.panel .expand a , .panel .contract a { font-size: 12px }
.panel .expand { background: url(http://img3.douban.com/pics/icon/tongcheng_tab_down.gif) no-repeat right 2px }
.panel .contract { background: url(http://img3.douban.com/pics/icon/tongcheng_tab_up.gif) no-repeat right 2px }
</style>

<script type="text/javascript">
    ; (function () {
        Do.add('dialog-css', { path: 'http://img3.douban.com/css/ui/packed_dialog9259912804.css', type: 'css' });
        Do.add('dialog', { path: 'http://img3.douban.com/js/ui/packed_dialog3992230463.js', type: 'js', requires: ['dialog-css'] });
        Do('dialog', function () {
            var where = 'register';
            var dlg = dui.Dialog(); dlg.set({ title: "选择你的常居地", url: "/j/misc/location_form", width: (/device-mobile/i).test(document.documentElement.className) ? document.documentElement.offsetWidth * 0.9 : 560, cache: true, callback: function (a, b) { $(".selected .loc-type").each(function () { getLocations($(this)) }); $("body").delegate("a.habitable", "click", function (c) { c.preventDefault(); if (where == "register") { $("#l_tabs").nextAll(".loading").show(); $("input[name='loc']").val($(this).attr("id")); $("em#location").html("<strong>" + $(this).text() + "</strong>"); $("em#location").next().html("重新选择"); b.close(); $(".loc-item .validate-error").hide() } else { $.post("/j/location/move", { loc: $(this).attr("id"), ck: get_cookie("ck") }, function (d) { if (d.r) { b.close(); window.location.reload() } else { alert("请求失败，请重试。") } }) } }); $("body").delegate("a.unhabitable, a.loc-type", "click", function (f) { f.preventDefault(); var d = $.trim($(this).attr("id")).substring($.trim($(this).attr("id")).indexOf("_") + 1); var c = "#p_" + d; $("#l_tabs").nextAll(".loading").show(); if ($(this).hasClass("unhabitable")) { getChildren($(this)) } if ($(this).hasClass("loc-type")) { getLocations($(this)) } $(this).parent().siblings("li.selected").removeClass("selected"); $(this).parent().addClass("selected"); $(c).siblings("div").remove(); dlg.updateSize(); dlg.updatePosition() }) } }); function getLocations(f) { var e = f.attr("id"); var c = $.trim(e).substring($.trim(e).indexOf("_") + 1); var d = "/j/location/" + c + "/"; var b = "p_" + c; var g = $("<div></div>").insertAfter(f.parent().parent()).attr("id", b); var a = $("<ul></ul>").appendTo(g).wrapAll("<div></div>"); a.parent().addClass("panel"); $.getJSON(d, function (i) { $("#l_tabs").nextAll(".loading").hide(); $.each(i.locations, function (k, j) { var l = $('<a href="#"></a>'); if (!j.habitable) { l.addClass("unhabitable") } else { l.addClass("habitable") } l.text(j.name).attr({ id: j.id, title: j.population + "人" }).appendTo(a).wrapAll("<li></li>"); if (j.population <= 100) { l.parent().hide().addClass("off") } }); $("<li></li>").css({ display: "block", height: "10px" }).insertBefore(a.children("li.off:first")); if (a.children(".off").length) { var h = $("<p></p>").addClass("expand"); h.appendTo(a); $("<a></a>").appendTo(h).text("更多") } dlg.updateSize(); dlg.updatePosition() }) } function getChildren(f) { var e = f.attr("id"); var c = $.trim(e).substring($.trim(e).indexOf("_") + 1); var d = "/j/location/" + c + "/"; var b = "p_" + c; var g = $("<div></div>").insertAfter(f.parent().parent()).attr("id", b); var a = $("<ul></ul>").appendTo(g).wrapAll("<div></div>"); a.parent().addClass("panel"); $.getJSON(d, function (h) { $("#l_tabs").nextAll(".loading").hide(); $.each(h.locations, function (k, j) { if (!j.has_child) { alert("此地区不能作为常居地，请选择其他城市"); g.remove(); return false } $.each(j.children, function (m, l) { var n = $('<a href="#"></a>'); if (!l.habitable) { n.addClass("unhabitable") } else { n.addClass("habitable") } n.text(l.name).attr({ id: l.id, title: l.population + "人" }).appendTo(a).wrapAll("<li></li>") }) }); dlg.updateSize(); dlg.updatePosition() }) } $("body").delegate("p.expand a", "click", function (a) { a.preventDefault(); $("li.off").show().addClass("on").removeClass("off"); $(this).text("收起").parent().removeClass("expand").addClass("contract"); dlg.updateSize(); dlg.updatePosition() }); $("body").delegate("p.contract a", "click", function (a) { a.preventDefault(); $("li.on").hide().addClass("off").removeClass("on"); $(this).text("更多").parent().removeClass("contract").addClass("expand"); dlg.updateSize(); dlg.updatePosition() }); $("#edloc,#btnLocation").click(function (a) { a.preventDefault(); $(".loading").hide(); dlg.open(); dlg.updateSize(); dlg.updatePosition() });
        });
    })();
</script>


    
    
<script type="text/javascript">
    var _gaq = _gaq || [];
    _gaq.push(['_setAccount', 'UA-7019765-1']);
    _gaq.push(['_addOrganic', 'baidu', 'word']);
    _gaq.push(['_addOrganic', 'soso', 'w']);
    _gaq.push(['_addOrganic', '3721', 'name']);
    _gaq.push(['_addOrganic', 'youdao', 'q']);
    _gaq.push(['_addOrganic', 'so.360.cn', 'q']);
    _gaq.push(['_addOrganic', 'vnet', 'kw']);
    _gaq.push(['_addOrganic', 'sogou', 'query']);
    _gaq.push(['_addIgnoredOrganic', '豆瓣']);
    _gaq.push(['_addIgnoredOrganic', 'douban']);
    _gaq.push(['_addIgnoredOrganic', '豆瓣网']);
    _gaq.push(['_addIgnoredOrganic', 'www.douban.com']);
    _gaq.push(['_setDomainName', '.douban.com']);


    _gaq.push(['_setCustomVar', 1, 'responsive_view_mode', 'desktop', 3]);

    _gaq.push(['_trackPageview']);
    _gaq.push(['_trackPageLoadTime']);



    window._ga_init = function () {
        var ga = document.createElement('script');
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        ga.setAttribute('async', 'true');
        document.documentElement.firstChild.appendChild(ga);
    };
    if (window.addEventListener) {
        window.addEventListener('load', _ga_init, false);
    } else {
        window.attachEvent('onload', _ga_init);
    }
</script>








    <!-- dis1-->

<script>    var _check_hijack = function () {
        var _sig = "7534NUTN", _login = false, bid = get_cookie('bid');
        if (location.protocol != "file:" && (typeof (bid) != "string" && _login || typeof (bid) == "string" && bid.substring(0, 8) != _sig)) {
            location.href += (/\?/.test(location.href) ? "&" : "?") + "_r=" + Math.random().toString(16).substring(2);
        } 
    };
    if (typeof (Do) != 'undefined') Do(_check_hijack);
    else if (typeof (get_cookie) != 'undefined') _check_hijack();
            </script>

















































<div id="dui-dialog0" class="dui-dialog " style="visibility: hidden; top: 214px; left: 386px; width: 560px;">				<span style="width: 560px; height: 173px;" class="dui-dialog-shd"></span>				<div class="dui-dialog-content">          <a href="#" class="j_close_dialog dui-dialog-close">X</a>					<div class="hd"><h3>选择你的常居地</h3></div>					<div style="height: auto; overflow: visible;" class="bd"><ul id="l_tabs">
	<li class="selected"><a href="" class="loc-type" id="a_directly">直达链接</a></li>
	<li class=""><a href="" class="loc-type" id="a_china">中国大陆</a></li>
	<li class=""><a href="" class="loc-type" id="a_zone">国家和地区</a></li>
</ul><div id="p_directly"><div class="panel"><ul><li><a title="2229511人" id="108288" class="habitable" href="#">北京</a></li><li><a title="1350120人" id="108296" class="habitable" href="#">上海</a></li><li><a title="972107人" id="118281" class="habitable" href="#">广州</a></li><li><a title="619452人" id="118254" class="habitable" href="#">武汉</a></li><li><a title="598255人" id="118282" class="habitable" href="#">深圳</a></li><li><a title="588726人" id="118318" class="habitable" href="#">成都</a></li><li><a title="513006人" id="118172" class="habitable" href="#">杭州</a></li><li><a title="453747人" id="118159" class="habitable" href="#">南京</a></li><li><a title="438696人" id="118371" class="habitable" href="#">西安</a></li><li><a title="360728人" id="108309" class="habitable" href="#">重庆</a></li><li><a title="354294人" id="118237" class="habitable" href="#">郑州</a></li><li><a title="353525人" id="118267" class="habitable" href="#">长沙</a></li><li><a title="348610人" id="108289" class="habitable" href="#">天津</a></li><li><a title="256157人" id="118163" class="habitable" href="#">苏州</a></li><li><a title="255673人" id="118200" class="habitable" href="#">福州</a></li></ul></div></div>
<p style="display: none;" class="loading">正在加载数据，请稍候...</p>

</div>				</div>			</div></body></html>