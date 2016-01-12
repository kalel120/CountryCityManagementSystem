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
        //////////////////////
        CountryGateway countryGatewayObj = new CountryGateway();
        public List<CountryViewModel> GetALLCountryView() {
            List<CountryViewModel> countryView = countryGatewayObj.GetALLCountryView();
            return countryView;
        }

        public List<CountryViewModel> GetALLCountryViewByName( string searchName ) {
            List<CountryViewModel> countryView = countryGatewayObj.GetALLCountryViewByName(searchName);
            return countryView;
        }

        public List<Country> GetAllDepartment() {
            List<Country> countryList = countryGatewayObj.GetAllCounty();
            return countryList;
        }
    }
}