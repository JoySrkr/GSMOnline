using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM
{
    public partial class homelogin2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            if (StdRadio.Checked)
            {
                if (UserNameTb.Value == "Admin" && PasswordTb.Value == "Admin")
                {

                    Response.Redirect("ScholarshipListForStudentWatch.aspx");

                }
                else
                {
                    InfoMsg.InnerText = "Invalid Admin";
                }



            }
            else
            {
                InfoMsg.InnerText = "Invalid Admin";
            }
        }
    }
}