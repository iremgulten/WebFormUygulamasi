using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data;
using HazineShirbazi.DAL;
using System.Data.SqlClient;

namespace HazineSihirbazi.BU
{
    public class TransactionBU
    {
        TransactionDAL transaction = new TransactionDAL();
        public DataTable FillTranList()
        {
            return transaction.FillTranList();
        }
        public static string SaveTransaction(string id, string file_name, string state_code, string created_on, string modified_on, string created_by, string modified_by, string owning_unit, string status_code, string owning_user)
        {
            string message = "";
           
            //if (id == null || id == "")
            if (string.IsNullOrEmpty(id))
            {
                message = "İD değeri boş olamaz!";
            }
            else if (string.IsNullOrEmpty(file_name))
            {
                message = "Dosya adı boş olamaz!";
            }
            else
            {
                message = TransactionDAL.SaveTransaction(id, file_name, state_code, created_on, modified_on, created_by, modified_by, owning_unit, status_code, owning_user);
            }

            return message;
        }

        public static string DeleteTransaction(string id)
        {
            string message = "";

            if (string.IsNullOrEmpty(id))
            {
                message = "İD değeri boş olamaz!";
            }
            else
            {
                message = TransactionDAL.DeleteTransaction(id);
            }

            return message;
        }

        public static SqlDataReader EditTransaction(string id)
        {
            return TransactionDAL.EditTransaction(id);
        }

    }
}
