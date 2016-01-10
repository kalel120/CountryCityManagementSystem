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
            return false;
        }

        internal int InsertInfo( Country objCountry ) {
            string insertQuery;
            return 0;
        }

        internal List<Country> GetAllInfo() {
            return null;
        }
    }
}