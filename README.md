# Country-City Management WebApp
This web application is for storing and retrieving information of several countries and their cities. 
You must execute the database script(given as CountryCityWebAppDB.sql) and change the servername from "web.config" file.

Four pages are described below:

                                                          Country Entry
During country entry, ensure that, "Name" must be unique. User will format his writing, add pictures, use links etc. as s/he wants using that editor. Initially, all the country information stored in database will be displayed in the GridView sorted by country name. If user clicks the Save button, data will be saved in database and the GridView will be loaded with the new data also. If user clicks Cancel button, s/he will go back to the home page. During display, About section shows exactly as user gave (with all formatting and others).

                                                          City Entry
During city entry, ensure that, Name must be unique. For writing the About field, User will format his writing, add pictures, use links etc. as s/he wants using that editor. During page load, all the countries saved in database will be loaded in the Country DropDownList. Initially, all the city information stored in database will be displayed in the GridView sorted by city name. If user clicks the Save button, data will be saved in database and the GridView will be loaded with the new data also. If user clicks Cancel button, s/he will go back to the home page. During display, About section shows exactly as user gave (with all formatting and others).

                                                          View Cities
Initially, all the city information stored in database will be displayed in the GridView sorted by city name along with pagination. User can use Search Criteria feature. If City Name is selected, user will enter a text and click Search button, all cities matching with the entered text will be displayed. Partial search is possible here. If Country is selected, user will select a country from the DropDownList and click Search button, all cities of the searched country will be displayed.

                                                          View Countries
Initially, all the country information stored in database will be displayed in the GridView sorted by country name along with pagination. User can use Search Criteria feature. User will enter a text and click Search button, all countries matching with the entered text will be displayed. Partial search option is available here. No. of cities and No. of city dwellers of each countrywill be shown.
