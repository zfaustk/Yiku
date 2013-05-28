<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Yiku.Models.DataBase.ClassM>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
    Classes
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">
    <h2>
        类目
    </h2>
    <a style="color:Red;"><%: ViewData["ErrorMessage"]%></a>
    添加一个类：
    <% using (Html.BeginForm())
       { %>
        名称<%: Html.TextBox("cName") %>
        父ID<%: Html.TextBox("cFatherID") %>
        <button type="submit">
            添加
        </button>
    <%} %>
    修改一个类：
    <% using (Html.BeginForm())
       { %>
        类ID<%: Html.TextBox("eID") %>
        名称<%: Html.TextBox("eName") %>
        父ID<%: Html.TextBox("eFatherID") %>
        <button type="submit">
            修改
        </button>
    <%} %>

    <table>
        <tr>
            <th>
                类ID
            </th>
            <th>
                类名
            </th>
            <th>
                父类ID
            </th>
            <th>
                父类名
            </th>
            <th>
                子类数
            </th>
            <th>
                本类商品数
            </th>
        </tr>
        <% foreach (var item in Model)
           { %>
        <tr>
            <td>
                <%: item.CID %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.FatherID %>
            </td>
            <td>
                <%if (item.ClassFather != null)
                  {%>
                <%: item.ClassFather.Name%>
                <%}%>
            </td>
            <td>
                <%if (item.ClassSons != null)
                  { %>
                <%: item.ClassSons.Count()%>
                <%}
                  else
                  {%>
                0
                <%} %>
            </td>
            <td>
                <%if (item.T_Classify != null)
                  { %>
                <%: item.T_Classify.Count()%>
                <%}
                  else
                  {%>
                0
                <%} %>
            </td>
        </tr>
        <% } %>
    </table>
    <p>
        <%: Html.ActionLink("Create New", "Create") %>
    </p>
</asp:Content>
