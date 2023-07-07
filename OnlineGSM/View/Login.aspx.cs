using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM.View
{
    public partial class Login : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            if(AdminRadio.Checked)
            {
               if(UserNameTb.Value =="Admin" && PasswordTb.Value=="Admin")
                {
                   
                    Response.Redirect("Admin/CntlScholarship.aspx");
                }
                else
                {
                    InfoMsg.InnerText = "Invalid Admin";
                }



            }else
            {
                InfoMsg.InnerText = "Invalid Admin";
            }
        }
    }
}