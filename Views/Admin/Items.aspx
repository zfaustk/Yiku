<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Yiku.Models.DataBase.Item>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	Items
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>Items</h2>

    <table>
        <tr>
            <th>
                商品号
            </th>
            
            <th>
                商品名
            </th>

            <th>
                卖家
            </th>

            <th>
                商品页面
            </th>
            <th>
                库存
            </th>
            <th>
                出货量
            </th>
            <th>
                价格
            </th>
            <th>
                创建时间
            </th>
            <th>
                折扣
            </th>
            <th>
                图片
            </th>

        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: string.Format("{0:00000000}", item.IID) %>
            </td>
            <td>
                <div style="width:200px;overflow:hidden"><p><%: item.Name %></p></div>
            </td>
            <td>
            
                <%: item.User.Name %>
            </td>
            
            <td>
                <div style="width:80px;overflow:hidden">
                <%: Html.ActionLink("访问", "Details", "Item", new { id = item.IID }, new { target="_blank"})%>
                </div>
            </td>
            <td>
                <%: item.Stock %>
            </td>
            <td>
                <%: item.Volume %>
            </td>
            <td>
                <%: String.Format("{0:c}", item.Price) %>
            </td>
            <td>
                <%: String.Format("{0:g}", item.TimeCreate) %>
            </td>
            <td>
                <%: item.Cut %>
            </td>

            <td>
                <img style = "width:45px;height:40px;margin:0px;" src="<%: "../../Content/Image/Items/"+ item.thePictureRoute %>" />
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

