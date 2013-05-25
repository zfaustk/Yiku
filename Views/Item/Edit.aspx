<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/MyYiku.master" Inherits="System.Web.Mvc.ViewPage<Yiku.Models.DataBase.Item>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    编辑商品
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="main-content">
        <div class="navigation">
            <div class="crumbs " data-spm="6">
                <span>&gt;</span><span>&gt;</span>我的宝贝
            </div>
        </div>
        <div id="selllist" class="sns-config">
            <div class="sns-tab tab-app">
                <ul>
                    <li class="selected"><a href="#" data-spm-anchor-id="0.0.0.0"><span>宝贝管理</span></a>
                    </li>
                </ul>
                <ul class="tab-sub">
                    <li><span>
                        <%: Html.ActionLink("我在卖的商品","sell","MyYiku") %></a></span></li>
                    <li><span>
                        <%: Html.ActionLink("创建商品","Create","Item") %></span></li>
                    <li class="selected"><a href="#"><span>修改商品信息</span></a></li>
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
    <table>
        <thead>
            <td>
                <div class="item-list-bd parts" style="padding-left: 40px; width: 400px;">
                    <% using (Html.BeginForm())
                       {%>
                    <%: Html.ValidationSummary(true) %>
                    <div class="editor-label">
                        发布用户
                    </div>
                    <div class="editor-field">
                        <%: HttpContext.Current.User.Identity.Name%>
                    </div>
                    <div class="editor-label">
                        商品名
                    </div>
                    <div class="editor-field">
                        <%: Html.TextBoxFor(model => model.Name, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Name) %>
                    </div>
                    <div class="editor-label">
                        描述
                    </div>
                    <div class="editor-field">
                        <%: Html.TextAreaFor(model => model.Detail, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Detail) %>
                    </div>
                    <div class="editor-label">
                        总库存(已售出:<%: String.Format("{0:d}", Model.Volume)%>）
                    </div>
                    <div class="editor-field">
                        <%: Html.TextBoxFor(model => model.Stock, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Stock) %>
                    </div>
                    <div class="editor-label">
                        <%: Html.LabelFor(model => model.Price) %>
                    </div>
                    <div class="editor-field">
                        <%: Html.TextBoxFor(model => model.Price, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Price) %>
                    </div>
                    <div class="editor-label">
                        折扣
                    </div>
                    <div class="editor-field">
                        <%: Html.TextBoxFor(model => model.Cut, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Cut) %>
                    </div>
                    <div class="editor-label">
                        不删除？
                    </div>
                    <div class="editor-field">
                        <%: Html.TextBoxFor(model => model.Exist, new { style = "margin-left:40px;", Class = "f-txt" })%>
                        <%: Html.ValidationMessageFor(model => model.Exist) %>
                    </div>
                    <p>
                        <button type="submit" class="_YIKU_Button">
                                保存
                        </button>
                    </p>
                    <% } %>
                    </div>
            </td>
            <td>
                <div style="float: right;">
                    <% using (Html.BeginForm("EditImage", "Item", new { ID = Model.IID }, FormMethod.Post, new { enctype = "multipart/form-data" }))
                       {%>
                    <fieldset>
                        <div class="editor-field">
                            <%foreach(var pic in Model.Pictures){ %>
                            <img src = "../../../Content/Image/Items/<%: pic.Route %>" class = "_ItemPic"  />
                            <%break;
                              } %>
                        </div>
                        <div class="editor-field">
                            <input name="ImgUpload" type="file" />
                        </div>
                        <p>
                            <button type="submit" class="_YIKU_Button">
                                上传
                            </button>
                        </p>
                    </fieldset>
                    <% } %>
                </div>
            </td>
        </thead>
    </table>

</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
