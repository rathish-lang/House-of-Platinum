using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PlatinumShop
{
    public partial class contact : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ScriptManager.ScriptResourceMapping.AddDefinition("jquery", new ScriptResourceDefinition
                {
                    Path = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js",
                    DebugPath = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js",
                    CdnPath = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js",
                    CdnDebugPath = "https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.js"
                });
            }
        }



        protected void btn_send_Click(object sender, EventArgs e)
        {
           
                string projectConnection = ConfigurationManager.ConnectionStrings["RathishConnection"].ConnectionString;
                SqlConnection con = new SqlConnection(projectConnection);
                con.Open();

                SqlCommand cmd = new SqlCommand("sp_contact", con);
                cmd.CommandType = CommandType.StoredProcedure;

                SqlParameter p1 = new SqlParameter("@uname", SqlDbType.VarChar);
                cmd.Parameters.Add(p1).Value = txt_name.Text.Trim();

                SqlParameter p2 = new SqlParameter("@email", SqlDbType.VarChar);
                cmd.Parameters.Add(p2).Value = txt_email.Text.Trim();

                SqlParameter p3 = new SqlParameter("@phone", SqlDbType.VarChar);
                cmd.Parameters.Add(p3).Value = txt_phone.Text.Trim();

                SqlParameter p4 = new SqlParameter("@msg", SqlDbType.VarChar);
                cmd.Parameters.Add(p4).Value = txt_message.Text.Trim();
                int i = cmd.ExecuteNonQuery();
                con.Close();
            

        }
     
        
    }
          
}