using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Employee_Management_System_1
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Project_Click(object sender, EventArgs e)
        {
            Response.Redirect("Project.aspx");
        }

        protected void Emp_Details_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_Details.aspx");


        }

        protected void Emp_project_Click(object sender, EventArgs e)
        {
            Response.Redirect("Emp_project.aspx");

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Response.Redirect("Logout");

        }
    }
}