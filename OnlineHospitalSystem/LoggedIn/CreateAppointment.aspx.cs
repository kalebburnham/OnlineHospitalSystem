using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class LoggedIn_Appointments : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataEntities db = new DataEntities();

        var DoctorID = (from Doctors in db.Doctors where Doctors.Name == DropDownList3.Text select Doctors.Id).First();

        var PatientID = (from Patients in db.Patients where Patients.Name == User.Identity.Name select Patients.Id).First();

        var appointment = db.Appointments.Create();

        appointment.Id = Math.Abs((int)DateTime.Now.Ticks);

        appointment.Date = DateTime.ParseExact(TextBox1.Text, "d-M-yyyy", null).Date;
       // appointment.Time = DateTime.ParseExact(TextBox2.Text, "hh:mm tt" ,null).TimeOfDay;

        appointment.Description = TextBox3.Text;

        //appointment.City = DropDownList1.Text;

        //appointment.Hospital = DropDownList2.Text;

        appointment.DoctorID = DoctorID;
        appointment.PatientID = PatientID;

        db.Appointments.Add(appointment);



       db.SaveChanges();
    }
}