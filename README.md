# Simple Countries
A list of all countries for Rails

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'simple-countries'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install simple-countries

## Usage
Simple Method :
You can use `` Simple::Countries `` or `` Countries ``

- Get All

    ```ruby
        Simple::Countries.all
        Countries.all
    ```
- Find

    ```ruby
        Simple::Countries.find(2)
        Countries.find(2)
    ```
    return `` {:id=>2, :alias=>"AL", :name=>"Albania"} ``

- Get first country

    ```ruby
        Simple::Countries.first
        Countries.first
    ```
    return `` {:id=>1, :alias=>"AF", :name=>"Afghanistan"} ``

- Get last country

    ```ruby
        Simple::Countries.last
        Countries.last
    ```
    return `` {:id=>241, :alias=>"ZW", :name=>"Zimbabwe"} ``

- Find by Alias

    ```ruby
        Simple::Countries.find_by_alias('AF')
        Countries.find_by_alias('AF')
    ```
    return `` Afghanistan ``

- Search

    ```ruby
        Simple::Countries.search('A')
        Countries.search('A')
    ```
    return a array :
    ```ruby
        [["AF", "Afghanistan"], ["AL", "Albania"], ["DZ", "Algeria"], ["AS", "American Samoa"], ["AD", "Andorra"], ["AO", "Angola"], ["AI", "Anguilla"], ["AQ", "Antarctica"], ["AG", "Antigua And Barbuda"], ["AR", "Argentina"], ["AM", "Armenia"], ["AW", "Aruba"], ["AU", "Australia"], ["AT", "Austria"], ["AZ", "Azerbaijan"], ["BA", "Bosnia And Herzegovina"], ["CF", "Central African Republic"], ["HM", "Heard Island And Mcdonald Islands"], ["LY", "Libyan Arab Jamahiriya"], ["AN", "Netherlands Antilles"], ["KN", "Saint Kitts And Nevis"], ["PM", "Saint Pierre And Miquelon"], ["VC", "Saint Vincent And The Grenadines"], ["ST", "Sao Tome And Principe"], ["SA", "Saudi Arabia"], ["ZA", "South Africa"], ["GS", "South Georgia And The South Sandwich Islands"], ["SJ", "Svalbard And Jan Mayen"], ["SY", "Syrian Arab Republic"], ["TT", "Trinidad And Tobago"], ["TC", "Turks And Caicos Islands"], ["AE", "United Arab Emirates"], ["WF", "Wallis And Futuna"]]
    ```

- Search by alias

    ```ruby
        Simple::Countries.search_by_key('A')
        Countries.search_by_key('A')
    ```
    return a array :

    ```ruby
        ["AF", "AL", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BA", "CA", "GA", "VA", "LA", "MA", "NA", "AN", "PA", "QA", "SA", "ZA", "UA", "AE"]
    ```

- Has alias in list countries

    ```ruby
        Simple::Countries.has_key?('wf')
        Countries.has_key?('wf')
    ```
    return `` false ``

    ```ruby
        Simple::Countries.has_key?('WF')
        Countries.has_key?('WF')
    ```
    return `` true ``

- Get all Alias in list countries

    ```ruby
        Simple::Countries.alias
        Countries.alias
    ```
    return array of alias

    ```ruby
        ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CY", "CZ", "DK", "DJ", "DM", "DO", "TP", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KI", "KP", "KR", "KV", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "MS", "ME", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "SH", "KN", "LC", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SK", "SI", "SB", "SO", "ZA", "GS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    ```

- Get all name of list countries

    ```ruby
        Simple::Countries.name
        Countries.name
    ```
    return a array of name

    ```ruby
        ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia And Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (keeling) Islands", "Colombia", "Comoros", "Congo", "Congo, The Democratic Republic Of The", "Cook Islands", "Costa Rica", "Cote D'ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-bissau", "Guyana", "Haiti", "Heard Island And Mcdonald Islands", "Holy See (vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran, Islamic Republic Of", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic Of", "Korea, Republic Of", "Kosovo", "Kuwait", "Kyrgyzstan", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, The Former Yugoslav Republic Of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States Of", "Moldova, Republic Of", "Monaco", "Mongolia", "Montserrat", "Montenegro", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Palestinian Territory, Occupied", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Helena", "Saint Kitts And Nevis", "Saint Lucia", "Saint Pierre And Miquelon", "Saint Vincent And The Grenadines", "Samoa", "San Marino", "Sao Tome And Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia And The South Sandwich Islands", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard And Jan Mayen", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan, Province Of China", "Tajikistan", "Tanzania, United Republic Of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad And Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks And Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.s.", "Wallis And Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"]
    ```

## New method when use `` Countries ``
    
- Get States in Country

    ```ruby
        Countries.states('us')
    ```
    return a array
    
    ```ruby
        {:AK=>"Alaska", :AL=>"Alabama", :AR=>"Arkansas", :AZ=>"Arizona", :CA=>"California", :CO=>"Colorado", :CT=>"Connecticut", :DC=>"District of Columbia", :DE=>"Delaware", :FL=>"Florida", :GA=>"Georgia", :HI=>"Hawaii", :IA=>"Iowa", :ID=>"Idaho", :IL=>"Illinois", :IN=>"Indiana", :KS=>"Kansas", :KY=>"Kentucky", :LA=>"Louisiana", :MA=>"Massachusetts", :MD=>"Maryland", :ME=>"Maine", :MI=>"Michigan", :MN=>"Minnesota", :MO=>"Missouri", :MS=>"Mississippi", :MT=>"Montana", :NC=>"North Carolina", :ND=>"North Dakota", :NE=>"Nebraska", :NH=>"New Hampshire", :NJ=>"New Jersey", :NM=>"New Mexico", :NV=>"Nevada", :NY=>"New York", :OH=>"Ohio", :OK=>"Oklahoma", :OR=>"Oregon", :PA=>"Pennsylvania", :RI=>"Rhode Island", :SC=>"South Carolina", :SD=>"South Dakota", :TN=>"Tennessee", :TX=>"Texas", :UT=>"Utah", :VA=>"Virginia", :VT=>"Vermont", :WA=>"Washington", :WI=>"Wisconsin", :WV=>"West Virginia", :WY=>"Wyoming"}
    ```

- Get Cities in State of a coutry

    ```ruby
        Countries.cities('ak', 'us')
    ```
    return a array 
    ```ruby
        ["Adak", "Akhiok", "Akiachak", "Akiak", "Akutan", "Alakanuk", "Ambler", "Anchor Point", "Anchorage", "Angoon", "Atqasuk", "Barrow", "Bethel", "Big Lake", "Buckland", "Chefornak", "Chevak", "Chicken", "Chugiak", "Coffman Cove", "Cooper Landing", "Copper Center", "Cordova", "Craig", "Delta Junction", "Deltana", "Dillingham", "Douglas", "Dutch Harbor", "Eagle River", "Eielson Air Force Base", "Fairbanks", "Fairbanks North Star Borough", "Fort Greely", "Fort Richardson", "Fort Yukon", "Gakona", "Galena", "Girdwood", "Goodnews Bay", "Haines", "Homer", "Hooper Bay", "Juneau", "Kake", "Kaktovik", "Kalskag", "Kaltag", "Kenai", "Ketchikan", "Kiana", "King Cove", "King Salmon", "Kipnuk", "Klawock", "Kodiak", "Kongiganak", "Kotlik", "Kotzebue", "Koyuk", "Kwethluk", "Levelock", "Manokotak", "May Creek", "Mekoryuk", "Metlakatla", "Mountain Village", "Naknek", "Nazan Village", "Nenana", "New Stuyahok", "Nikiski", "Ninilchik", "Noatak", "Nome", "Nondalton", "Noorvik", "North Pole", "Northway", "Nuiqsut", "Old Kotzebue", "Palmer", "Pedro Bay", "Petersburg", "Pilot Station", "Point Hope", "Point Lay", "Prudhoe Bay", "Russian Mission", "Sand Point", "Scammon Bay", "Selawik", "Seward", "Shungnak", "Sitka", "Skaguay", "Soldotna", "Stebbins", "Sterling", "Sutton", "Talkeetna", "Teller", "Thorne Bay", "Togiak", "Tok", "Toksook Bay", "Tuntutuliak", "Two Rivers", "Unalakleet", "Unalaska", "Valdez", "Wainwright", "Wasilla", "Wrangel"]
    ```
- Get states from custom countires with input is a array ``[]``

    ```ruby
        Countries.custom_states(['us', 'br'])
    ```
    return a hash
    ```ruby
        {:AK=>"Alaska", :AL=>"Alagoas", :AR=>"Arkansas", :AZ=>"Arizona", :CA=>"California", :CO=>"Colorado", :CT=>"Connecticut", :DC=>"District of Columbia", :DE=>"Delaware", :FL=>"Florida", :GA=>"Georgia", :HI=>"Hawaii", :IA=>"Iowa", :ID=>"Idaho", :IL=>"Illinois", :IN=>"Indiana", :KS=>"Kansas", :KY=>"Kentucky", :LA=>"Louisiana", :MA=>"Maranhao", :MD=>"Maryland", :ME=>"Maine", :MI=>"Michigan", :MN=>"Minnesota", :MO=>"Missouri", :MS=>"Mato Grosso do Sul", :MT=>"Mato Grosso", :NC=>"North Carolina", :ND=>"North Dakota", :NE=>"Nebraska", :NH=>"New Hampshire", :NJ=>"New Jersey", :NM=>"New Mexico", :NV=>"Nevada", :NY=>"New York", :OH=>"Ohio", :OK=>"Oklahoma", :OR=>"Oregon", :PA=>"Para", :RI=>"Rhode Island", :SC=>"Santa Catarina", :SD=>"South Dakota", :TN=>"Tennessee", :TX=>"Texas", :UT=>"Utah", :VA=>"Virginia", :VT=>"Vermont", :WA=>"Washington", :WI=>"Wisconsin", :WV=>"West Virginia", :WY=>"Wyoming", :AC=>"Acre", :AM=>"Amazonas", :AP=>"Amapa", :BA=>"Bahia", :CE=>"Ceara", :DF=>"Federal District", :ES=>"Espirito Santo", :GO=>"Goias", :MG=>"Minas Gerais", :PB=>"Paraiba", :PE=>"Pernambuco", :PI=>"Piaui", :PR=>"Parana", :RJ=>"Rio de Janeiro", :RN=>"Rio Grande do Norte", :RO=>"Rondonia", :RR=>"Roraima", :RS=>"Rio Grande do Sul", :SE=>"Sergipe", :SP=>"Sao Paulo", :TO=>"Tocantins"}
    ```
    
- Get cities from some states of some countires

    ```ruby
        Countries.custom_cities({
            "us" => ["ak", "al"],
            "br" => ["ac"]
            })
    ```
    return a array 
    ```ruby
        ["Adak", "Akhiok", "Akiachak", "Akiak", "Akutan", "Alakanuk", "Ambler", "Anchor Point", "Anchorage", "Angoon", "Atqasuk", "Barrow", "Bethel", "Big Lake", "Buckland", "Chefornak", "Chevak", "Chicken", "Chugiak", "Coffman Cove", "Cooper Landing", "Copper Center", "Cordova", "Craig", "Delta Junction", "Deltana", "Dillingham", "Douglas", "Dutch Harbor", "Eagle River", "Eielson Air Force Base", "Fairbanks", "Fairbanks North Star Borough", "Fort Greely", "Fort Richardson", "Fort Yukon", "Gakona", "Galena", "Girdwood", "Goodnews Bay", "Haines", "Homer", "Hooper Bay", "Juneau", "Kake", "Kaktovik", "Kalskag", "Kaltag", "Kenai", "Ketchikan", "Kiana", "King Cove", "King Salmon", "Kipnuk", "Klawock", "Kodiak", "Kongiganak", "Kotlik", "Kotzebue", "Koyuk", "Kwethluk", "Levelock", "Manokotak", "May Creek", "Mekoryuk", "Metlakatla", "Mountain Village", "Naknek", "Nazan Village", "Nenana", "New Stuyahok", "Nikiski", "Ninilchik", "Noatak", "Nome", "Nondalton", "Noorvik", "North Pole", "Northway", "Nuiqsut", "Old Kotzebue", "Palmer", "Pedro Bay", "Petersburg", "Pilot Station", "Point Hope", "Point Lay", "Prudhoe Bay", "Russian Mission", "Sand Point", "Scammon Bay", "Selawik", "Seward", "Shungnak", "Sitka", "Skaguay", "Soldotna", "Stebbins", "Sterling", "Sutton", "Talkeetna", "Teller", "Thorne Bay", "Togiak", "Tok", "Toksook Bay", "Tuntutuliak", "Two Rivers", "Unalakleet", "Unalaska", "Valdez", "Wainwright", "Wasilla", "Wrangel", "Abbeville", "Adamsville", "Addison", "Adger", "Alabaster", "Albertville", "Alexander City", "Alexandria", "Aliceville", "Alpine", "Altoona", "America", "Andalusia", "Anniston", "Arab", "Ardmore", "Ariton", "Arley", "Arlington", "Ashford", "Ashland", "Ashville", "Athens", "Atmore", "Attalla", "Auburn", "Autaugaville", "Axis", "Baileyton", "Bankston", "Bay Minette", "Bear Creek", "Berry", "Bessemer", "Birmingham", "Blountsville", "Boaz", "Boligee", "Bremen", "Brent", "Brewton", "Bridgeport", "Brierfield", "Brilliant", "Brookwood", "Brownsboro", "Brundidge", "Bryant", "Butler", "Bynum", "Calera", "Calvert", "Camden", "Carbon Hill", "Carrollton", "Castleberry", "Catherine", "Cecil", "Cedar Bluff", "Centre", "Centreville", "Chancellor", "Chatom", "Chelsea", "Cherokee", "Childersburg", "Chunchula", "Citronelle", "Clanton", "Clayton", "Cleveland", "Clopton", "Coden", "Coffee Springs", "Coker", "Collinsville", "Columbiana", "Cordova", "Cottondale", "Cottonwood", "Courtland", "Crane Hill", "Creola", "Cropwell", "Crossville", "Cullman", "Cusseta", "Dadeville", "Daleville", "Danville", "Daphne", "Dauphin Island", "Daviston", "Dawson", "Deatsville", "Decatur", "Demopolis", "Dixons Mills", "Docena", "Dolomite", "Dora", "Dothan", "Double Springs", "Dozier", "Duncanville", "Dutton", "Eastaboga", "Eclectic", "Eight Mile", "Elba", "Elberta", "Elkmont", "Elmore", "Empire", "Enterprise", "Epes", "Equality", "Estillfork", "Ethelsville", "Eufaula", "Eutaw", "Eva", "Evergreen", "Excel", "Fackler", "Fairfield", "Fairhope", "Falkville", "Fayette", "Fitzpatrick", "Five Points", "Flat Rock", "Flomaton", "Florala", "Florence", "Foley", "Forest Home", "Forkland", "Fort Deposit", "Fort Mitchell", "Fort Payne", "Fort Rucker", "Fosters", "Franklin", "Frisco City", "Fruitdale", "Fulton", "Fultondale", "Fyffe", "Gadsden", "Gainestown", "Gallion", "Gardendale", "Gaylesville", "Geneva", "Georgiana", "Geraldine", "Gilbertown", "Glenwood", "Goodwater", "Gordo", "Gordon", "Goshen", "Grady", "Grand Bay", "Grant", "Graysville", "Greensboro", "Greenville", "Grove Hill", "Grove Oak", "Guin", "Gulf Shores", "Guntersville", "Gurley", "Haleyville", "Hamilton", "Hanceville", "Harpersville", "Hartford", "Hartselle", "Harvest", "Hayden", "Hayneville", "Hazel Green", "Headland", "Heflin", "Helena", "Henagar", "Higdon", "Highland Home", "Holly Pond", "Hollywood", "Hope Hull", "Horton", "Houston", "Huntsville", "Hurtsboro", "Ider", "Irvington", "Jack", "Jackson", "Jacksons Gap", "Jacksonville", "Jasper", "Jemison", "Joppa", "Kellyton", "Kennedy", "Killen", "Kimberly", "Kinston", "Laceys Spring", "Lafayette", "Lanett", "Lapine", "Leeds", "Leesburg", "Leighton", "Leroy", "Letohatchee", "Lexington", "Lillian", "Lincoln", "Linden", "Lineville", "Livingston", "Loachapoka", "Locust Fork", "Logan", "Louisville", "Lowndesboro", "Loxley", "Luverne", "Lynn", "Madison", "Magnolia", "Magnolia Springs", "Maplesville", "Marbury", "Margaret", "Marion", "Marion Junction", "Matthews", "Maylene", "McCalla", "Meridianville", "Midland City", "Midway", "Millbrook", "Millport", "Millry", "Mobile", "Monroeville", "Montevallo", "Montgomery", "Montrose", "Moody", "Morris", "Moulton", "Moundville", "Mount Hope", "Mount Olive", "Mount Vernon", "Mulga", "Munford", "Muscle Shoals", "Natural Bridge", "Nauvoo", "Needham", "New Brockton", "New Hope", "New Market", "Newton", "Newville", "Normal", "Northport", "Notasulga", "Oakman", "Odenville", "Ohatchee", "Oneonta", "Opelika", "Opp", "Orange Beach", "Orrville", "Owens Cross Roads", "Oxford", "Ozark", "Palmerdale", "Pansey", "Parrish", "Pelham", "Pell City", "Perdido", "Peterman", "Phenix City", "Phil Campbell", "Piedmont", "Pike Road", "Pine Hill", "Pinson", "Pisgah", "Pittsview", "Plantersville", "Pleasant Grove", "Prattville", "Quinton", "Ragland", "Rainbow City", "Rainsville", "Ralph", "Ramer", "Ranburne", "Red Bay", "Red Level", "Reform", "Remlap", "Repton", "Riverside", "Roanoke", "Robertsdale", "Rogersville", "Russellville", "Saint Stephens", "Salem", "Samson", "Saraland", "Satsuma", "Scottsboro", "Seale", "Section", "Selma", "Semmes", "Sheffield", "Shelby", "Silas", "Silverhill", "Sipsey", "Slocomb", "Smiths", "Somerville", "Spanish Fort", "Springville", "Spruce Pine", "Stapleton", "Steele", "Sterrett", "Stevenson", "Stockton", "Sulligent", "Sumiton", "Summerdale", "Sweet Water", "Sycamore", "Sylacauga", "Sylvania", "Talladega", "Tallassee", "Tanner", "Theodore", "Thomaston", "Thomasville", "Titus", "Toney", "Town Creek", "Toxey", "Trafford", "Trinity", "Troy", "Trussville", "Tuscaloosa", "Tuscumbia", "Tuskegee", "Union Grove", "Union Springs", "Uriah", "Valhermoso Springs", "Valley", "Valley Head", "Vance", "Vandiver", "Vernon", "Vina", "Vincent", "Vinemont", "Warrior", "Waverly", "Weaver", "Wedowee", "Wellington", "West Blocton", "Wetumpka", "Whatley", "Wilmer", "Wilsonville", "Winfield", "Wing", "Woodstock", "Woodville", "York", "Cruzeiro do Sul", "Foz do Jordao", "Fronteira", "Progresso", "Rio Branco"]
    ```
    
- Get list all cities of a country . Default is ``:us``

    ```ruby
        Countries.cities_in_country('us')
    ```
    
    return a array 
    ```ruby
        ["Adak", "Akhiok", "Akiachak", "Akiak", "Akutan", "Alakanuk", "Ambler", "Anchor Point", "Anchorage", "Angoon", "Atqasuk", "Barrow", "Bethel", "Big Lake", "Buckland", "Chefornak", "Chevak", "Chicken", "Chugiak", "Coffman Cove", "Cooper Landing", "Copper Center", "Cordova", "Craig", "Delta Junction", "Deltana",....]
    ```
    
## Checkout on Rubygems.org
    https://rubygems.org/gems/simple-countries

## Maintainers
    [x] Libra- (https://github.com/minhquan4080)

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

