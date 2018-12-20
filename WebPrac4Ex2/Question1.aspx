<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Question1.aspx.cs" Inherits="WebPrac4Ex2.Question1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table>
                <tr><td>Please select staff name:</td><td>Please select year:</td></tr>
                <tr><td>
                    <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList></td><td>
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" DataSourceID="SqlDataSource3" DataTextField="OrderDate" DataValueField="OrderDate"></asp:RadioButtonList>
                        <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [OrderDate] FROM [Orders]"></asp:SqlDataSource>
                    </td></tr>
                <tr><td></td><td>
                    <asp:Button ID="Button1" runat="server" Text="Search" /></td></tr>
            </table>
            <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" OnSelecting="SqlDataSource1_Selecting" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Employees]"></asp:SqlDataSource>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <br />
            <br />
            <br />
            <table>
                <tr>
                    <td>

                        <asp:GridView ID="GridView1" runat="server">
                        </asp:GridView>

                    </td>
                    <td>

                        <asp:Label ID="Label2" runat="server"></asp:Label>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server"></asp:SqlDataSource>
                        <asp:DataList ID="DataList1" runat="server"></asp:DataList>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
