<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="SpeedrunIL_WebsiteProject.aspx.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <form name="logForm" method="post" runat="server" onsubmit="return chkform();">
        <%--chkform is func in js --%>
        <table id="tblLogin">
            <tr>
                <td>User Name</td>
                <td>
                    <input type="text" name="luName" id="luName" placeholder="Enter User Name" />
                </td>
                <%--<td> <input type="text" id="mtzzjs" size="30" style="display:none; background-color: silver; font-weight:bold;" disabled="disabled"/> </td>--%>
            </tr>
            <tr>
                <td>Password</td>
                <td>
                    <input type="password" name="luPass" id="luPass" placeholder="Enter Password" />
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" name="subLogIn" value="Log In" />
                </td>
                <%--button for submit registration use name value to check in server side that user pressed the button--%>
                <td>
                    <input type="reset" value="clear form" />
                </td>
            </tr>
        </table>
    </form>
    <h2><%=message %></h2>
</asp:Content>
