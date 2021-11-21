using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace NewsletterSubscription
{
    public partial class NewsletterSubscription : System.Web.UI.Page
    {
        protected override void OnInit(System.EventArgs e)
        {
            base.OnInit(e);

            //load Scriptmanager at Applicytion Start (jquery used in ASP-Validator-Controls)
            // https://msdn.microsoft.com/de-de/library/system.web.ui.scriptmanager.scriptresourcemapping(v=vs.110).aspx            
            //
            ScriptResourceDefinition myScriptResDef = new ScriptResourceDefinition();
            myScriptResDef.Path = "~/Scripts/jquery-1.4.2.min.js";
            myScriptResDef.DebugPath = "~/Scripts/jquery-1.4.2.js";
            myScriptResDef.CdnPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.min.js";
            myScriptResDef.CdnDebugPath = "http://ajax.microsoft.com/ajax/jQuery/jquery-1.4.2.js";
            ScriptManager.ScriptResourceMapping.AddDefinition("jquery", null, myScriptResDef);
        }

        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie userCookie = Request.Cookies.Get("userCookie");
            if (IsPostBack && userCookie != null && checkIfCookieIsSet())
            {
                string first = Request.Cookies["userCookie"]["firstName"];
                string last = Request.Cookies["userCookie"]["lastName"];
                string name = first + " " + last;
                litInfo.Text = "Hallo " + name + ", Bitte geben Sie Ihre persönlichen Daten an:";
            }
            else
            {
                litInfo.Text = "Bitte geben Sie Ihre persönlichen Daten an:";
            }

            if (Session["firstName"] != null)
            {
                txtFirstName.Text = Session["firstName"].ToString();
                txtLastName.Text = Session["lastName"].ToString();
                txtEmail.Text = Session["email"].ToString();
            }
        }

        private Boolean checkIfCookieIsSet()
        {
            return (Request.Cookies["userCookie"]["firstName"] != null && Request.Cookies["userCookie"]["lastName"] != null);
        }

        protected void txtFirstName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void txtLastName_TextChanged(object sender, EventArgs e)
        {

        }

        bool IsValidEmail(string email)
        {
            try
            {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch
            {
                return false;
            }
        }

        public void checkCheckBox(object o, ServerValidateEventArgs e)
        {
            if (checkAGB.Checked)
            {
                e.IsValid = true;
            }
            else
            {
                e.IsValid = false;
            }
        }

        protected void email_validator(object source, ServerValidateEventArgs args)
        {
            String value = args.Value.ToString();
            args.IsValid = args != null && IsValidEmail(value) && !String.IsNullOrEmpty(value) && (value != "");
        }

        protected void checkBoxValidator(object source, ServerValidateEventArgs args)
        {
            args.IsValid = checkAGB.Checked;
        }


        /*
            
        
        protected void DateCustVal_Validate(object source, ServerValidateEventArgs args)
        {

            
            
                

                
            
            if (txtBithdate.Text == null)
//                || txtBithdate.Text == new DateTime(0001, 1, 1, 0, 0, 0))
            {
                args.IsValid = false;
            }
            else
            {
                try
                {
                    
                    args.IsValid = true;
                }
                catch
                {
                    args.IsValid = false;
                }
            }
        }
        */

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (Page.IsValid)
            {
                // set cookie
                HttpCookie userCookie = new HttpCookie("userCookie");
                userCookie.Values.Add("firstName", txtFirstName.Text);
                userCookie.Values.Add("lastName", txtLastName.Text);
                Response.Cookies.Add(userCookie);

                // set session data
                Session["firstName"] = txtFirstName.Text;
                Session["lastName"] = txtLastName.Text;
                Session["email"] = txtEmail.Text;
                Session["birthdate"] = txtBirthdate.Text;
                Session["interest"] = radioInterests.SelectedItem.Value.ToString();

                Response.Redirect("~/RegionManagement.aspx");
            }
        }
    }
}