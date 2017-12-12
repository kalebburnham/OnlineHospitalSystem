using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoggedIn_Messaging : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        DataEntities db = new DataEntities();

        bool isDoctor = (from doctor in db.Doctors
                         where doctor.UserName == User.Identity.Name
                         select doctor).Any();

        if (isDoctor)
        {
            DropDownList1.DataSourceID = "Patients";
        } else
        {
            DropDownList1.DataSourceID = "Doctors";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataEntities db = new DataEntities();

        var message = db.Emails.Create();

        message.Date = DateTime.Now.ToShortDateString();
        message.Time = DateTime.Now.TimeOfDay;
        message.Text = TextBox1.Text;
        message.Id = Math.Abs((int) DateTime.Now.Ticks);
        message.TO = DropDownList1.Text;
        message.FROM = (string) Session["Name"];
        
        db.Emails.Add(message);
        db.SaveChanges();

        TextBox1.Text = " ";
    }
}