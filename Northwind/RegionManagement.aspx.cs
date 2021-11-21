using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Northwind
{
    public partial class RegionManagement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {

        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {

        }

        protected void btnBigSmall_Click(object sender, EventArgs e)
        {

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            DataTable tblRegions = new DataTable();

            //using (SqlConnection con = new SqlConnection(@"Data Source=NOTEBOOKMANY\MSSQLSERVER2019;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False"))
            //using (SqlCommand cmd = new SqlCommand("spAllRegions", con))
            SqlConnectionStringBuilder conBuilder = new SqlConnectionStringBuilder();
            conBuilder.DataSource = @"NOTEBOOKMANY\MSSQLSERVER2019";
            //;Integrated Security=True;Connect Timeout=30;Encrypt=False;TrustServerCertificate=False;ApplicationIntent=ReadWrite;MultiSubnetFailover=False";
            conBuilder.InitialCatalog = "Northwind";
            conBuilder.IntegratedSecurity = true;

            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spAllRegions", con);

                cmd.CommandType = CommandType.StoredProcedure;

                //cmd.Parameters.Add(new SqlParameter("@EmpID", SqlDbType.Int));
                //cmd.Parameters["@EmpID"].Value = 42;

                SqlDataAdapter dap = new SqlDataAdapter(cmd);

                dap.Fill(tblRegions);
            

            RegionsGrid.DataSource = tblRegions;
            RegionsGrid.DataBind();
        }
    }
}