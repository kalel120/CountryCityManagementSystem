using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;
using CountryCityManagement.Models;

namespace CountryCityManagement.Database_Access {
    public class CountryGateway {
        static string _connectionString = WebConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        private SqlConnection connection = new SqlConnection(_connectionString);

        internal bool CheckCountryByName( string countryName ) {
            string checkNameQuery = "SELECT CountryName FROM Country WHERE CountryName=@name";
            SqlCommand checkCommand = new SqlCommand(checkNameQuery, connection);

            checkCommand.Parameters.Clear();
            checkCommand.Parameters.Add("name", SqlDbType.NVarChar);
            checkCommand.Parameters["name"].Value = countryName;

            connection.Open();
            SqlDataReader objReader = checkCommand.ExecuteReader();
            if (objReader.Read()) {
                return true;
            }
            objReader.Close();
            connection.Close();
            return false;
        }

        internal int InsertInfo( Country objCountry ) {
            string insertQuery = "INSERT INTO  Country VALUES('@name',CONVERT(varbinary(MAX),'" + objCountry.AboutCountry + "'))";
            SqlCommand insertCommand = new SqlCommand(insertQuery, connection);

            insertCommand.Parameters.Clear();
            insertCommand.Parameters.Add("name", SqlDbType.NVarChar);
            insertCommand.Parameters["name"].Value = objCountry.CountryName;

            connection.Open();
            int affectedRow = insertCommand.ExecuteNonQuery();
            connection.Close();
            return affectedRow;
        }

        internal List<Country> GetAllInfo() {
            int countSl = 1;
            List<Country> countries = new List<Country>();
            string getAllQuery = "SELECT * FROM Country";
            SqlCommand getAllCommand = new SqlCommand(getAllQuery, connection);

            connection.Open();
            SqlDataReader objReader = getAllCommand.ExecuteReader();
            while (objReader.Read()) {
                Country objCountry = new Country();
                objCountry.CountryName = Convert.ToString(objReader["CountryName"]);
                byte[] objBytes = (byte[])objReader["AboutCountry"];
                objCountry.AboutCountry = Encoding.UTF8.GetString(objBytes);
                objCountry.CountrySL = countSl++;
                countries.Add(objCountry);
            }
            objReader.Close();
            connection.Close();
            return countries;
        }
    }
}