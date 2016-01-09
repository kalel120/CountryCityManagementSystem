using System.Collections.Generic;
using System.Data.SqlClient;
using System.Web.Configuration;
using CountryCityManagement.Models;

namespace CountryCityManagement.Database_Access {
    public class CountryGateway {
        static string _connectionString = WebConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        private SqlConnection connection = new SqlConnection(_connectionString);

        internal bool CheckCountryByName() {
            return false;
        }

        internal int InsertInfo( Country objCountry ) {
            return 0;
        }

        internal List<Country> GetAllInfo() {
            return null;
        }
    }
}