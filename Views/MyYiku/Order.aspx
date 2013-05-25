<%@ Page Language="C#" MasterPageFile="~/Views/Shared/MyYiku.Master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.HomeModels>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    出售列表
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
    <style type="text/css">
        thead
        {
            display: table-header-group;
            vertical-align: middle;
            border-color: inherit;
        }
        th
        {
            height: 29px;
            border-bottom: 1px solid #aec7e5;
            background: url(../../Content/image/itemlist_bg.gif) repeat-x 0 0;
            text-align: center;
            color: #000;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>我的订单
            </div>
        </div>
        <div id="selllist" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="#" data-spm-anchor-id="0.0.0.0"><span>售出的宝贝</span></a>
                    </li>
                </ul>
                <ul class="tab-sub">
                    <li class="selected"><a href="base_info_set.htm"><span>所有宝贝</span></a></li>
                    <li><a href="headset.htm?tracelog=Photo011"><span>未付款宝贝</span></a></li>
                    <li><a href="school.htm"><span>已付款宝贝</span></a></li>
                </ul>
            </div>
            <div class="sns-box box-detail">
                <div class="bd">
                    <div class="sns-nf">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <div class="item-list-bd">
        <table id="J_ListTable" style="width: 100%;">
            <colgroup>
                <col class="item-list-col0">
                <col class="item-list-col1">
                <!-- 宝贝 -->
                <col class="item-list-col2">
                <!-- 单价(元) -->
                <col class="item-list-col3">
                <!-- 数量 -->
                <col class="item-list-col4">
                <!-- 纠纷 -->
                <col class="item-list-col6">
                <!-- 买家 -->
                <col class="item-list-col7">
                <!-- 交易状态 -->
                <col class="item-list-col8">
                <!-- 实收款(元) -->
                <col class="item-list-col9">
                <!-- 评价 -->
            </colgroup>
            <thead>
                <tr>
                    <th>
                    </th>
                    <th class="item">
                        宝贝
                    </th>
                    <th class="price">
                        单价(元)
                    </th>
                    <th class="num">
                        数量
                    </th>
                    <th class="trouble">
                        售后
                    </th>
                    <th class="contact">
                        买家
                    </th>
                    <th class="trade-status">
                        交易状态
                    </th>
                    <th class="order-price">
                        实收款(元)
                    </th>
                    <th class="remark">
                        评价
                    </th>
                </tr>
            </thead>
            </tbody>
        </table>
    </div>
    <!--end main-content-->
</asp:Content>
