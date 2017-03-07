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
    public partial class customerdetails : System.Web.UI.Page
    {
       static string id ,ID;
        SqlConnection con = new SqlConnection("Data Source=SHIVASAI;Initial Catalog=pizza_db;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {
            id = Request.Cookies["cid"].Value; 
            
        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            //con.Open();

            //SqlDataAdapter sa = new SqlDataAdapter("INSERT INTO tblcustomer(first_name,last_name,address,city,postal,phone1,phone2,email,CID) VALUES( ' " + txtfname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtpostal.Text + "','" + txtphone1.Text + "','" + txtphone2.Text + "','" + txtemail.Text + "','" + txtcid.Text + "' )", con);           
            //sa.SelectCommand.ExecuteNonQuery();
            ////int cid = sa. ;
            //con.Close();
            //Response.Redirect("payment details.aspx");
        }

        protected void btnback_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }

        protected void btnclear_Click(object sender, EventArgs e)
        {
            txtfname.Text = "";
            txtlname.Text = "";
            txtaddress.Text = "";
            txtcity.Text = "";
            txtpostal.Text = "";
            txtphone1.Text = "";
            txtphone2.Text = "";
            txtemail.Text = "";
            //txtcid.Text = "";
        }
        //public DataTable bind()
        //{
        //    con.Open();
        //    DataTable ljbtle = new DataTable();
        //    DataSet ds = new DataSet();

        //    SqlCommand cmd = new SqlCommand("INSERT INTO tblcustomer(first_name,last_name,address,city,postal,phone1,phone2,email)  VALUES('" + txtfname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtpostal.Text + "','" + txtphone1.Text + "','" + txtphone2.Text + "','" + txtemail.Text + "')", con);
        //    SqlDataAdapter da = new SqlDataAdapter(cmd);
           
        //    da.Fill(ds);

        //    return ds.Tables[0];
        //    con.Close();
        //}

        protected void btnnext_Click1(object sender, EventArgs e)
        {
            con.Open();

            SqlDataAdapter sa = new SqlDataAdapter("INSERT INTO tblcustomer(first_name,last_name,address,city,postal,phone1,phone2,email,CID) VALUES('" + txtfname.Text + "','" + txtlname.Text + "','" + txtaddress.Text + "','" + txtcity.Text + "','" + txtpostal.Text + "','" + txtphone1.Text + "','" + txtphone2.Text + "','" + txtemail.Text + "','" + id + "')", con);
            sa.SelectCommand.ExecuteNonQuery();
           // Int32 newId = (Int32).ExecuteScalar();
            con.Close();
            string str1 = "SELECT MAX(ID) FROM tblcustomer";


            SqlCommand Comm1 = new SqlCommand(str1, con);
            con.Open();
            SqlDataReader DR1 = Comm1.ExecuteReader();
            if (DR1.Read())
            {
                ID = DR1.GetValue(0).ToString();
            }
            con.Close();
            Response.Cookies["id"].Value = ID;
            
    //        string insertSql =
    //"INSERT INTO tblcustomer(first_name,last_name,address,city,postal,phone1,phone2,email) OUTPUT INSERTED.CID VALUES(@first_name,@last_name,@address, @city,@postal,@phone1,@phone2,@email)";
            

            //using (SqlConnection myConnection = new SqlConnection(myConnectionString))
            //{

          //  bind();
               

                //SqlCommand myCommand = new SqlCommand(insertSql, con);

                //myCommand.Parameters.AddWithValue("@first_name", txtfname.Text);
                //myCommand.Parameters.AddWithValue("@last_name", txtlname.Text);
                //myCommand.Parameters.AddWithValue("@address", txtaddress.Text);
                //myCommand.Parameters.AddWithValue("@city", txtcity.Text);
                //myCommand.Parameters.AddWithValue("@postal", txtpostal.Text);
                //myCommand.Parameters.AddWithValue("@phone1", txtphone1.Text);
                //myCommand.Parameters.AddWithValue("@phone2", txtphone2.Text);
                //myCommand.Parameters.AddWithValue("@email", txtemail.Text); 
               
                //myCommand.ExecuteNonQuery();

                //int cid = (myCommand.ExecuteScalar().ToString());
                //Response.Write(cid);
                con.Close();
            //}
            Response.Redirect("payment details.aspx");
        }

        protected void txtcid_TextChanged(object sender, EventArgs e)
        {

        }
    }
}