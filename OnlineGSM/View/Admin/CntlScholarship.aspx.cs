using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM.View.Admin
{
    public partial class CntlScholarship : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
            ShowScholarship();
        }

        //This method for solving the error which we are getting
        public override void VerifyRenderingInServerForm(Control control)
        {
            
        }

        private void ShowScholarship()
        {
            string Query = "select *from ScholarShpTbl";
            ScholarshipList.DataSource = Conn.GetData(Query);
            ScholarshipList.DataBind();
        }

        protected void SaveBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if(CountryNameTb.Value=="" || BgDepTb.Value=="" || DepTypeTb.Value=="")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }else
                {
                    string CountryName = CountryNameTb.Value;
                    string BgDept = BgDepTb.Value;
                    string DepType = DepTypeTb.Value;
                    string Status = StatusCb.SelectedValue;
                    string Query = "insert into ScholarShpTbl values('{0}','{1}','{2}','{3}')";
                    Query = String.Format(Query,CountryName, BgDept,DepType,Status);
                    Conn.SetData(Query);

                    ErrorMsg.InnerText = "Scholarship Added";
                }
            }
            catch(Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }

        }
       
        protected void ScholarshipList_SelectedIndexChanged(object sender, EventArgs e)
        {
            CountryNameTb.Value = ScholarshipList.SelectedRow.Cells[1].Text;
            BgDepTb.Value = ScholarshipList.SelectedRow.Cells[2].Text;
            DepTypeTb.Value = ScholarshipList.SelectedRow.Cells[3].Text;
                StatusCb.SelectedValue = ScholarshipList.SelectedRow.Cells[4].Text;

        }

        protected void DeleteBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CountryNameTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CountryName = CountryNameTb.Value;
                   
                    string Query = "Delete from ScholarShpTbl where CountryName='{0}'";
                    Query = String.Format(Query, CountryName);
                    Conn.SetData(Query);
                    ShowScholarship();

                    ErrorMsg.InnerText = "Scholarship Deleted";
                }
            }
            catch (Exception Ex)
            {
                //throw;
                ErrorMsg.InnerText = Ex.Message;
            }

        }

        protected void EditBtn_Click(object sender, EventArgs e)
        {
            try
            {
                if (CountryNameTb.Value == "" || BgDepTb.Value == "" || DepTypeTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string CountryName = CountryNameTb.Value;
                    string BgDept = BgDepTb.Value;
                    string DepType = DepTypeTb.Value;
                    string Status = StatusCb.SelectedValue;
                    string Query = "update ScholarShpTbl set BgDept ='{0}',DepType='{1}',Status='{2}' where CountryName='{3}'";
                    Query = String.Format(Query, BgDept, DepType, Status, CountryName);
                    Conn.SetData(Query);

                    ErrorMsg.InnerText = "Scholarship Edited";
                    ShowScholarship();
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