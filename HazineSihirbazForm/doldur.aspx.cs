using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace HazineSihirbazForm
{
    public partial class doldur : System.Web.UI.Page
    {
        static Sqlsinif bgl = new Sqlsinif();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataAdapter sqldata = new SqlDataAdapter("SELECT * FROM New_TransactionBase t0 INNER JOIN New_TransactionExtension t1 ON t0.New_TransactionId=t1.New_TransactionId", bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            int secili;
            secili = GridView1.SelectedIndex;
            GridViewRow row = GridView1.Rows[secili];

        }

    }
}