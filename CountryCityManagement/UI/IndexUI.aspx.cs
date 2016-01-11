using System;
namespace CountryCityManagement.UI {
    public partial class IndexUI : System.Web.UI.Page {
        protected void Page_Load( object sender, EventArgs e ) {

        }

        protected void viewCountriesLinkButton_Click( object sender, EventArgs e ) {
            //Response.Redirect("ViewCountryUI.aspx");
        }

        protected void viewCitiesLinkButton_Click( object sender, EventArgs e ) {
            //Response.Redirect("ViewCitiesUI.aspx");
        }

        protected void countryEntryLinkButton_Click( object sender, EventArgs e ) {
            Response.Redirect("CountryEntryUI.aspx");
        }

        protected void cityEntryLinkButton_Click( object sender, EventArgs e ) {
            Response.Redirect("CityEntryUI.aspx");
        }
    }
}