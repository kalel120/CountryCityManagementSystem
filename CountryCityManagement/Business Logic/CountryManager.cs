using System.Collections.Generic;
using CountryCityManagement.Database_Access;
using CountryCityManagement.Models;

namespace CountryCityManagement.Business_Logic {
    public class CountryManager {
        private CountryGateway objCountryGateway = new CountryGateway();
        internal bool CheckCountryByName( string countryName ) {
            return objCountryGateway.CheckCountryByName(countryName);
        }

        internal string InsertCountryInfo( Country objCountry ) {
            if (CheckCountryByName(objCountry.CountryName)) {
                return "Country Name Already exists";
            }
            int affectedRow = objCountryGateway.InsertInfo(objCountry);
            if (affectedRow > 0) {
                return "Insert Succesfull";
            }
            return "Insert Failed!!";
        }

        internal List<Country> GetAllCountryInfo() {
            List<Country> countries = objCountryGateway.GetAllInfo();
            return countries;
        }
    }
}