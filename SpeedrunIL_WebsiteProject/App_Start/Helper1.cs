using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;
namespace MasterPageDemo.App_Start
{
    public class DbUser
    {
        public string userId { get; set; }
        public string F_NAME { get; set; }
        public string L_NAME { get; set; }
        public string U_NAME { get; set; }
        public string PREFIX { get; set; }
        public string PHONE { get; set; }
        public string EMAIL { get; set; }
        public string GENDER { get; set; }
        public string PSW { get; set; }
        public string HOBBY1 { get; set; }
        public string HOBBY2 { get; set; }
        public string HOBBY3 { get; set; }
        public string HOBBY4 { get; set; }
        public string HOBBY5 { get; set; }
    }
    public class Helper1
    {
        public const string DBName = "Database1.mdf";   //Name of the MSSQL Database.
        public const string tblName = "usersTbl";      // Name of the user Table in the Database
        public const string conString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\"
                                        + DBName + ";Integrated Security=True";   // The Data Base is in the App_Data = |DataDirectory|

        public static bool IsExist(string sql)
        {

            // connect to DataBase
            SqlConnection conn = new SqlConnection(conString);
            conn.Open();
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();

            bool found = Convert.ToBoolean(data.Read());
            conn.Close();
            return found;
        }
        public static int ExecuteNonQuery(string SQL)
        {
            // התחברות למסד הנתונים
            SqlConnection con = new SqlConnection(conString);

            // בניית פקודת SQL
            SqlCommand cmd = new SqlCommand(SQL, con);

            // ביצוע השאילתא
            con.Open();
            int n = cmd.ExecuteNonQuery();
            con.Close();

            // return the number of rows affected
            return n;
        }

        public static DbUser GetUser(string userName)
        {

            // connect to DataBase
            SqlConnection conn = new SqlConnection(conString);
            conn.Open();
            string sql = "SELECT [userId], [F_NAME], [L_NAME], [U_NAME], [PREFIX], [PHONE], [EMAIL], [GENDER], [PSW], [HOBBY1], [HOBBY2], [HOBBY3], [HOBBY4], [HOBBY5] from [dbo].[usersTbl] ";
            sql += "WHERE U_NAME = '" + userName + "'";
            SqlCommand com = new SqlCommand(sql, conn);
            SqlDataReader data = com.ExecuteReader();

            if (!data.Read())
            {
                conn.Close();
                return null;
            }
                
            DbUser user = new DbUser();
            user.userId = data["userId"].ToString();
            user.F_NAME = data["F_NAME"].ToString();
            user.L_NAME = data["L_NAME"].ToString();
            user.U_NAME = data["U_NAME"].ToString();
            user.PREFIX = data["PREFIX"].ToString();
            user.PHONE = data["PHONE"].ToString();
            user.EMAIL = data["EMAIL"].ToString();
            user.GENDER = data["GENDER"].ToString();
            user.PSW = data["PSW"].ToString();
            user.HOBBY1 = data["HOBBY1"].ToString();
            user.HOBBY2 = data["HOBBY2"].ToString();
            user.HOBBY3 = data["HOBBY3"].ToString();
            user.HOBBY4 = data["HOBBY4"].ToString();
            user.HOBBY5 = data["HOBBY5"].ToString();

            conn.Close();
            return user;
        }
    }
}