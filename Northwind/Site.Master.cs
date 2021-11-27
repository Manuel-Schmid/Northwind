using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Northwind
{
    public partial class Site : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ( Session["firstname"] != null)
            {
                string firstname = Session["firstname"].ToString();
                string lastname = Session["lastname"].ToString();
                string classe = Session["class"].ToString();
                userinfo.Text = firstname + " " + lastname + " " + classe;


            }

            
            
        }

        private Boolean checkIfCookieIsSet()
        {
            return (Request.Cookies["userCookie"]["firstName"] != null && Request.Cookies["userCookie"]["lastName"] != null && Request.Cookies["userCookie"]["class"] != null);
        }
    }
}