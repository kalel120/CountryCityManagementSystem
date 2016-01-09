using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace CountryCityManagement.Models
{
    public class City
    {
        public int CitySL { get; set; }
        public string CityName { get; set; }
        public string AboutCity { get; set; }
        public int Dwellers { get; set; }
        public string Location { get; set; }
        public string Weather { get; set; }
        public int CountryID { get; set; }

    }
}