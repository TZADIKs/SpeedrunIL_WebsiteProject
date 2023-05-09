using MasterPageDemo.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeedrunIL_WebsiteProject.aspx
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        string sql = "";
        public string message = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string userName = Request.Form["luName"];
            string password = Request.Form["luPass"];
            if (IsPostBack)
            {
                //select F_NAME, L_NAME from Registraion where U_NAME = 'uname1' and PASS = '1234561'
                sql += $"select F_NAME, L_NAME from usersTbl where U_NAME = '{userName}' and PSW = '{password}' ";
                if (Helper1.IsExist(sql))
                {
                    message = "login successfull";
                    Session["name"] = userName;
                    Response.Redirect("MainPage.aspx");
                }
                else
                {
                    Session["name"] = "Guest";
                    message = "login failed";
                }
            }
        }
    }
}