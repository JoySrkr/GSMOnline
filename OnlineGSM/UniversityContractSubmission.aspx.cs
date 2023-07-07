using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM
{
    public partial class UniversityContractSubmission : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowUniversityList();
        }


        private void ShowUniversityList()
        {
            string Query = "select *from ProgEgibl";
            UniversityList.DataSource = Conn.GetData(Query);
            UniversityList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(UniNameTb.Value == "" || DepTypeTb.Value == "" || MinCGPATb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }

                else
                {
                    string  Degree= DegreeTb.SelectedValue;
                    string DeptType = DepTypeTb.Value;
                    string UniName = UniNameTb.Value;
                    string Address = AddressTb.Value;
                    string GrossTution = GrossTutionTb.Value;
                    string ApplicationFee = ApplicationFeeTb.Value;
                    string ApplyLink = ApplyLinkTb.Value;
                    string MinCGPA = MinCGPATb.Value;
                    string MinEngLanScore = MinEngLanScoreTb.Value;     
                    string Query = "insert into ProgEgibl values('{0}','{1}','{2}','{3}','{4}','{5}','{6}','{7}','{8}')";
                    Query = String.Format(Query, Degree, DeptType, UniName, Address, GrossTution, ApplicationFee, ApplyLink, MinCGPA, MinEngLanScore);
                    Conn.SetData(Query);
                    ShowUniversityList();
                    ErrorMsg.InnerText = "Scholarship Added";
                }






            }catch(Exception Ex)
            {
                ErrorMsg.InnerText = Ex.Message;
            }
        }
    }
}