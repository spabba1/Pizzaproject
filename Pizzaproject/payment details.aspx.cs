using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Pizzaproject
{
    public partial class payment_details : System.Web.UI.Page
    {

        static string id1;

        SqlConnection con = new SqlConnection("Data Source=SHIVASAI;Initial Catalog=pizza_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            id1 = Request.Cookies["id"].Value;
        }

        protected void lblcancel_Click(object sender, EventArgs e)
        {
            txtnamecard.Text = "";
            txtcardnumber.Text = "";
            txtcvv.Text = "";
            txtexpdt.Text = "";
            
        }

        protected void btnhome_Click(object sender, EventArgs e)
        {
            txtnamecard.Text = "";
            txtcardnumber.Text = "";
            txtcvv.Text = "";
            txtexpdt.Text = "";
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnproceedpayment_Click(object sender, EventArgs e)
        {
            con.Open();

            SqlDataAdapter sa = new SqlDataAdapter("INSERT INTO tblpayment(nameonthecard,cardtype,cardnumber,cvv,expdt,ID)VALUES('" + txtnamecard.Text + "','" + DropDownList1.Text + "','" + txtcardnumber.Text + "','" + txtcvv.Text + "','" + txtexpdt.Text + "','" + id1 + "')", con);

            sa.SelectCommand.ExecuteNonQuery();
            con.Close();
            Response.Redirect("confirmpayment.aspx");
        }
       
    }
}