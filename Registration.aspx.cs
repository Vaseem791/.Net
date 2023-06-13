using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Drawing;

public partial class Registration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            lblmsg.Text = "";
        }
    }
    public void Cleartext()
    {
        txtfullname.Text = "";
        txtusername.Text = "";
        txtemail.Text = "";
        txtphonenumber.Text = "";
        txtaddress.Text = "";
    }
    protected void btnsubmit_Click(object sender, EventArgs e)
    {
        Connection Connect = new Connection();
        if (txtpassword.Text == txtpasswordconfirm.Text)
        {
        string query = "insert into registration values(@name,@email,@phonenumber,@address,@gender)";
        SqlCommand cmd = new SqlCommand(query, Connect.con);
        cmd.Parameters.AddWithValue("@name", txtfullname.Text);
        cmd.Parameters.AddWithValue("@email", txtemail.Text);
        cmd.Parameters.AddWithValue("@phonenumber", txtphonenumber.Text);
        cmd.Parameters.AddWithValue("@address", txtaddress.Text);
        if (rbtnmale.Checked == true) {
            cmd.Parameters.AddWithValue("@gender", "Male");
        }
        else if (rbtnfemale.Checked == true) {
            cmd.Parameters.AddWithValue("@gender", "Female");
        }
        else {
            cmd.Parameters.AddWithValue("@gender", "Prefer not to say");
        }

        int i = cmd.ExecuteNonQuery();
        if (i > 0) {
            Cleartext();
            lblmsg.Text = "REGISTER SUCCESSFULLY";
            lblmsg.ForeColor = Color.Green;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script>alert('Registration Successfully')</script>");
        }
    }
        else
        {
            lblmsg.Text = "PASSWORD DOESN'T MATCH";
            lblmsg.ForeColor = Color.Red;
            ClientScript.RegisterStartupScript(Page.GetType(), "validation", "<script>alert('Password doesn't match')</script>");
        }
    }
    
}