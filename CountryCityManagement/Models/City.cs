﻿namespace CountryCityManagement.Models {
    public class City {
        public int CitySL { get; set; }
        public int CityID { get; set; }
        public string CityName { get; set; }
        public string AboutCity { get; set; }
        public int Dwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public int CountryID { get; set; }
        public string CountryName { get; set; }
    }
}