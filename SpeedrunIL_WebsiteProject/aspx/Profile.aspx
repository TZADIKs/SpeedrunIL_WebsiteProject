<%@ Page Title="" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="Profile.aspx.cs" Inherits="SpeedrunIL_WebsiteProject.aspx.Profile" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="../css/Main.css" rel="stylesheet"/>
    <link href="../css/BG.css" rel="stylesheet" />
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:PlaceHolder runat="server" ID="ShowProfile">
        <table class="profileTable">
            <thead>
            <tr>
                
                    <div style="display:flex; justify-content:center">
                        <h1>Showing <%=UserToShow.U_NAME %>'s Profile!</h1>
                    </div>
                
            </tr>
            <tr>
            </thead>
            <tbody>
                <tr>
                    <td>
                        <h3>Details: </h3>
                    </td>
                    <td>
                        <div style ="display:flex; justify-content:space-around">
                            <h3>Favorite Games: <br /> 
                            (click on a category to go to it's leaderborad) </h3>
                        </div>  
                    </td>
                    <td>
                        <div style="display:flex; justify-content:space-around; text-align:center">
                            <h3>Contact: </h3>
                        </div>
                    </td>
                </tr>
                <tr>
                    <td>
                        <div style="display:flex; justify-content:space-around">
                            <h4>Name: <%=UserToShow.F_NAME %>&nbsp<%=UserToShow.L_NAME %> <br />
                                Gender: <%=UserToShow.GENDER %>
                            </h4>
                        </div>
                    </td>
                    <td>
                        <div style="display:flex; justify-content:space-around">
                            <asp:PlaceHolder runat="server" ID="ShowMC116">
                                <a href="MC116.aspx">
                                    <h4>Minecraft Any% 1.16 RSG </h4> 
                                </a>
                            </asp:PlaceHolder> <br />
                            <asp:PlaceHolder runat="server" ID="ShowMC17">
                                <a href="MC17.aspx">
                                    <h4>Minecraft Any% 1.7 RSG </h4> 
                                </a>
                            </asp:PlaceHolder> <br />
                            <asp:PlaceHolder runat="server" ID="ShowMCssg">
                                <a href="MCssg.aspx">
                                    <h4>Minecraft Any% 1.16 SSG </h4> 
                                </a>
                            </asp:PlaceHolder> <br />
                            <asp:PlaceHolder runat="server" ID="ShowRB">
                                <a href="RB.aspx">
                                    <h4>Red Ball 1</h4> 
                                </a>
                            </asp:PlaceHolder>
                        </div>
                    </td>
                    <td>
                        <div style="display:flex; justify-content:space-around">
                            <h4>
                                Email: <%=UserToShow.EMAIL %> <br />
                                Phone Number: <%=UserToShow.PREFIX %>-<%=UserToShow.PHONE %>
                            </h4>
                        </div>
                    </td>
                </tr>
            </tbody>
        </table>
    </asp:PlaceHolder>
    <asp:PlaceHolder runat="server" ID="ShowMsg">
        <%=msg %>
    </asp:PlaceHolder>
</asp:Content>
