<%@ Page Title="Registeration" Language="C#" MasterPageFile="~/Main.Master" AutoEventWireup="true" CodeBehind="RegisterPage.aspx.cs" Inherits="AssiDemo4.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Registration form</h1>
    <form name="regForm" method="post" runat="server" onsubmit ="return chkSignupForm();">
        <table id="tblSignup">
            <tr>
                <td>First Name: </td>
                <td>
                    <input type ="text" name="fName" id="fName" placeholder="Enter First Name" />
                </td>
            </tr>
            <tr>    
                <td>Last Name: </td>
                <td><input type ="text" name="lName" id="lName" placeholder="Enter Last Name" /></td>               
            </tr>
            <tr>
                <td>Username: </td>
                <td>
                    <input type ="text" name="uName" id="uName" placeholder="Enter User Name"/>
                </td>
            </tr>           
             <tr>
                <td>Phone Number: </td>
                <td>
                    <select name="prefix">
                        <option value="054">054</option>
                        <option value="050">050</option>
                        <option value="052">052</option>
                        <option value="058">058</option>
                        <option value="053">053</option>
                    </select> 
                </td>
                <td><input type="text" name="phone" id="phone" placeholder="Enter Phone Number" /></td>
            </tr>
            <tr>
                <td>Email</td>
                <td>
                    <input type ="text" name="uEmail" id="uEmail" placeholder="Enter Email"/>
                </td>    
            </tr>
            <tr>
                <td>Gender:</td>
                <td><input type="radio" id="male" name="gender" value ="male" />
                    <label for="male">male</label>
                    <input type="radio" id="female" name="gender" value ="female" />
                    <label for="female">female</label>
                </td>
            </tr>    
            <tr>
                <td>Favorite Speedrun Games: </td>
            </tr>
        </table>
        <table>
            <tr>
                <td><input type="checkbox" name="hobby" value="1" checked="checked" />Minecraft RSG 1.16</td> &nbsp &nbsp
                <td><input type="checkbox" name="hobby" value="2" />Minecraft RSG 1.7</td> &nbsp &nbsp
                <td><input type="checkbox" name="hobby" value="3" />Minecraft SSG</td> &nbsp &nbsp
                <td><input type="checkbox" name="hobby" value="4" />Red Ball 1</td>&nbsp &nbsp
                <td><input type="checkbox" name="hobby" value="5" />Other</td>&nbsp &nbsp
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="pw" id="pw" size="10" placeholder="enter password"/></td>
           
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="send" value="Register" />
                    <input type="reset" value="Clear" />
                </td>
            </tr>
        </table>         
    </form>
</asp:Content>
