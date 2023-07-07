using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM.View.Admin
{
    public partial class CntlStudent : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowStudent();
        }

        private void ShowStudent()
        {
            string Query = "select *from StudentTbl";
            StudentList.DataSource = Conn.GetData(Query);
            StudentList.DataBind();
        }


        //This method for solving the error which we are getting
        public override void VerifyRenderingInServerForm(Control control)
        {

        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
           
        }

        protected void SaveBtn_Click1(object sender, EventArgs e)
        {
            try
            {
                if (StudentNameTb.Value == "" || StudentPhoneTb.Value == "" || StudentPassTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string StdName = StudentNameTb.Value;
                    string StdAdd = StudentAddTb.Value;
                    string StdPhone = StudentPhoneTb.Value;
                    string StdPassword = StudentPassTb.Value;
                    string Query = "insert into StudentTbl values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query, StdName, StdAdd, StdPhone, StdPassword);
                    Conn.SetData(Query);
                    ShowStudent();
                    ErrorMsg.InnerText = "Scholarship Added";

                }
            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}