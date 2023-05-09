using MasterPageDemo.App_Start;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace AssiDemo4.Pages
{
    public partial class Register : System.Web.UI.Page
    {
        public string insertSql = "";
        public string msg = "";
        protected void Page_Load(object sender, EventArgs e)
        {
            string fName, lastName, userName, prefix, phone, email, gender, psw;
            string hobby;
            bool[] hobbyArr = new bool[5];
            if (IsPostBack)
            {
                fName = Request.Form["fName"];
                lastName = Request.Form["lName"];
                userName = Request.Form["uName"];
                prefix = Request.Form["prefix"];
                phone = Request.Form["phone"];
                email = Request.Form["uEmail"];
                gender = Request.Form["gender"];
                psw = Request.Form["pw"];
                hobby = Request.Form["hobby"];
                if (hobby != null)
                {
                    for (int i = 0; i < hobbyArr.Length; i++)
                    {
                        hobbyArr[i] = hobby.IndexOf((i + 1).ToString()) != -1;
                    }
                }
                else
                {
                    for (int i = 0; i < hobbyArr.Length; i++)
                    {
                        hobbyArr[i] = false;
                    }
                }
                insertSql = "insert into usersTbl (F_NAME, L_NAME, U_NAME, PREFIX, PHONE, EMAIL, GENDER, PSW, HOBBY1, HOBBY2, HOBBY3, HOBBY4, HOBBY5) ";
                insertSql += "values ";
                insertSql += $"('{fName}',";
                insertSql += $"'{lastName}',";
                insertSql += $"'{userName}',";
                insertSql += $"'{prefix}',";
                insertSql += $"'{phone}',";
                insertSql += $"'{email}',";
                insertSql += $"'{gender}',";
                insertSql += $"'{psw}',";
                insertSql += $"'{hobbyArr[0]}',";
                insertSql += $"'{hobbyArr[1]}',";
                insertSql += $"'{hobbyArr[2]}',";
                insertSql += $"'{hobbyArr[3]}',";
                insertSql += $"'{hobbyArr[4]}')";
                
                int num = Helper1.ExecuteNonQuery(insertSql);
                if (num > 0)
                {
                    msg = "successfull registration";
                    Response.Redirect("Login.aspx");
                }
                else
                {
                    msg = "failed registration";
                }
            }
        }
    }
}