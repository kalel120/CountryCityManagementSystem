using System;
namespace CountryCityManagement.Models {
    [Serializable]
    public class CityViewModel {
        public int SL { get; set; }
        public string CityName { get; set; }
        public string AboutCity { get; set; }
        public double NoOfDwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public string CountryName { get; set; }
        public string AboutCountry { get; set; }
    }
}