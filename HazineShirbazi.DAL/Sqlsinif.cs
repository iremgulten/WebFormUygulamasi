using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace HazineShirbazi.DAL
{
    public class Sqlsinif
    {
        public SqlConnection baglanti()
        {
            SqlConnection baglan = new SqlConnection(@"Data Source=STJIREMGULTEN;Initial Catalog=HazineSihirbazi;Integrated Security=True");
            baglan.Open();
            return baglan;
        }

    }
}