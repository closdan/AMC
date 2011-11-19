using System;
using System.Collections;
using System.Configuration;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Data.Sql;
using System.Data.SqlClient;

namespace AMC
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ckeck_Click(Object sender,EventArgs e) {
            int i = userNameValidate();
        }

        private int userNameValidate() {
            SqlConnection conn = new SqlConnection(ConfigurationManager.AppSettings["DBConnectionString"]);
            SqlCommand selectCmd = new SqlCommand("select * from systemuser where systemuserid='"+userid.Text.Trim()+"'",conn);
            int i = 0;
            try
            {
                conn.Open();
                SqlDataReader sdr = selectCmd.ExecuteReader();
                if (sdr.Read())
                {
                    i = 1;
                    lblmessage.Text = "此用户名已存在，请输入其他用户名！";
                }
                else
                {
                    lblmessage.Text = "此用户名可用！";
                }
            }
            catch (System.Exception ee)
            {
                Response.Write("<script language=javascript>alert('" + ee.Message.ToString() + "')</script>");
            }
            finally
            {
                conn.Close();
            }
            return i;
        }
    }
}
