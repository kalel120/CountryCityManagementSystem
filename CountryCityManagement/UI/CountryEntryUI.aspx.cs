using System;
using System.Collections.Generic;
using CountryCityManagement.Business_Logic;
using CountryCityManagement.Models;

namespace CountryCityManagement.UI {
    public partial class CountryEntryUI : System.Web.UI.Page {
        CountryManager objCountryManager = new CountryManager();
        protected void Page_Load( object sender, EventArgs e ) {
            LoadIntoGridview();
        }
        protected void saveButton_Click( object sender, EventArgs e ) {
            Country objCountry = new Country();
            double parsedValue;
            objCountry.CountryName = nameTextBox.Text;
            objCountry.AboutCountry = aboutTextArea.Value;
            if (objCountry.CountryName == string.Empty) {
                messageLabel.Text = "Name Field is empty";
            }
            else if (double.TryParse(objCountry.CountryName, out parsedValue)) {
                messageLabel.Text = "Invalid name input";
            }
            else if (objCountryManager.CheckCountryByName(objCountry.CountryName)) {
                messageLabel.Text = "Country Name already Exists";
            }
            else {
                messageLabel.Text = objCountryManager.InsertCountryInfo(objCountry);
                LoadIntoGridview();
            }
        }

        private void LoadIntoGridview() {
            List<Country> countries = objCountryManager.GetAllCountryInfo();
            countryEntryGridView.DataSource = countries;
            countryEntryGridView.DataBind();
        }

        protected void cancelButton_Click( object sender, EventArgs e ) {
            //Response.Redirect();
        }
    }
}