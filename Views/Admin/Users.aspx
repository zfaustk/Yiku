<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Shared/Site.Master" Inherits="System.Web.Mvc.ViewPage<IEnumerable<Yiku.Models.DataBase.User>>" %>

<asp:Content ID="Content1" ContentPlaceHolderID="TitleContent" runat="server">
	User
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" runat="server">

    <h2>User</h2>

    <table>
        <tr>
            <th>
                编号
            </th>
            <th>
                用户名
            </th>
            <th>
                积分
            </th>
            <th>
                地址
            </th>
            <th>
                收件人
            </th>
            <th>
                号码
            </th>
            <th>
                邮编
            </th>
            <th>
                是否活动
            </th>
            <th>
                密码
            </th>
            <th>
                角色
            </th>
            <th>
                出售
            </th>
            <th>
                购买
            </th>
        </tr>

    <% foreach (var item in Model) { %>
    
        <tr>
            <td>
                <%: string.Format("{0:0000}",item.UID) %>
            </td>
            <td>
                <%: item.Name %>
            </td>
            <td>
                <%: item.Point %>
            </td>
            <td>
                <%: item.Address %>
            </td>
            <td>
                <%: item.Consignee %>
            </td>
            <td>
                <%: item.Tel %>
            </td>
            <td>
                <%: item.ZipCode %>
            </td>
            <td>
                <%: item.Exist %>
            </td>
            <td>
                <%: item.PSW %>
            </td>
            <td>
                <%: item.ROLE %>
            </td>
            <td>
                <% if( item.Items != null){ %>
                <%: item.Items.Count() %> 
                <%} else {%> 
                    0
                <%} %>
            </td>
            <td>
                <% if( item.Orders != null){ %>
                <%: item.Orders.Count()%> 
                <%} else {%> 
                    0
                <%} %>
            </td>
        </tr>
    
    <% } %>

    </table>

</asp:Content>

