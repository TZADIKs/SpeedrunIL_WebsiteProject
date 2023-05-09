using MasterPageDemo.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SpeedrunIL_WebsiteProject.aspx
{
    public partial class Profile : System.Web.UI.Page
    {
        public string msg = "";
        public DbUser UserToShow = new DbUser();
        protected void Page_Load(object sender, EventArgs e)
        {
            ShowProfile.Visible = true;
            if (Request["username"] == "Guest" || Request["username"] == "")
            {
                
                msg = "You are not logged in, log in to view profile";
                ShowProfile.Visible = false;
            }
            else
            {
                ShowProfile.Visible = true;
                DbUser user = Helper1.GetUser(Request["username"]);
                if (user == null)
                {
                    msg = "User not found [Error 504]";
                    ShowProfile.Visible = false;
                }
                else
                    UserToShow = user;
            }
            ShowMsg.Visible = !ShowProfile.Visible;
            if (UserToShow.HOBBY1 == "True")
                ShowMC116.Visible = true;
            else
                ShowMC116.Visible = false;
            if (UserToShow.HOBBY2 == "True")
                ShowMC17.Visible = true;
            else
                ShowMC17.Visible = false;
            if (UserToShow.HOBBY3 == "True")
                ShowMCssg.Visible = true;
            else
                ShowMCssg.Visible = false;
            if (UserToShow.HOBBY4 == "True")
                ShowRB.Visible = true;
            else
                ShowRB.Visible = false;
        }
    }
}