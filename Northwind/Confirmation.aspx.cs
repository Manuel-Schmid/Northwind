using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsletterSubscription
{
    public partial class Confirmation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            lblFirstName.Text = Session["firstName"].ToString();
            lblLastName.Text = Session["lastName"].ToString();
            lblEmail.Text = Session["email"].ToString();
            lblBirthdate.Text = Session["birthdate"].ToString();
            lblInterest.Text = Session["interest"].ToString();
        }

        protected void btnConfirm_click(object sender, EventArgs e)
        {
            lblCongrats.Text = "Congratulations! You just subscribed to a random newsletter!";
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("~/NewsletterSubscription.aspx");
        }
    }
}