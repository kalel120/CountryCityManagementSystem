using System;
namespace CountryCityManagement.Models {
    [Serializable]
    public class CountryViewModel {
        public int SL { get; set; }
        public string Name { get; set; }
        public string About { get; set; }
        public double NoOfCities { get; set; }
        public double NoOfCityDwellers { get; set; }

    }
}