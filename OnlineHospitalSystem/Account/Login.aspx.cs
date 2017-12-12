using Microsoft.AspNet.Identity;
using Microsoft.Owin.Security;
using System;
using System.Web;
using System.Web.UI;
using OnlineHospitalSystem;
using System.Linq;

public partial class Account_Login : Page
{
        protected void Page_Load(object sender, EventArgs e)
        {
            
            
            
        }

        protected void LogIn(object sender, EventArgs e)
        {

            DataEntities db = new DataEntities();
            

            if (IsValid)
            {
                var manager = new UserManager();
                ApplicationUser user = manager.Find(UserName.Text, Password.Text);
                if (user != null)
                {
                    IdentityHelper.SignIn(manager, user, RememberMe.Checked);
                    

                    bool isDoctor = (from doctor in db.Doctors
                                    where doctor.UserName == user.UserName
                                    select doctor).Any();
                                
                    if (isDoctor)
                    {
                        var fullName = (from doctor in db.Doctors
                                        where doctor.UserName == user.UserName
                                        select doctor.Name).First();
                        Session["Name"] = fullName;
                        Response.Redirect("../LoggedIn/Doctor.aspx");
                        
                    } else
                    {
                        var fullName = (from patient in db.Patients
                                        where patient.Username == user.UserName
                                        select patient.Name).First();
                        Session["Name"] = fullName;
                        Response.Redirect("../LoggedIn/Patient.aspx");
                    }
                }
                else
                {
                    FailureText.Text = "Invalid username or password.";
                    ErrorMessage.Visible = true;
                }
            }
        }
}