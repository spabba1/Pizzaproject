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
    public partial class confirmpayment : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHIVASAI;Initial Catalog=pizza_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            retrive();
            //if (!IsPostBack)
            //{
            //    retrive();

            //    // GridView1.Visible = true;
            //}
        }

        protected void btncancel2_Click(object sender, EventArgs e)
        {
            
            Response.Redirect("payment details.aspx");
        }
        public void retrive()
        {
            using (SqlCommand cmd = new SqlCommand("select tblcustomer.ID,tblcustomize.CID,tblpayment.PID, tblcustomer.first_name,tblcustomer.last_name,tblcustomer.address,tblcustomer.city,tblcustomer.postal,tblcustomer.phone1,tblcustomer.email,tblpayment.nameonthecard,tblpayment.cardnumber,tblpayment.cardtype,tblpayment.cvv,tblpayment.expdt,tblcustomize.pizzasize,tblcustomize.qty,tblcustomize.totalprice FROM tblcustomize INNER JOIN tblcustomer ON tblcustomer.CID=tblcustomize.CID INNER JOIN tblpayment ON tblcustomer.ID=tblpayment.ID "))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        GridView1.DataSource = dt;
                        GridView1.DataBind();
                    }
                }
            }
            //con.Open();
            //SqlDataAdapter sa = new SqlDataAdapter("select tblcustomer.ID,tblcustomize.CID,tblpayment.PID, tblcustomer.first_name,tblcustomer.last_name,tblcustomer.address,tblcustomer.city,tblcustomer.postal,tblcustomer.phone1,tblcustomer.email,tblpayment.nameonthecard,tblpayment.cardnumber,tblpayment.cardtype,tblpayment.cvv,tblpayment.expdt,tblcustomize.pizzasize,tblcustomize.qty,tblcustomize.totalprice FROM tblcustomize INNER JOIN tblcustomer ON tblcustomer.CID=tblcustomize.CID INNER JOIN tblpayment ON tblcustomer.ID=tblpayment.ID ", con);
            //DataTable dt = new DataTable();
            //sa.Fill(dt);
            //con.Close();
        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            //con.Open();
            //SqlDataAdapter sa = new SqlDataAdapter("select * from tblretrive ", con);
            //DataTable dt = new DataTable();
            //sa.Fill(dt);
            //GridView1.DataSource = dt;
            //GridView1.DataBind();
            //con.Close();
            Response.Redirect("Mainpage.aspx");
        }
    }
}