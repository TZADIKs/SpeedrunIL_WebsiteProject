<%@ Page Title="Registeration" Language="C#" MasterPageFile="~/AssiDemo4.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="AssiDemo4.Pages.Register" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>Registration form</h1>
    <form name="regForm" method="post" runat="server" onsubmit ="return chkSignupForm();">
        <table id="tblSignup">
            <tr>
                <td>first name</td>
                <td>
                    <input type ="text" name="fName" id="fName" placeholder="enter first name" />
                </td>
            </tr>
            <tr>
                <td>last name</td>
                <td><input type ="text" name="lName" id="lName" placeholder="enter last name" /></td>               
            </tr>
            <tr>
                <td>user name</td>
                <td>
                    <input type ="text" name="uName" id="uName" placeholder="enter user name"/>
                </td>
            </tr>           
             <tr>
                <td>prefix</td>
                <td>
                    <select name="prefix">
                        <option value="054">054</option>
                        <option value="050">050</option>
                        <option value="052">052</option>
                        <option value="058">058</option>
                        <option value="053">053</option>
                    </select> 
                </td>
            </tr>

            <tr>
                <td>phone</td>
                <td><input type="text" name="phone" id="phone" placeholder="enter phone" /></td>
            </tr>
            <tr>
                <td>email</td>
                <td>
                    <input type ="text" name="uEmail" id="uEmail" placeholder="enter last name"/>
                </td>    
            </tr>
            <tr>
                <td>Gender:</td>
                <td><input type="radio" id="male" name="gender" value ="male" checked="checked"/>
                    <label for="male">male</label>
                    <input type="radio" id="female" name="gender" value ="female" />
                    <label for="female">female</label>
                </td>
            </tr>    
            <tr>
                <td>hobbies</td>
                <td>
                    <table>
                        <tr>
                            <td><input type="checkbox" name="hobby" value="1" checked="checked" />computers</td> &nbsp &nbsp
                            <td><input type="checkbox" name="hobby" value="2" />music</td> &nbsp &nbsp
                            <td><input type="checkbox" name="hobby" value="3" />movies</td> &nbsp &nbsp
                            <td><input type="checkbox" name="hobby" value="4" />tv</td>&nbsp &nbsp
                            <td><input type="checkbox" name="hobby" value="5" />horses</td>&nbsp &nbsp
                        </tr>
                    </table>
                </td>
            </tr>
            <tr>
                <td>password</td>
                <td><input type="password" name="pw" id="pw" size="10" placeholder="enter password"/></td>
           
            </tr>
            <tr>
                <td colspan="2" style="text-align:center;">
                    <input type="submit" name="send" value="Register" />
                    <input type="reset" value="clear-form" />
                </td>
            </tr>
        </table>         
    </form>
    <h2>here we can see the data we pulled-> <%=insertSql %></h2>
</asp:Content>
