using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using CountryCityManagement.Models;

namespace CountryCityManagement.Database_Access {
    public class CountryGateway {
        static string _connectionString = WebConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        private SqlConnection connection = new SqlConnection(_connectionString);

        internal bool CheckCountryByName(string countryName) {
            string checkNameQuery ="SELECT CountryName FROM Country WHERE CountryName=@name";
            SqlCommand checkCommand = new SqlCommand(checkNameQuery,connection);
            
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
            string insertQuery = "INSERT INTO  Country VALUES('@name',CONVERT(varbinary(MAX),'"+objCountry.AboutCountry+"'))";
            SqlCommand insertCommand = new SqlCommand(insertQuery,connection);
            
            insertCommand.Parameters.Clear();
            insertCommand.Parameters.Add("name", SqlDbType.NVarChar);
            insertCommand.Parameters["name"].Value = objCountry.CountryName;

            connection.Open();
            int affectedRow = insertCommand.ExecuteNonQuery();
            connection.Close();
            return affectedRow;
        }

        internal List<Country> GetAllInfo() {
            List<Country> countries=new List<Country>();
            string getAllQuery = "SELECT * FROM ";
            return null;
        }
    }
}