<%@ Page Language="C#" Inherits="System.Web.Mvc.ViewPage<dynamic>" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html class="" lang="zh-CN"><head>
<meta http-equiv="content-type" content="text/html; charset=UTF-8">
<meta charset="UTF-8">
<meta property="wb:webmaster" content="f307b26227e4f2c3">
<title>登录依库</title>
<link rel="Stylesheet"  type="text/css"  href="../../Content/login.css">
<script>

    function changeWindowSize() {
        var d = document.documentElement;
        var ch = document.getElementById('header').offsetHeight
          + document.getElementById('content').offsetHeight
          + document.getElementById('side-nav').offsetHeight;
        if (d.offsetWidth <= 500
  || d.offsetHeight <= ch) {
            if (!changeWindowSize.changed) {
                window.resizeTo(500, ch);
                changeWindowSize.changed = true;
            }
            d.className = 'narrow-layout';
            resizeEvent(true);
        } else {
            d.className = '';
            resizeEvent(false);
        }
    }

    function resizeEvent(bind) {
        if (!bind) {
            window.onresize = null;
            return;
        }
        window.onresize = (function () {
            var delay;
            return function () {
                if (delay) {
                    window.clearTimeout(delay);
                }
                delay = window.setTimeout(changeWindowSize, 100);
            }
        })();
    }
</script>
</head>
<body onload="changeWindowSize()">
<div class="wrapper">
  <div id="header">
      <a href="" class="logo">登录依库</a>
  </div>

<div id="content">
  <h1>登录依库</h1>
  <div class="article">
      

<form id="lzform" name="lzform" method="post" action="https://www.douban.com/accounts/login" onsubmit="return validateForm(this);">
  <div style="display:none;">
      <img src="%E7%99%BB%E9%99%86_files/blank.gif" onload="loadTestImage('https://www.douban.com/accounts/login')">
  </div>
    <input name="source" value="index_nav" type="hidden">
      <input name="redir" value="http://www.douban.com/" type="hidden">
    <div id="item-error">
        <p class="error">错误的帐号类型</p>
    </div>
    <div class="item">
        <label>帐号</label>
        <input style="color: rgb(204, 204, 204);" id="email" name="form_email" class="basic-input" maxlength="60" value="邮箱/手机号" tabindex="1" type="text">
    </div>
    <div class="item">
        <label>密码</label>
        <input id="password" name="form_password" class="basic-input" maxlength="20" tabindex="2" type="password">
    </div>
      
    <div class="item">
        <label>&nbsp;</label>
        <p class="remember">
            <input id="remember" name="remember" tabindex="4" type="checkbox">
            <label for="remember" class="remember">下次自动登录</label>
        </p>
    </div>
    <div class="item">
        <label>&nbsp;</label>
        <input value="登录" name="user_login" class="btn-submit" tabindex="5" type="submit">
    </div>
</form>

  </div>
  <ul id="side-nav" class="aside">
    <li>&gt;&nbsp;还没有依库帐号？<a rel="nofollow" href="Cregister">立即注册</a></li>
  </ul>
</div>
<div id="footer">


<span id="icp" class="fleft gray-link">
    © 2013-? yiku.com, all rights reserved
</span>


</div>

<script>
    ; (function (doc) {
        var $ = function (id) { return doc.getElementById(id); };
        var placeholder = '邮箱/手机号';
        var email = $('email'), password = $('password'), capcha = $('captcha_field');
        email.onfocus = function () {
            if (this.value == placeholder) {
                this.value = '';
                this.style.color = '#000';
            }
        };
        email.onblur = function () {
            if (!this.value) {
                this.value = placeholder;
                this.style.color = '#ccc';
            }
        };

        if (email.value == placeholder) {
            email.style.color = '#ccc';
        } else if (password.value === '') {
            password.focus();
        } else if (capcha) {
            capcha.focus();
        }

    })(document);

    function trim(str) {
        return str.replace(/^(\s|\u00A0)+/, '').replace(/(\s|\u00A0)+$/, '');
    }

    function validateForm(frm) {
        var error = 0,
  captcha = frm.elements['captcha-solution'],
  account = frm.elements['form_email'],
  passwd = frm.elements['form_password'],
  defaultError = document.getElementById('item-error');

        account_value = trim(account.value);
        captcha_value = trim(captcha.value);
        if (defaultError) {
            defaultError.style.display = 'none';
        }

        if (captcha && captcha_value === '') {
            displayError(captcha, '请输入验证码');
            error = 1;
        } else if (captcha_value.length < 4) {
            displayError(captcha, '请输入正确的验证码');
            error = 1;
        } else {
            captcha && clearError(captcha);
        }
        if (account && account_value === '') {
            displayError(account, '请输入邮箱');
            error = 1;
        } else if (!(/^([a-zA-Z0-9_\.\-\+])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/.test(account_value)
                || /^1[358](\d){9}$/.test(account_value))) {
            displayError(account, '请输入正确的邮箱/手机号');
            error = 1;
        } else {
            account && clearError(account);
        }
        if (passwd && passwd.value === '') {
            displayError(passwd, '请输入密码');
            error = 1;
        } else {
            passwd && clearError(passwd);
        }
        return !error;
    }

    function displayError(el, msg) {
        var err = document.getElementById(el.name + '_err');
        if (!err) {
            err = document.createElement('span');
            err.id = el.name + '_err';
            err.className = 'error-tip';
            el.parentNode.appendChild(err);
        }
        err.style.display = 'inline';
        err.innerHTML = msg;
    }

    function clearError(el) {
        var err = document.getElementById(el.name + '-err');
        if (err) {
            err.style.display = 'none';
        }
    }
</script>




</div>
<script>    var _check_hijack = function () {
        var _sig = "7534NUTN", _login = false, bid = get_cookie('bid');
        if (location.protocol != "file:" && (typeof (bid) != "string" && _login || typeof (bid) == "string" && bid.substring(0, 8) != _sig)) {
            location.href += (/\?/.test(location.href) ? "&" : "?") + "_r=" + Math.random().toString(16).substring(2);
        } 
    };
    if (typeof (Do) != 'undefined') Do(_check_hijack);
    else if (typeof (get_cookie) != 'undefined') _check_hijack();
            </script>



</body></html>