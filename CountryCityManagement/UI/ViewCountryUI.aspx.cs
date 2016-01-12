using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.Business_Logic;
using CountryCityManagement.Models;

namespace CountryCityManagement.UI {
    public partial class ViewCountryUI : System.Web.UI.Page {
        CountryManager manageCountry = new CountryManager();
        private List<CountryViewModel> country;
        protected void Page_Load( object sender, EventArgs e ) {
            if (!IsPostBack) {
                country = manageCountry.GetALLCountryView();
                ViewState["CountryData"] = country;
                LoadALLCountryInfo(country);
            }
            else {
                country = (List<CountryViewModel>)ViewState["CountryData"];
                LoadALLCountryInfo(country);
            }
        }

        private void LoadALLCountryInfo( List<CountryViewModel> country ) {
            countryGridView.DataSource = country;
            countryGridView.DataBind();
        }
        protected void searchButton_Click( object sender, EventArgs e ) {
            string searchName = countrySearchTextBox.Text;
            double parseNumber;
            if (searchName == string.Empty) {
                messageLabel.Text = "Please Give Country Name";
            }
            else if (double.TryParse(searchName, out parseNumber)) {
                messageLabel.Text = "Input is not Valid !";
                country = manageCountry.GetALLCountryView();
                ViewState["CountryData"] = country;
                LoadALLCountryInfo(country);
            }
            else {
                country = manageCountry.GetALLCountryViewByName(searchName);
                if (country != null) {
                    ViewState["CountryData"] = country;
                    LoadALLCountryInfo(country);
                    messageLabel.Text = "Result of " + searchName;
                    clearSearBox();
                }
                else {
                    messageLabel.Text = "Nothin is found for " + searchName + " Country";
                    clearSearBox();
                    countryGridView.DataSource = null;
                    countryGridView.DataBind();
                }
            }
        }

        private void clearSearBox() {
            countrySearchTextBox.Text = "";
        }

        protected void countryGridView_PageIndexChanging( object sender, GridViewPageEventArgs e ) {
            countryGridView.PageIndex = e.NewPageIndex;
            LoadALLCountryInfo(country);
        }

        protected void homeButton_Click( object sender, EventArgs e ) {
            Response.Redirect("IndexUI.aspx");
        }
    }
}