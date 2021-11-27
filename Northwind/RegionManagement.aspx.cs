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
        readonly SqlConnectionStringBuilder conBuilder = new SqlConnectionStringBuilder();
        protected void Page_Load(object sender, EventArgs e)
        {
            
            conBuilder.DataSource = @"NOTEBOOKMANY\MSSQLSERVER2019";
            conBuilder.InitialCatalog = "Northwind";
            conBuilder.IntegratedSecurity = true;
        }

        protected void btnAdd_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spInsertRegion", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@RegionDescription", SqlDbType.VarChar));
            cmd.Parameters["@RegionDescription"].Value = txtRegion.Text;

            cmd.ExecuteNonQuery();
            con.Close();

            btnSelect_Click(sender, e);
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spDeleteRegion", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@RegionDescription", SqlDbType.VarChar));
            cmd.Parameters["@RegionDescription"].Value = txtRegion.Text;

            int deletedRowsCount = cmd.ExecuteNonQuery();

            // print when no effects

            con.Close();

            btnSelect_Click(sender, e);
        }

        protected void btnBigSmall_Click(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spSelectRegion", con);
            cmd.Parameters.Add(new SqlParameter("@RegionDescription", SqlDbType.VarChar));
            cmd.Parameters["@RegionDescription"].Value = txtRegion.Text;

            cmd.CommandType = CommandType.StoredProcedure;

            DataSet ds = new DataSet();
            SqlDataAdapter dap = new SqlDataAdapter(cmd);

            dap.Fill(ds);

            int regionID = (int)ds.Tables[0].Rows[0]["RegionID"];
            string regionDescription = ds.Tables[0].Rows[0]["RegionDescription"].ToString();

            string newRegionDescription = new string(
                regionDescription.Select(c => char.IsLetter(c) ? (char.IsUpper(c) ?
                                              char.ToLower(c) : char.ToUpper(c)) : c).ToArray());

            updateRegion(regionID, newRegionDescription);

            con.Close();

            btnSelect_Click(sender, e);

        }

        protected void btnSelect_Click(object sender, EventArgs e)
        {
            DataTable tblRegions = new DataTable();

            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spSelectAllRegions", con);

            cmd.CommandType = CommandType.StoredProcedure;

            SqlDataAdapter dap = new SqlDataAdapter(cmd);

            dap.Fill(tblRegions);

            RegionsGrid.DataSource = tblRegions;
            RegionsGrid.DataBind();

            con.Close();
        }

        private void updateRegion(int regionID, string newRegionDescription)
        {
            SqlConnection con = new SqlConnection();
            con.ConnectionString = conBuilder.ConnectionString;
            con.Open();

            SqlCommand cmd = new SqlCommand("spUpdateRegion", con);

            cmd.CommandType = CommandType.StoredProcedure;

            cmd.Parameters.Add(new SqlParameter("@RegionID", SqlDbType.VarChar));
            cmd.Parameters.Add(new SqlParameter("@NewRegionDescription", SqlDbType.VarChar));
            cmd.Parameters["@RegionID"].Value = regionID;
            cmd.Parameters["@NewRegionDescription"].Value = newRegionDescription;

            int deletedRowsCount = cmd.ExecuteNonQuery();

            // print when no effects

            con.Close();
        }
    }
}