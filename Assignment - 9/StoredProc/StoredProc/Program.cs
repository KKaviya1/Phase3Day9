using System;
using System.Data;
using System.Data.SqlClient;


namespace Assessment09
{
    internal class Program
    {
        static SqlConnection con;
        static SqlCommand cmd;
        static SqlTransaction trans;
        static string connection = "Server=DESKTOP-PE7BHIE;Database=OrderDb;Trusted_Connection=True";
        static void Main(string[] args)
        {
            try
            {
                con = new SqlConnection(connection);
                con.Open();
                trans = con.BeginTransaction();
                cmd = new SqlCommand();
                cmd.CommandText = "PlaceOrderProc";
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.Connection = con;
                cmd.Transaction = trans;
                Console.WriteLine("**TOTAL SPENDING**");
                Console.WriteLine("Enter Order Id:");
                cmd.Parameters.AddWithValue("@orderId", int.Parse(Console.ReadLine()));
                Console.WriteLine("Enter Customer Id:");
                cmd.Parameters.AddWithValue("@id", int.Parse(Console.ReadLine()));
                Console.WriteLine("Enter Total value:");
                cmd.Parameters.AddWithValue("@total", decimal.Parse(Console.ReadLine()));
                cmd.ExecuteNonQuery();
                trans.Commit();
            }
            catch (Exception e)
            {
                Console.WriteLine("Connection Error...");
                trans.Rollback();
            }
            finally
            {
                con.Close();
            }
        }
    }
}
