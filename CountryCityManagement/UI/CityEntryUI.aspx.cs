using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.Business_Logic;
using CountryCityManagement.Models;

namespace CountryCityManagement.UI {
    public partial class CityEntryUI : System.Web.UI.Page {
        CityManager manager = new CityManager();
        protected void Page_Load( object sender, EventArgs e ) {
            LoadAllCities();
            if (!IsPostBack) {
                LoadAllCountry();
            }
        }
        private void LoadAllCities() {
            List<City> cities = manager.GetAll();
            cityGridView.DataSource = cities;
            cityGridView.DataBind();
        }

        private void LoadAllCountry() {
            List<Country> countries = manager.GetCountryInfo();
            cityCountryDropDownList.DataSource = countries;
            cityCountryDropDownList.DataTextField = "CountryName";
            cityCountryDropDownList.DataValueField = "CountryID";
            cityCountryDropDownList.DataBind();
            cityCountryDropDownList.Items.Insert(0, new ListItem("Select Country"));
        }

        protected void saveCityButton_Click( object sender, EventArgs e ) {
            int parsedDwellervalue;
            string cityName = cityNameTextBox.Text;
            string aboutCity = aboutTextArea.Value;
            string totalDwellers = noOfDwellersTextBox.Text;
            string cityLocation = locationTextBox.Text;
            string cityWeather = weatherTextBox.Text;
            int countryIDfromDropDown;
            try {
                countryIDfromDropDown = Convert.ToInt32(cityCountryDropDownList.SelectedValue);
            }
            catch (Exception notSelectedException) {
                countryIDfromDropDown = cityCountryDropDownList.SelectedIndex;
            }

            if (cityName == string.Empty || totalDwellers == string.Empty || cityLocation == string.Empty || cityWeather == string.Empty) {
                messageLabel.Text = "Fields are empty!";
            }
            else if (!int.TryParse(totalDwellers, out parsedDwellervalue)) {
                messageLabel.Text = "Dwellers field is incorrect";
            }
            else if (countryIDfromDropDown == 0) {
                messageLabel.Text = "Select a Country";
            }
            else {
                City city = new City();
                city.CityName = cityName;
                city.AboutCity = aboutCity;
                city.Dwellers = parsedDwellervalue;
                city.Location = cityLocation;
                city.Weather = cityWeather;
                city.CountryID = countryIDfromDropDown;
                messageLabel.Text = manager.InsertCity(city);
                LoadAllCities();
            }
        }

        protected void cancelCityButton_Click( object sender, EventArgs e ) {
            Response.Redirect("IndexUI.aspx");
        }
    }
}


