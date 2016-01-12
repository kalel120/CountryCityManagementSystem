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
            string insertQuery = "INSERT INTO  Country VALUES(@name, CONVERT(varbinary(MAX),'" + objCountry.AboutCountry + "'))";
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
            string getAllQuery = "SELECT * FROM Country ORDER BY CountryName";
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
        /////////////////////////////
        public List<CountryViewModel> GetALLCountryView() {
            int count = 0;
            string query = "Select * from GetCountryInfo ORDER BY Name";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<CountryViewModel> countryView = new List<CountryViewModel>();
            while (reader.Read()) {
                count = count + 1;
                CountryViewModel countryViewModelObj = new CountryViewModel();
                countryViewModelObj.SL = count;
                countryViewModelObj.Name = reader["Name"].ToString();
                byte[] binaryString = (byte[])(reader["About"]);
                countryViewModelObj.About = Encoding.UTF8.GetString(binaryString);
                countryViewModelObj.NoOfCities = Convert.ToInt32(reader["No. of cities"].ToString());
                countryViewModelObj.NoOfCityDwellers = Convert.ToInt32(reader["No. of city dwellers"].ToString());

                countryView.Add(countryViewModelObj);
            }
            connection.Close();
            return countryView;
        }

        public List<CountryViewModel> GetALLCountryViewByName( string searchName ) {
            int count = 0;
            string query = "Select * from GetCountryInfo where Name LIKE '%" + searchName + "%' ORDER By Name ";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<CountryViewModel> countryView = new List<CountryViewModel>();
            while (reader.Read()) {
                count = count + 1;
                CountryViewModel countryViewModelObj = new CountryViewModel();
                countryViewModelObj.SL = count;
                countryViewModelObj.Name = reader["Name"].ToString();

                byte[] binaryString = (byte[])(reader["About"]);
                countryViewModelObj.About = Encoding.UTF8.GetString(binaryString);

                //countryViewModelObj.About = reader["About"].ToString();
                countryViewModelObj.NoOfCities = Convert.ToInt32(reader["No. of cities"].ToString());
                countryViewModelObj.NoOfCityDwellers = Convert.ToInt32(reader["No. of city dwellers"].ToString());

                countryView.Add(countryViewModelObj);
            }
            connection.Close();
            int datacount = countryView.Count;
            if (datacount == 0) {
                return null;
            }
            return countryView;
        }

        public List<Country> GetAllCounty() {
            string query = "SELECT * FROM Country ORDER BY CountryName ";
            SqlCommand command = new SqlCommand(query, connection);

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();

            List<Country> countryList = new List<Country>();

            while (reader.Read()) {
                Country countryObj = new Country();
                countryObj.CountryID = Convert.ToInt32(reader["CountryID"].ToString());
                countryObj.CountryName = reader["CountryName"].ToString();

                countryList.Add(countryObj);
            }
            connection.Close();
            return countryList;
        }
    }
}