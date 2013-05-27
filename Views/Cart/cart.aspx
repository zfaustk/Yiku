<%@ Page Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.CartModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    依库商城
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <link rel="stylesheet" href="../../Content/a_002.css">
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/a.css">
    <link rel="Stylesheet" href="../../Content/shoppingtrolley/cart-min.css">
    <style>
    #empty 
    {
        margin-left:200px;
        padding: 88px 0 100px 156px;
        position: relative;
    }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <%--<div class="flow-steps">
        <ol class="num5">
            <li class="current"><span class="first">1. 查看购物车</span> </li>
            <li><span>2. 确认订单信息</span> </li>
            <li class="last"><span>3. 付款到支付宝</span> </li>
        </ol>
    </div>--%>
    <% if (Model.Exist)
       {%> 
    <div id="cart">
        <div class="status-wrapper">
            
            <div class="status-bar" id="status-bar" data-total="50" data-limit="45">
                <div class="J_StatusContent">
                    <div class="box">
                        <div class="box-status" id="J_StatusInStatusBox">
                            购物车状态：
                            <%--<div class="bar clearfix">
                                <div style="width: 5px;" class="normal" title="正常宝贝">
                                </div>
                                <div style="display: none;" class="disable" title="临时失效宝贝">
                                </div>
                                <div style="display: none;" class="invalid" title="永久失效宝贝">
                                </div>
                            </div>--%>
                            <span class="num"><span class="J_TotalNum"><%: Model.TSHs.Count()%></span>/??</span>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        
        <table class="order-table" id="J_CartEnable" data-spm="1000638" cellpadding="0" cellspacing="0">
            <colgroup valign="middle">
                <col width="62">
                <col>
                <col width="70">
                <col width="70">
                <col width="100">
                <col width="105">
                <col width="116">
                <col width="56">
            </colgroup>
            <thead>
                <tr>
                    <th></th>
                    <th class="s-title">
                        店铺宝贝
                    </th>
                    <th class="s-point">
                        商城积分
                    </th>
                    <th class="s-price">
                        单价(元)
                    </th>
                    <th class="s-amount">
                        数量
                    </th>
                    <th class="s-agio">
                        优惠
                    </th>
                    <th class="s-total">
                        小计(元)
                    </th>
                    <th class="s-del">
                    </th>
                </tr>
            </thead>
            <% decimal PriceSum = 0;
               if (Model.Exist)
                   foreach (var tsh in Model.TSHs)
                   { %>
            <tbody class="J_Order">
                <tr class="J_ItemHead shop">
                    
                    <td colspan="4">
                        <span class="seller">卖家：
                        <%: Html.ActionLink(tsh.Item.User.Name, "Search", "Item", new { Uname = tsh.Item.User.Name }, null)%>
                        </span>
                    </td>
                    <td colspan="4" class="promo-info">
                    </td>
                </tr>
                <tr class="J_ItemBody uncod xcard selected ">
                    <td></td>
                    <td class="s-title">
                        <a href="../../Item/Details/<%: tsh.IID %>" target="_blank">
                            <img src="<%: "../../Content/Image/Items/" + tsh.Item.thePictureRoute %>"
                                class="itempic">
                            <%: tsh.Item.Name%></a>
                    </td>
                    <td class="s-point">
                        <em tabindex="0"><%: tsh.Item.Stock - tsh.Item.Volume%></em>
                    </td>
                    <td class="s-price  ">
                        <em class="J_Price" tabindex="0"><%: string.Format("{0:c}", tsh.Item.Price)%></em>
                    </td>
                    <td class="s-amount ">
                        <%: Html.ActionLink("-", "DeclineShopping", "Item", new { ID = tsh.IID }, new { Class = "minus" })%>
                        <%: tsh.Count%>
                        <%: Html.ActionLink("+","Buy","Item",new {ID = tsh.IID},new {Class = "plus"} )%>
                    </td>
                    <td class="s-agio">
                        <%: tsh.Cut ?? "-"%>
                    </td>
                    <td class="s-total">
                    <%PriceSum = PriceSum + tsh.Count * tsh.Item.Price; %>
                        <em tabindex="0"><%: string.Format("{0:c}", tsh.Count * tsh.Item.Price)%></em>
                    </td>
                    <td class="s-del">
                        <%: Html.ActionLink("加入收藏夹", "Collect", "Item", new { ID = tsh.IID, Delete = true }, new { Class = "fav" })%>
                        <%: Html.ActionLink("删除本商品", "DeleteShopping", "Item", new { ID = tsh.IID }, new { Class = "fav" })%>
                    </td>
                </tr>
            </tbody>
            <%}%>
        </table>
        <div style="position: relative;">
            <div style="position: static;" id="float-bar" class="float-bar default clearfix">
                <%using (Html.BeginForm())
                 { %>
                <div id="J_CleanInvlid" class="msg" style="display: none; position: absolute; left: 180px;
                    top: 5px;">
                </div>
                收货地址： <%:Html.TextBoxFor(M => M.CurrentUser.Address) %>
                收件人：<%:Html.TextBoxFor(M => M.CurrentUser.Consignee) %>
                <div id="J_UncodNumMessage" class="kd-popup uncod-msg hidden">
                    <div class="box">
                        <div class="bd">
                            有<span class="J_UncodNum uncod-num"></span>种宝贝因不支持货到付款从结果中移除。
                        </div>
                        <a href="" title="" class="close"><span>关闭</span></a>
                    </div>
                    <i class="bottom"></i>
                </div>
               
                <button class="btn" data-spm="1000641" type="submit" id="J_Go" data-addfastbuy="true">
                     结  算
                </button>
                <%} %>
                <span class="total-price g_price">商品总价(不含运费)：<span>¥</span><em class="total" id="J_Total"
                    tabindex="0"><%:string.Format("{0:f}", PriceSum)%></em></span> <i style="display: none;" class="goto" data-spm="1000643"
                        title="返回顶部"></i>
            </div>
        </div>
    </div>
    <% }
       else
       {%> 
    <div id="empty" class="status-wrapper order-table">
        <div class="status-bar" id="Div1" data-total="50" data-limit="45">
            <div class="hd">
                <a href="#" id="A1" class="undo-del hidden" data-api="/undelete_cart_items.htm?shop_id=0">
                    撤销删除</a>
            </div>
            <div class="J_StatusContent" style="float: left;">
                <div class="box" style="float: left;">
                    <div class="box-status" id="Div2">
                        购物车状态：
                        <div class="bar clearfix">
                            <div class="normal" title="正常宝贝">
                            </div>
                            <div class="disable" title="临时失效宝贝">
                            </div>
                            <div class="invalid" title="永久失效宝贝">
                            </div>
                        </div>
                        <span class="num"><span class="J_TotalNum"></span>0/50</span> <span class="text J_MostText">
                            请及时清理、收藏宝贝，以免影响购物体验。</span> <span class="text J_FullText">请及时清理、收藏宝贝，以免影响购物体验。</span>
                    </div>
                </div>
            </div>
        </div>
        <h2>
            您的购物车还是空的，赶紧行动吧！您可以：</h2>
        <ul>
            <li>马上去 <%: Html.ActionLink("找宝贝","Search", "Item") %> </li>
            <li>去看看 <%: Html.ActionLink("以买到的宝贝","trade", "MyYiku") %> </li>
        </ul>
    </div>
    <%} %>
</asp:Content>
