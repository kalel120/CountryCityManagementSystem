using System.Collections.Generic;
using CountryCityManagement.Database_Access;
using CountryCityManagement.Models;

namespace CountryCityManagement.Business_Logic {
    public class CityManager {
        CityGateway objGateway = new CityGateway();

        public List<City> GetAll() {
            List<City> cities = objGateway.GetAll();
            return cities;
        }

        public bool CheckCityByName( string cityName ) {
            return objGateway.CheckCityByName(cityName);
        }

        public List<Country> GetCountryInfo() {
            List<Country> countries = objGateway.GetCountryInfo();
            return countries;
        }

        public string InsertCity( City city ) {
            if (CheckCityByName(city.CityName)) {
                return "City Name Already Exists!";
            }
            if (objGateway.InsertCity(city) > 0) {
                return "Successfully Saved!";
            }
            return "Insertion Failed!";
        }
        ////////////////////////
        CityGateway cityGatewayObj = new CityGateway();
        public List<CityViewModel> GetALLCityInfo() {
            List<CityViewModel> cityView = cityGatewayObj.GetAllCityInfo();
            return cityView;
        }

        public List<CityViewModel> GetALLCityInfoByName( string searchName ) {
            List<CityViewModel> cityView = cityGatewayObj.GetAllCityInfoByName(searchName);
            return cityView;
        }

        public List<CityViewModel> GetALLCityInfoByCountry( string searchCountry ) {
            List<CityViewModel> cityView = cityGatewayObj.GetAllCityInfoByCountry(searchCountry);
            return cityView;
        }
    }
}