using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using CountryCityManagement.Business_Logic;

namespace CountryCityManagement.UI {
    public partial class CountryEntryUI : System.Web.UI.Page {
        protected void Page_Load( object sender, EventArgs e ) {
            CountryManager objCountryManager = new CountryManager();

        }
    }
}