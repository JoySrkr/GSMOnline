using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace OnlineGSM
{
    public partial class StudentReg : System.Web.UI.Page
    {
        Models.Functions Conn;
        protected void Page_Load(object sender, EventArgs e)
        {
            Conn = new Models.Functions();
        }

       



        protected void SaveBtn_Click(object sender, EventArgs e)
        {

            try
            {
                if (EmailTb.Value == "" || FirstNameTb.Value == "" || PasswordTb.Value == "")
                {
                    ErrorMsg.InnerText = "Missing Information";
                }
                else
                {
                    string FristName = FirstNameTb.Value;
                    string LastName = LastNameTb.Value;
                    string Email = EmailTb.Value;
                    string Password = PasswordTb.Value;
                    string ConfPass = ConfPassTb.Value;
                    string Nationality = NationalityTb.Value;
                    string Phone = PhoneNumberTb.Value;



                    if (PasswordTb.Value == ConfPassTb.Value)
                    {
                        string Query = "insert into StdReg values('{0}','{1}','{2}','{3}','{4}','{5}','{6}')";
                        Query = String.Format(Query, FristName, LastName, Email, Password, ConfPass, Nationality, Phone);
                        Conn.SetData(Query);

                        ErrorMsg.InnerText = "Account Created Successfully";
                    }

                    else
                    { 
                        ErrorMsg.InnerText = "Password Does not Match";
                    }

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