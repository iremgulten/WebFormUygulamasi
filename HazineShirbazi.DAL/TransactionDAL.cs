using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.SqlClient;
using System.Data;

namespace HazineShirbazi.DAL
{
    public class TransactionDAL
    {
        static Sqlsinif bgl = new Sqlsinif();

        public DataTable FillTranList()
        {
            SqlDataAdapter sqldata = new SqlDataAdapter("SELECT * FROM New_TransactionBase t0 INNER JOIN New_TransactionExtension t1 ON t0.New_TransactionId=t1.New_TransactionId", bgl.baglanti());
            DataTable table = new DataTable();
            sqldata.Fill(table);

            return table;
        }
        public static string SaveTransaction(string id, string file_name, string state_code, string created_on, string modified_on, string created_by, string modified_by, string owning_unit, string status_code, string owning_user)
        {
            string message = "";
            string islem_tur = "";
            string username = "user";
            string date = DateTime.Now.ToString();
            try
            {
                SqlCommand komut = new SqlCommand("select * From New_TransactionBase where New_TransactionId=@p1", bgl.baglanti());
                komut.Parameters.AddWithValue("@p1", id);
                SqlDataReader dr = komut.ExecuteReader();
                if (dr.Read())
                {
                    SqlCommand komut2 = new SqlCommand("UPDATE New_TransactionBase SET FileName=@p2,DeletionStateCode=@p3,CreatedOn=@p4,ModifiedOn=@p5," +
                        "CreatedBy=@p6,ModifiedBy=@p7,OwningBusinessUnit=@p8,statuscode=@p9,OwningUser=@p10 WHERE New_TransactionId=@p1", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.Parameters.AddWithValue("@p2", file_name);
                    komut2.Parameters.AddWithValue("@p3", state_code);
                    komut2.Parameters.AddWithValue("@p4", created_on);
                    komut2.Parameters.AddWithValue("@p5", modified_on);
                    komut2.Parameters.AddWithValue("@p6", created_by);
                    komut2.Parameters.AddWithValue("@p7", modified_by);
                    komut2.Parameters.AddWithValue("@p8", owning_unit);
                    komut2.Parameters.AddWithValue("@p9", status_code);
                    komut2.Parameters.AddWithValue("@p10", owning_user);
                    komut2.ExecuteNonQuery();
                    bgl.baglanti().Close();

                    message = "Kayıt Başarılı Bir Şekilde Güncellendi.";
                    islem_tur = "Kayit güncelleme islemi yapildi.";




                }
                else
                {
                    SqlCommand komut2 = new SqlCommand("INSERT INTO New_TransactionBase  (New_TransactionId,FileName,DeletionStateCode,CreatedOn,ModifiedOn," +
                        "CreatedBy,ModifiedBy,OwningBusinessUnit,statuscode,OwningUser) VALUES (@p1,@p2,@p3,@p4,@p5,@p6,@p7,@p8,@p9,@p10)", bgl.baglanti());
                    komut2.Parameters.AddWithValue("@p1", id);
                    komut2.Parameters.AddWithValue("@p2", file_name);
                    komut2.Parameters.AddWithValue("@p3", state_code);
                    komut2.Parameters.AddWithValue("@p4", created_on);
                    komut2.Parameters.AddWithValue("@p5", modified_on);
                    komut2.Parameters.AddWithValue("@p6", created_by);
                    komut2.Parameters.AddWithValue("@p7", modified_by);
                    komut2.Parameters.AddWithValue("@p8", owning_unit);
                    komut2.Parameters.AddWithValue("@p9", status_code);
                    komut2.Parameters.AddWithValue("@p10", owning_user);
                    komut2.ExecuteNonQuery();

                    SqlCommand komut3 = new SqlCommand("INSERT INTO New_TransactionExtension  (New_TransactionId) VALUES (@p1)", bgl.baglanti());
                    komut3.Parameters.AddWithValue("@p1", id);
                    komut3.ExecuteNonQuery();

                    message = "Kayıt Başarılı Bir Şekilde Oluşturuldu.";
                    islem_tur = "Yeni kayıt ekleme işlemi yapıldı.";

                    bgl.baglanti().Close();
                }
                bgl.baglanti().Close();
            }
            catch (Exception ex)
            {
                islem_tur = "Başarısız ekleme veya kayıt güncelleme işlemi yapıldı.";
                message = "İşlem başarısız";
            }

            SqlCommand komut4 = new SqlCommand("INSERT INTO TransactionLog (UserName,EditDate,Note) VALUES (@p1,@p2,@p3)",bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", username);
            komut4.Parameters.AddWithValue("@p2", DateTime.Parse(date));
            komut4.Parameters.AddWithValue("@p3", islem_tur);
            komut4.ExecuteNonQuery();

            bgl.baglanti().Close();



            return message;
        }

        public static string DeleteTransaction(string id)
        {
            string message = "";
            string islem_tur = "Kayit silme islemi yapildi.";
            string username = "user";
            string date = DateTime.Now.ToString();


            SqlCommand komut = new SqlCommand("Delete From New_TransactionBase where New_TransactionId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            komut.ExecuteNonQuery();

            SqlCommand komut2 = new SqlCommand("Delete From New_TransactionExtension where New_TransactionId=@p1", bgl.baglanti());
            komut2.Parameters.AddWithValue("@p1", id);
            komut2.ExecuteNonQuery();

            SqlCommand komut4 = new SqlCommand("INSERT INTO TransactionLog (UserName,EditDate,Note) VALUES (@p1,@p2,@p3)", bgl.baglanti());
            komut4.Parameters.AddWithValue("@p1", username);
            komut4.Parameters.AddWithValue("@p2", DateTime.Parse(date));
            komut4.Parameters.AddWithValue("@p3", islem_tur);
            komut4.ExecuteNonQuery();

            bgl.baglanti().Close();



            return message;
        }

        public static SqlDataReader EditTransaction(string id)
        {

            SqlCommand komut = new SqlCommand("SELECT * FROM New_TransactionBase where New_TransactionId=@p1", bgl.baglanti());
            komut.Parameters.AddWithValue("@p1", id);
            SqlDataReader dr = komut.ExecuteReader();

            return dr;
        }

    }
}
