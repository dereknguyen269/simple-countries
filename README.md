# Simple Contries
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
    
- Get All
    
    ```ruby
        Simple::Countries.all
    ```
- Find by id

    ```ruby
        Simple::Countries.find(1)
    ```
    return `` {:id=>2, :alias=>"AL", :name=>"Albania"} ``

- Get first country

    ```ruby
        Simple::Countries.first
    ```
    return `` {:id=>1, :alias=>"AF", :name=>"Afghanistan"} ``
    
- Get last country

    ```ruby
        Simple::Countries.last
    ```
    return `` {:id=>241, :alias=>"ZW", :name=>"Zimbabwe"} ``
    
- Find by Alias 

    ```ruby
        Simple::Countries.find_by_alias('AF')
    ```
    return `` Afghanistan ``
    
- Search

    ```ruby
        Simple::Countries.search('A')
    ```
    return a array : 
    ```ruby
        [["AF", "Afghanistan"], ["AL", "Albania"], ["DZ", "Algeria"], ["AS", "American Samoa"], ["AD", "Andorra"], ["AO", "Angola"], ["AI", "Anguilla"], ["AQ", "Antarctica"], ["AG", "Antigua And Barbuda"], ["AR", "Argentina"], ["AM", "Armenia"], ["AW", "Aruba"], ["AU", "Australia"], ["AT", "Austria"], ["AZ", "Azerbaijan"], ["BA", "Bosnia And Herzegovina"], ["CF", "Central African Republic"], ["HM", "Heard Island And Mcdonald Islands"], ["LY", "Libyan Arab Jamahiriya"], ["AN", "Netherlands Antilles"], ["KN", "Saint Kitts And Nevis"], ["PM", "Saint Pierre And Miquelon"], ["VC", "Saint Vincent And The Grenadines"], ["ST", "Sao Tome And Principe"], ["SA", "Saudi Arabia"], ["ZA", "South Africa"], ["GS", "South Georgia And The South Sandwich Islands"], ["SJ", "Svalbard And Jan Mayen"], ["SY", "Syrian Arab Republic"], ["TT", "Trinidad And Tobago"], ["TC", "Turks And Caicos Islands"], ["AE", "United Arab Emirates"], ["WF", "Wallis And Futuna"]]
    ```
    
- Search by alias 

    ```ruby
        Simple::Countries.search_by_key('A')
    ```
    return a array :
    
    ```ruby
        ["AF", "AL", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BA", "CA", "GA", "VA", "LA", "MA", "NA", "AN", "PA", "QA", "SA", "ZA", "UA", "AE"]
    ```
    
- Has alias in list countries

    ```ruby
        Simple::Countries.has_key?('wf')
    ```
    return `` false ``
    
    ```ruby
        Simple::Countries.has_key?('WF')
    ```
    return `` true ``
    
- Get all Alias in list countries

    ```ruby
        Simple::Countries.alias
    ```
    return array of alias
    
    ```ruby
        ["AF", "AL", "DZ", "AS", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", "AW", "AU", "AT", "AZ", "BS", "BH", "BD", "BB", "BY", "BE", "BZ", "BJ", "BM", "BT", "BO", "BA", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", "KH", "CM", "CA", "CV", "KY", "CF", "TD", "CL", "CN", "CX", "CC", "CO", "KM", "CG", "CD", "CK", "CR", "CI", "HR", "CU", "CY", "CZ", "DK", "DJ", "DM", "DO", "TP", "EC", "EG", "SV", "GQ", "ER", "EE", "ET", "FK", "FO", "FJ", "FI", "FR", "GF", "PF", "TF", "GA", "GM", "GE", "DE", "GH", "GI", "GR", "GL", "GD", "GP", "GU", "GT", "GN", "GW", "GY", "HT", "HM", "VA", "HN", "HK", "HU", "IS", "IN", "ID", "IR", "IQ", "IE", "IL", "IT", "JM", "JP", "JO", "KZ", "KE", "KI", "KP", "KR", "KV", "KW", "KG", "LA", "LV", "LB", "LS", "LR", "LY", "LI", "LT", "LU", "MO", "MK", "MG", "MW", "MY", "MV", "ML", "MT", "MH", "MQ", "MR", "MU", "YT", "MX", "FM", "MD", "MC", "MN", "MS", "ME", "MA", "MZ", "MM", "NA", "NR", "NP", "NL", "AN", "NC", "NZ", "NI", "NE", "NG", "NU", "NF", "MP", "NO", "OM", "PK", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", "PT", "PR", "QA", "RE", "RO", "RU", "RW", "SH", "KN", "LC", "PM", "VC", "WS", "SM", "ST", "SA", "SN", "RS", "SC", "SL", "SG", "SK", "SI", "SB", "SO", "ZA", "GS", "ES", "LK", "SD", "SR", "SJ", "SZ", "SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", "TN", "TR", "TM", "TC", "TV", "UG", "UA", "AE", "GB", "US", "UM", "UY", "UZ", "VU", "VE", "VN", "VG", "VI", "WF", "EH", "YE", "ZM", "ZW"]
    ```
    
- Get all name of list countries

    ```ruby
        Simple::Countries.name
    ```
    return a array of name
    
    ```ruby
        ["Afghanistan", "Albania", "Algeria", "American Samoa", "Andorra", "Angola", "Anguilla", "Antarctica", "Antigua And Barbuda", "Argentina", "Armenia", "Aruba", "Australia", "Austria", "Azerbaijan", "Bahamas", "Bahrain", "Bangladesh", "Barbados", "Belarus", "Belgium", "Belize", "Benin", "Bermuda", "Bhutan", "Bolivia", "Bosnia And Herzegovina", "Botswana", "Bouvet Island", "Brazil", "British Indian Ocean Territory", "Brunei Darussalam", "Bulgaria", "Burkina Faso", "Burundi", "Cambodia", "Cameroon", "Canada", "Cape Verde", "Cayman Islands", "Central African Republic", "Chad", "Chile", "China", "Christmas Island", "Cocos (keeling) Islands", "Colombia", "Comoros", "Congo", "Congo, The Democratic Republic Of The", "Cook Islands", "Costa Rica", "Cote D'ivoire", "Croatia", "Cuba", "Cyprus", "Czech Republic", "Denmark", "Djibouti", "Dominica", "Dominican Republic", "East Timor", "Ecuador", "Egypt", "El Salvador", "Equatorial Guinea", "Eritrea", "Estonia", "Ethiopia", "Falkland Islands (malvinas)", "Faroe Islands", "Fiji", "Finland", "France", "French Guiana", "French Polynesia", "French Southern Territories", "Gabon", "Gambia", "Georgia", "Germany", "Ghana", "Gibraltar", "Greece", "Greenland", "Grenada", "Guadeloupe", "Guam", "Guatemala", "Guinea", "Guinea-bissau", "Guyana", "Haiti", "Heard Island And Mcdonald Islands", "Holy See (vatican City State)", "Honduras", "Hong Kong", "Hungary", "Iceland", "India", "Indonesia", "Iran, Islamic Republic Of", "Iraq", "Ireland", "Israel", "Italy", "Jamaica", "Japan", "Jordan", "Kazakstan", "Kenya", "Kiribati", "Korea, Democratic People's Republic Of", "Korea, Republic Of", "Kosovo", "Kuwait", "Kyrgyzstan", "Lao People's Democratic Republic", "Latvia", "Lebanon", "Lesotho", "Liberia", "Libyan Arab Jamahiriya", "Liechtenstein", "Lithuania", "Luxembourg", "Macau", "Macedonia, The Former Yugoslav Republic Of", "Madagascar", "Malawi", "Malaysia", "Maldives", "Mali", "Malta", "Marshall Islands", "Martinique", "Mauritania", "Mauritius", "Mayotte", "Mexico", "Micronesia, Federated States Of", "Moldova, Republic Of", "Monaco", "Mongolia", "Montserrat", "Montenegro", "Morocco", "Mozambique", "Myanmar", "Namibia", "Nauru", "Nepal", "Netherlands", "Netherlands Antilles", "New Caledonia", "New Zealand", "Nicaragua", "Niger", "Nigeria", "Niue", "Norfolk Island", "Northern Mariana Islands", "Norway", "Oman", "Pakistan", "Palau", "Palestinian Territory, Occupied", "Panama", "Papua New Guinea", "Paraguay", "Peru", "Philippines", "Pitcairn", "Poland", "Portugal", "Puerto Rico", "Qatar", "Reunion", "Romania", "Russian Federation", "Rwanda", "Saint Helena", "Saint Kitts And Nevis", "Saint Lucia", "Saint Pierre And Miquelon", "Saint Vincent And The Grenadines", "Samoa", "San Marino", "Sao Tome And Principe", "Saudi Arabia", "Senegal", "Serbia", "Seychelles", "Sierra Leone", "Singapore", "Slovakia", "Slovenia", "Solomon Islands", "Somalia", "South Africa", "South Georgia And The South Sandwich Islands", "Spain", "Sri Lanka", "Sudan", "Suriname", "Svalbard And Jan Mayen", "Swaziland", "Sweden", "Switzerland", "Syrian Arab Republic", "Taiwan, Province Of China", "Tajikistan", "Tanzania, United Republic Of", "Thailand", "Togo", "Tokelau", "Tonga", "Trinidad And Tobago", "Tunisia", "Turkey", "Turkmenistan", "Turks And Caicos Islands", "Tuvalu", "Uganda", "Ukraine", "United Arab Emirates", "United Kingdom", "United States", "United States Minor Outlying Islands", "Uruguay", "Uzbekistan", "Vanuatu", "Venezuela", "Viet Nam", "Virgin Islands, British", "Virgin Islands, U.s.", "Wallis And Futuna", "Western Sahara", "Yemen", "Zambia", "Zimbabwe"]
    ```


## Checkout on Rubygems.org
    https://rubygems.org/gems/simple-countries
    
## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

