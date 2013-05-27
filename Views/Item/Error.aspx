<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Sudo.Master" Inherits="System.Web.Mvc.ViewPage<int?>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    错误
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <div id="detail">
        <div id="J_DetailMeta" class="tb-detail-bd tm-clear">
            <div class="tb-summary tm-clear">
                <div class="tb-property">
                    <div class="tb-wrap">
                        <div class="tb-detail-hd ">
                            <h2>
                                错误</h2>
                            <p>
                                <%:ViewData["ErrorMessage"] %></p>
                            <%if (Model != null)
                              { %>
                            <p>
                                <%: Html.ActionLink("回到刚才的页面","Details","Item",new {Id = Model.Value},null)%></p>
                            <%} %>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ScriptContent" runat="server">
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="FooterContent" runat="server">
</asp:Content>
<asp:Content ID="Content5" ContentPlaceHolderID="FooterScriptContent" runat="server">
</asp:Content>
