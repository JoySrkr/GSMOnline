using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM
{
    public partial class StudentEgibility : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
           // ShowProgram();
        }
        private void ShowProgram()
        {

            try
            {
                if (GradingSchTb.Value == "" || TestScoreTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string MinCGPA = GradingSchTb.Value;
                    string MinEngLanScore = TestScoreTb.Value;
                    //string Query = "select *from ProgEgibl where MinCGPA='{3}'";

                    //string Query = "select * from ProgEgibl where MinCGPA like '" + GradingSchTb.Value + "%'"; //Original

                    string Query = "select * from ProgEgibl where MinCGPA like '" + GradingSchTb.Value + "%' OR MinEngLanScore like '"+ TestScoreTb.Value + "%'  ";

                    // string Query = "select *from ProgEgibl";
                    // Query = String.Format(Query, MinCGPA);  //as your wish(Dileo hobo na dileo hobe)
                    Query = String.Format(Query);
                    Conn.SetData(Query);

                   // ErrorMsg.InnerText = "Program Finded";
                   // ShowScholarship();

                    ProgramList.DataSource = Conn.GetData(Query);
                    ProgramList.DataBind();
                }
            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }




           // string Query = "select *from ProgEgibl";

           


        }

        protected void ApplyBtn_Click(object sender, EventArgs e)
        {
            ShowProgram();
        }
    }
}