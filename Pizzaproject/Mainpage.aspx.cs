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
    public partial class Mainpage : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection("Data Source=SHIVASAI;Initial Catalog=pizza_db;Integrated Security=True");
        string g, CID;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                Panel1.Visible = false;
                btnok.Visible = true;
                btnclear.Visible = false;
                btnnext.Visible = false;
            }
        }

        protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btnnext_Click(object sender, EventArgs e)
        {
            //Response.Redirect("customerdetails.aspx");
           // string g;
            if (rbtnsmall.Checked)
            {
                g = rbtnsmall.Text;


            }
            else if (rbnmedium.Checked)
            {
                g = rbnmedium.Text;
            }
            else if(rbtnlarge.Checked)
            {

                g = rbtnlarge.Text;
            }
            con.Open();

            SqlDataAdapter sa = new SqlDataAdapter("INSERT INTO tblcustomize(pizzasize,qty,totalprice)VALUES('" + g + "','" + txtqty.Text + "','" + lblprice.Text + "')", con);
            
            //if()
            //SqlDataAdapter sa1 = new SqlDataAdapter("INSERT INTO tbltoppings(veggies,meat)VALUES('" + g + "','" + txtqty.Text + "','" + lblprice.Text + "')", con);
            sa.SelectCommand.ExecuteNonQuery();
            
            con.Close();
            

            string str = "SELECT MAX(CID) FROM tblcustomize" ;


            SqlCommand Comm1 = new SqlCommand(str, con);
            con.Open();
            SqlDataReader DR1 = Comm1.ExecuteReader();
            if (DR1.Read())
            {
                CID = DR1.GetValue(0).ToString();
            }
            con.Close();
            Response.Cookies["cid"].Value = CID;
           Response.Redirect("customerdetails.aspx");
            //MessageBox.Show("entered successfully");
            
        }

        protected void btnok_Click(object sender, EventArgs e)
        {
            //if (rbtnsmall.Checked)
            //{
            //    g = rbtnsmall.Text;


            //}
            //else if (rbnmedium.Checked)
            //{
            //    g = rbnmedium.Text;
            //}
            //else if (rbtnlarge.Checked)
            //{

            //    g = rbtnlarge.Text;
            //}
            //con.Open();

            //SqlDataAdapter sa = new SqlDataAdapter("INSERT INTO tblcustomize(pizzasize,qty,totalprice)VALUES('" + g + "','" + txtqty.Text + "','" + lblprice.Text + "')", con);
            ////if()
            ////SqlDataAdapter sa1 = new SqlDataAdapter("INSERT INTO tbltoppings(veggies,meat)VALUES('" + g + "','" + txtqty.Text + "','" + lblprice.Text + "')", con);
            //sa.SelectCommand.ExecuteNonQuery();
            //con.Close();
        }

        protected void rbtnsmall_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void rbtnlarge_CheckedChanged(object sender, EventArgs e)
        {

        }

        protected void btngo_Click(object sender, EventArgs e)
        {
            int a = 0, b = 0;
            double sum, sum1, total, tax;
            if (rbtnsmall.Checked)
            {
                if (chkbxchicken.Checked)
                {
                    a++;
                }
                if (chkbxbeef.Checked)
                {
                    a++;
                }
                if (chkbxham.Checked)
                {
                    a++;
                }
                if (chkbxpepperoni.Checked)
                {
                    a++;
                }
                sum = a * (1.25);
                if (chkbxtomato.Checked)
                {
                    b++;
                }
                if (chkbxmushrooms.Checked)
                {
                    b++;
                }
                if (chkbxonions.Checked)
                {
                    b++;
                }
                if (chkbxpineapple.Checked)
                {
                    b++;
                }
                if (chkbxbellpeppers.Checked)
                {
                    b++;
                }
                if (chkbxspinach.Checked)
                {
                    b++;
                }
                if (chkjalapenos.Checked)
                {
                    b++;
                }
                sum1 = b * (0.60);
                total = sum + sum1;
                tax = (total * 10) / 100;
                lblprice.Text = Convert.ToString((7.99 + total) * Convert.ToInt32(txtqty.Text) + tax);

            }
            if (rbnmedium.Checked)
            {
                if (chkbxchicken.Checked)
                {
                    a++;
                }
                if (chkbxbeef.Checked)
                {
                    a++;
                }
                if (chkbxham.Checked)
                {
                    a++;
                }
                if (chkbxpepperoni.Checked)
                {
                    a++;
                }
                sum = a * (1.25);
                if (chkbxtomato.Checked)
                {
                    b++;
                }
                if (chkbxmushrooms.Checked)
                {
                    b++;
                }
                if (chkbxonions.Checked)
                {
                    b++;
                }
                if (chkbxpineapple.Checked)
                {
                    b++;
                }
                if (chkbxbellpeppers.Checked)
                {
                    b++;
                }
                if (chkbxspinach.Checked)
                {
                    b++;
                }
                if (chkjalapenos.Checked)
                {
                    b++;
                }
                sum1 = b * (0.60);
                total = sum + sum1;
                tax = (total * 10) / 100;
                lblprice.Text = Convert.ToString((15.99 + total) * Convert.ToInt32(txtqty.Text) + tax);

            }
            if (rbtnlarge.Checked)
            {
                if (chkbxchicken.Checked)
                {
                    a++;
                }
                if (chkbxbeef.Checked)
                {
                    a++;
                }
                if (chkbxham.Checked)
                {
                    a++;
                }
                if (chkbxpepperoni.Checked)
                {
                    a++;
                }
                sum = a * (1.25);
                if (chkbxtomato.Checked)
                {
                    b++;
                }
                if (chkbxmushrooms.Checked)
                {
                    b++;
                }
                if (chkbxonions.Checked)
                {
                    b++;
                }
                if (chkbxpineapple.Checked)
                {
                    b++;
                }
                if (chkbxbellpeppers.Checked)
                {
                    b++;
                }
                if (chkbxspinach.Checked)
                {
                    b++;
                }
                if (chkjalapenos.Checked)
                {
                    b++;
                }
                sum1 = b * (0.60);
                total = sum + sum1;
                tax = (total * 10) / 100;
                lblprice.Text = Convert.ToString((10.99 + total) * Convert.ToInt32(txtqty.Text) + tax);
            }
            Panel1.Visible = true;
            Panel1.Focus();
            btnnext.Visible = true;
            btnclear.Visible = true;
        }

        protected void txtqty_TextChanged(object sender, EventArgs e)
        {

        }
    }
}