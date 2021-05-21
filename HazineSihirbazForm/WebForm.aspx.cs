using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Windows.Forms;
using Panel = System.Web.UI.WebControls.Panel;
using System.Web.Services;
using System.Web.Script.Services;
using HazineSihirbazi.BU;

namespace HazineSihirbazForm
{
    public partial class WebForm : System.Web.UI.Page
    {
        TransactionBU transaction = new TransactionBU();
        protected void Page_Load(object sender, EventArgs e)
        {
            //loading.Visible = false;
            
            //TextBox3.Text = "0";
            //TextBox6.Text = "00000000-AAAA-BBBB-CCCC-000000000001";
            //TextBox7.Text = "00000000-AAAA-BBBB-CCCC-000000000001";
            //TextBox8.Text = "BCC93D3F-52AE-4F2E-9914-A6AB569D5144";
            //TextBox9.Text = "1";
            //TextBox10.Text = "00000000-AAAA-BBBB-CCCC-000000000001";
            if (!IsPostBack)
            {
                Doldur();
            }
            
        }

        protected void Doldur()
        {
            DataTable table = transaction.FillTranList();
            GridView1.DataSource = table;
            GridView1.DataBind();
        }

        protected void GridView1_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            GridView1.PageIndex = e.NewPageIndex;
            Doldur();
        }

        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static string Sil_Click(string id)
        {

            string message = TransactionBU.DeleteTransaction(id);

            return message;
        }


        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static string Kaydet_Click(string id, string file_name, string state_code, string created_on, string modified_on, string created_by, string modified_by, string owning_unit, string status_code, string owning_user)
        {
            
            string message = TransactionBU.SaveTransaction(id, file_name, state_code, created_on, modified_on, created_by, modified_by, owning_unit, status_code, owning_user);

            return message;
        }


        [WebMethod, ScriptMethod(ResponseFormat = ResponseFormat.Json, UseHttpGet = false)]
        public static SqlDataReader Edit_Click(string id)
        {

            SqlDataReader message = TransactionBU.EditTransaction(id);

            return message;
            
        }

    }
}

