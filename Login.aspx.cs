using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Employee_Management_System_1
{
    public partial class Login : System.Web.UI.Page
    {
        string str = ConfigurationManager.ConnectionStrings["connection"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(str);
            SqlDataAdapter sda = new SqlDataAdapter("select * from users where EUserID='" + TextBox1.Text + "' and EPassword='" + TextBox2.Text + "'", con);
            DataTable dt = new DataTable();
            sda.Fill(dt);
            if(TextBox1.Text == "Admin" & TextBox2.Text == "123")
            { 
                Response.Redirect("Admin_Home.aspx");
            }
            else if(dt.Rows.Count == 1)
            {
                Session["EmployeeID"] = dt.Rows[0][0].ToString();
                Session["EmployeeName"] = dt.Rows[0][1].ToString();
                Session["EUserId"] = TextBox1.Text;
                Response.Redirect("Employee_Home.aspx");
            }
            else
            {
                Label1.ForeColor = System.Drawing.Color.Red;
                Label1.Text = "Login Failed....";
            }

        }
    }
}