using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;
using CountryCityManagement.Models;

namespace CountryCityManagement.Database_Access {
    public class CityGateway {
        static string connectionString = WebConfigurationManager.ConnectionStrings["DBCon"].ConnectionString;
        private SqlConnection connection = new SqlConnection(connectionString);
        
        
        public List<City> GetAll() {
            connection.Close();
            int count = 1;
            List<City> cities = new List<City>();
            string getAllQuery = "SELECT * FROM GetCityForGridview ORDER BY CountryName";
            SqlCommand command = new SqlCommand(getAllQuery, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) {
                City city = new City();
                city.CitySL = count++;
                city.CityName = Convert.ToString(reader["CityName"]);
                ////Getting binary data from database. Casting to byte array
                //byte[] objBytes = (byte[])reader["AboutCity"];
                ////Converting to unicode string
                //city.AboutCity = Encoding.UTF8.GetString(objBytes);
                city.Dwellers = Convert.ToInt32(reader["Dwellers"]);
                city.CountryName = Convert.ToString(reader["CountryName"]);
                cities.Add(city);
            }
            reader.Close();
            connection.Close();
            return cities;
        }
        public List<Country> GetCountryInfo() {
            List<Country> countries = new List<Country>();
            string getCountryQuery = "SELECT CountryID, CountryName FROM Country ORDER BY CountryName";
            SqlCommand command = new SqlCommand(getCountryQuery, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) {
                Country country = new Country();
                country.CountryID = Convert.ToInt32(reader["CountryID"].ToString());
                country.CountryName = reader["CountryName"].ToString();
                countries.Add(country);
            }
            reader.Close();
            connection.Close();
            return countries;
        }

        public bool CheckCityByName( string cityName ) {
            string query = "SELECT CityName FROM City WHERE CityName= @name";
            SqlCommand command = new SqlCommand(query, connection);

            command.Parameters.Clear();
            command.Parameters.Add("name", SqlDbType.NVarChar);
            command.Parameters["name"].Value = cityName;

            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read()) {
                return true;
            }
            reader.Close();
            connection.Close();
            return false;
        }

        public int InsertCity( City city ) {
            string insertQuery = "INSERT INTO  City VALUES(@name, CONVERT(varbinary(MAX),'" + city.AboutCity + "'),@dwellers,@location,@weather,@countryId)";
            SqlCommand insertCommand = new SqlCommand(insertQuery, connection);
            connection.Open();
            insertCommand.Parameters.Clear();
            insertCommand.Parameters.Add("name", SqlDbType.NVarChar);
            insertCommand.Parameters["name"].Value = city.CityName;

            insertCommand.Parameters.Add("dwellers", SqlDbType.NVarChar);
            insertCommand.Parameters["dwellers"].Value = city.Dwellers;

            insertCommand.Parameters.Add("location", SqlDbType.NVarChar);
            insertCommand.Parameters["location"].Value = city.Location;

            insertCommand.Parameters.Add("weather", SqlDbType.NVarChar);
            insertCommand.Parameters["weather"].Value = city.Weather;

            insertCommand.Parameters.Add("countryId", SqlDbType.Int);
            insertCommand.Parameters["countryId"].Value = city.CountryID;

            int affectedRow = insertCommand.ExecuteNonQuery();
            connection.Close();
            return affectedRow;
        }
    }
}