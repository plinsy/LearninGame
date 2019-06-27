$(document).ready(function() {
// When the client choose "Student"
function showStudentForm() {
$(`div.student_teacher_form:first`).html(`
<!-- Student Form -->
<div class="studentDiv">
    <div class="inputloginbox">
        <input required="" type="text" value="" name="last_name" id="last_name">
        <label for="last_name">Nom</label><br>
    </div>
    <div class="inputloginbox">
        <input required="" type="text" value="" name="first_name" id="first_name">
        <label for="first_name">Prenom</label><br>
    </div>
    <div class="row">
        <div class="birthdate col-md-6">
            <label for="date_of_birth">Date de naissance</label>
            <input required="" type="date" value="" name="date_of_birth" id="date_of_birth" %>
        </div>
        <div class="address col-md-6" style="">
            <label for="address">Addresse</label>
            <input required="" type="text" value="" name="address" id="address" placeholder="65222 charline court">
        </div>
    </div>
    <div class="location row">
    	<div class="country col-md-6">
            <label for="student_country">Pays</label>
            <select name="country" id="country">
                <option>
                    Andorra
                </option>
                <option>
                    United Arab Emirates
                </option>
                <option>
                    Afghanistan
                </option>
                <option>
                    Antigua and Barbuda
                </option>
                <option>
                    Anguilla
                </option>
                <option>
                    Albania
                </option>
                <option>
                    Armenia
                </option>
                <option>
                    Angola
                </option>
                <option>
                    Antarctica
                </option>
                <option>
                    Argentina
                </option>
                <option>
                    American Samoa
                </option>
                <option>
                    Austria
                </option>
                <option>
                    Australia
                </option>
                <option>
                    Aruba
                </option>
                <option>
                    Åland
                </option>
                <option>
                    Azerbaijan
                </option>
                <option>
                    Bosnia and Herzegovina
                </option>
                <option>
                    Barbados
                </option>
                <option>
                    Bangladesh
                </option>
                <option>
                    Belgium
                </option>
                <option>
                    Burkina Faso
                </option>
                <option>
                    Bulgaria
                </option>
                <option>
                    Bahrain
                </option>
                <option>
                    Burundi
                </option>
                <option>
                    Benin
                </option>
                <option>
                    Saint-Barthélemy
                </option>
                <option>
                    Bermuda
                </option>
                <option>
                    Brunei
                </option>
                <option>
                    Bolivia
                </option>
                <option>
                    Bonaire
                </option>
                <option>
                    Brazil
                </option>
                <option>
                    Bahamas
                </option>
                <option>
                    Bhutan
                </option>
                <option>
                    Botswana
                </option>
                <option>
                    Belarus
                </option>
                <option>
                    Belize
                </option>
                <option>
                    Canada
                </option>
                <option>
                    Cocos [Keeling] Islands
                </option>
                <option>
                    Congo
                </option>
                <option>
                    Central African Republic
                </option>
                <option>
                    Republic of the Congo
                </option>
                <option>
                    Switzerland
                </option>
                <option>
                    Ivory Coast
                </option>
                <option>
                    Cook Islands
                </option>
                <option>
                    Chile
                </option>
                <option>
                    Cameroon
                </option>
                <option>
                    China
                </option>
                <option>
                    Colombia
                </option>
                <option>
                    country_name
                </option>
                <option>
                    Costa Rica
                </option>
                <option>
                    Cuba
                </option>
                <option>
                    Cape Verde
                </option>
                <option>
                    Curaçao
                </option>
                <option>
                    Christmas Island
                </option>
                <option>
                    Cyprus
                </option>
                <option>
                    Czech Republic
                </option>
                <option>
                    Germany
                </option>
                <option>
                    Djibouti
                </option>
                <option>
                    Denmark
                </option>
                <option>
                    Dominica
                </option>
                <option>
                    Dominican Republic
                </option>
                <option>
                    Algeria
                </option>
                <option>
                    Ecuador
                </option>
                <option>
                    Estonia
                </option>
                <option>
                    Egypt
                </option>
                <option>
                    Eritrea
                </option>
                <option>
                    Spain
                </option>
                <option>
                    Ethiopia
                </option>
                <option>
                    Finland
                </option>
                <option>
                    Fiji
                </option>
                <option>
                    Falkland Islands
                </option>
                <option>
                    Federated States of Micronesia
                </option>
                <option>
                    Faroe Islands
                </option>
                <option>
                    France
                </option>
                <option>
                    Gabon
                </option>
                <option>
                    United Kingdom
                </option>
                <option>
                    Grenada
                </option>
                <option>
                    Georgia
                </option>
                <option>
                    French Guiana
                </option>
                <option>
                    Guernsey
                </option>
                <option>
                    Ghana
                </option>
                <option>
                    Gibraltar
                </option>
                <option>
                    Greenland
                </option>
                <option>
                    Gambia
                </option>
                <option>
                    Guinea
                </option>
                <option>
                    Guadeloupe
                </option>
                <option>
                    Equatorial Guinea
                </option>
                <option>
                    Greece
                </option>
                <option>
                    South Georgia and the South Sandwich Islands
                </option>
                <option>
                    Guatemala
                </option>
                <option>
                    Guam
                </option>
                <option>
                    Guinea-Bissau
                </option>
                <option>
                    Guyana
                </option>
                <option>
                    Hong Kong
                </option>
                <option>
                    Honduras
                </option>
                <option>
                    Croatia
                </option>
                <option>
                    Haiti
                </option>
                <option>
                    Hungary
                </option>
                <option>
                    Indonesia
                </option>
                <option>
                    Ireland
                </option>
                <option>
                    Israel
                </option>
                <option>
                    Isle of Man
                </option>
                <option>
                    India
                </option>
                <option>
                    British Indian Ocean Territory
                </option>
                <option>
                    Iraq
                </option>
                <option>
                    Iran
                </option>
                <option>
                    Iceland
                </option>
                <option>
                    Italy
                </option>
                <option>
                    Jersey
                </option>
                <option>
                    Jamaica
                </option>
                <option>
                    Hashemite Kingdom of Jordan
                </option>
                <option>
                    Japan
                </option>
                <option>
                    Kenya
                </option>
                <option>
                    Kyrgyzstan
                </option>
                <option>
                    Cambodia
                </option>
                <option>
                    Kiribati
                </option>
                <option>
                    Comoros
                </option>
                <option>
                    Saint Kitts and Nevis
                </option>
                <option>
                    North Korea
                </option>
                <option>
                    Republic of Korea
                </option>
                <option>
                    Kuwait
                </option>
                <option>
                    Cayman Islands
                </option>
                <option>
                    Kazakhstan
                </option>
                <option>
                    Laos
                </option>
                <option>
                    Lebanon
                </option>
                <option>
                    Saint Lucia
                </option>
                <option>
                    Liechtenstein
                </option>
                <option>
                    Sri Lanka
                </option>
                <option>
                    Liberia
                </option>
                <option>
                    Lesotho
                </option>
                <option>
                    Republic of Lithuania
                </option>
                <option>
                    Luxembourg
                </option>
                <option>
                    Latvia
                </option>
                <option>
                    Libya
                </option>
                <option>
                    Morocco
                </option>
                <option>
                    Monaco
                </option>
                <option>
                    Republic of Moldova
                </option>
                <option>
                    Montenegro
                </option>
                <option>
                    Saint Martin
                </option>
                <option>
                    Madagascar
                </option>
                <option>
                    Marshall Islands
                </option>
                <option>
                    Macedonia
                </option>
                <option>
                    Mali
                </option>
                <option>
                    Myanmar [Burma]
                </option>
                <option>
                    Mongolia
                </option>
                <option>
                    Macao
                </option>
                <option>
                    Northern Mariana Islands
                </option>
                <option>
                    Martinique
                </option>
                <option>
                    Mauritania
                </option>
                <option>
                    Montserrat
                </option>
                <option>
                    Malta
                </option>
                <option>
                    Mauritius
                </option>
                <option>
                    Maldives
                </option>
                <option>
                    Malawi
                </option>
                <option>
                    Mexico
                </option>
                <option>
                    Malaysia
                </option>
                <option>
                    Mozambique
                </option>
                <option>
                    Namibia
                </option>
                <option>
                    New Caledonia
                </option>
                <option>
                    Niger
                </option>
                <option>
                    Norfolk Island
                </option>
                <option>
                    Nigeria
                </option>
                <option>
                    Nicaragua
                </option>
                <option>
                    Netherlands
                </option>
                <option>
                    Norway
                </option>
                <option>
                    Nepal
                </option>
                <option>
                    Nauru
                </option>
                <option>
                    Niue
                </option>
                <option>
                    New Zealand
                </option>
                <option>
                    Oman
                </option>
                <option>
                    Panama
                </option>
                <option>
                    Peru
                </option>
                <option>
                    French Polynesia
                </option>
                <option>
                    Papua New Guinea
                </option>
                <option>
                    Philippines
                </option>
                <option>
                    Pakistan
                </option>
                <option>
                    Poland
                </option>
                <option>
                    Saint Pierre and Miquelon
                </option>
                <option>
                    Pitcairn Islands
                </option>
                <option>
                    Puerto Rico
                </option>
                <option>
                    Palestine
                </option>
                <option>
                    Portugal
                </option>
                <option>
                    Palau
                </option>
                <option>
                    Paraguay
                </option>
                <option>
                    Qatar
                </option>
                <option>
                    Réunion
                </option>
                <option>
                    Romania
                </option>
                <option>
                    Serbia
                </option>
                <option>
                    Russia
                </option>
                <option>
                    Rwanda
                </option>
                <option>
                    Saudi Arabia
                </option>
                <option>
                    Solomon Islands
                </option>
                <option>
                    Seychelles
                </option>
                <option>
                    Sudan
                </option>
                <option>
                    Sweden
                </option>
                <option>
                    Singapore
                </option>
                <option>
                    Saint Helena
                </option>
                <option>
                    Slovenia
                </option>
                <option>
                    Svalbard and Jan Mayen
                </option>
                <option>
                    Slovakia
                </option>
                <option>
                    Sierra Leone
                </option>
                <option>
                    San Marino
                </option>
                <option>
                    Senegal
                </option>
                <option>
                    Somalia
                </option>
                <option>
                    Suriname
                </option>
                <option>
                    South Sudan
                </option>
                <option>
                    São Tomé and Príncipe
                </option>
                <option>
                    El Salvador
                </option>
                <option>
                    Sint Maarten
                </option>
                <option>
                    Syria
                </option>
                <option>
                    Swaziland
                </option>
                <option>
                    Turks and Caicos Islands
                </option>
                <option>
                    Chad
                </option>
                <option>
                    French Southern Territories
                </option>
                <option>
                    Togo
                </option>
                <option>
                    Thailand
                </option>
                <option>
                    Tajikistan
                </option>
                <option>
                    Tokelau
                </option>
                <option>
                    East Timor
                </option>
                <option>
                    Turkmenistan
                </option>
                <option>
                    Tunisia
                </option>
                <option>
                    Tonga
                </option>
                <option>
                    Turkey
                </option>
                <option>
                    Trinidad and Tobago
                </option>
                <option>
                    Tuvalu
                </option>
                <option>
                    Taiwan
                </option>
                <option>
                    Tanzania
                </option>
                <option>
                    Ukraine
                </option>
                <option>
                    Uganda
                </option>
                <option>
                    U.S. Minor Outlying Islands
                </option>
                <option>
                    United States
                </option>
                <option>
                    Uruguay
                </option>
                <option>
                    Uzbekistan
                </option>
                <option>
                    Vatican City
                </option>
                <option>
                    Saint Vincent and the Grenadines
                </option>
                <option>
                    Venezuela
                </option>
                <option>
                    British Virgin Islands
                </option>
                <option>
                    U.S. Virgin Islands
                </option>
                <option>
                    Vietnam
                </option>
                <option>
                    Vanuatu
                </option>
                <option>
                    Wallis and Futuna
                </option>
                <option>
                    Samoa
                </option>
                <option>
                    Kosovo
                </option>
                <option>
                    Yemen
                </option>
                <option>
                    Mayotte
                </option>
                <option>
                    South Africa
                </option>
                <option>
                    Zambia
                </option>
                <option>
                    Zimbabwe
                </option>
            </select>
        </div>
        <div class="city col-md-6">
            <label for="city">Ville</label>
            <div class="">
                <select name="city" id="state_teacher">
                    <option value="Antananarivo">Antananarivo</option>
                    <option value="Toamasina">Toamasina</option>
                    <option value="Mahajanga">Mahajanga</option>
                    <option value="Fianarantsoa">Fianarantsoa</option>
                    <option value="Toliara">Toliara</option>
                    <option value="Antsiranana">Antiranana</option>
                    <option value="Autre">Autre</option>
                </select>
                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
            </div>
        </div>
    </div>
    <div class="est">
        <label for="student_educational_establishment">Etablissement scolaire</label>
        <select name="educational_establishment" id="educational_establishment">
            <option>
                Sayna
            </option>
            <option>
                Saint Michel Itaosy
            </option>
            <option>
                Esca Antanimena
            </option>
            <option>
                Saint François Xavier
            </option>
            <option>
                Collège de France
            </option>
            <option>
                Lycée Jule Ferry
            </option>
            <option>
                Saint Michel Amparibe
            </option>
            <option>Autre</option>
        </select>
    </div>
    <div class="row">
        <div class="subject col-md-6">
            <label for="student_subject">Matière préferée</label>
            <select name="subject" id="subject">
                <option>
                    Aléatoire
                </option>
                <option>
                    Maths / Mathematics
                </option>
                <option>
                    Algebra
                </option>
                <option>
                    Geometry
                </option>
                <option>
                    Science
                </option>
                <option>
                    Biology
                </option>
                <option>
                    Physics
                </option>
                <option>
                    Chemistry
                </option>
                <option>
                    Geography
                </option>
                <option>
                    History
                </option>
                <option>
                    Citizenship
                </option>
                <option>
                    Physical Education (P.E)
                </option>
                <option>
                    Business Studies
                </option>
                <option>
                    Home Economics
                </option>
                <option>
                    Art
                </option>
                <option>
                    Music
                </option>
            </select>
        </div>
        <div class="level col-md-6">
            <label for="student_level">Classe actuelle</label>
            <select name="level" id="level">
                <option>
                    6ème
                </option>
                <option>
                    5ème
                </option>
                <option>
                    4ème
                </option>
                <option>
                    3ème
                </option>
                <option>
                    2nde
                </option>
                <option>
                    1ère
                </option>
            </select>
        </div>
    </div>
</div>
<!-- End Student Form -->
`)
}
function showTeacherForm() {
$(`div.student_teacher_form:first`).html(`
<!-- Teacher Form -->
<div class="teacherDiv">
    <div class="inputloginbox">
        <input required="" type="text" value="" name="last_name" id="last_name">
        <label for="last_name">Nom</label><br>
    </div>
    <div class="inputloginbox">
        <input required="" type="text" value="" name="first_name" id="first_name">
        <label for="first_name">Prénom</label><br>
    </div>
    <div class="row">
        <div class="birthdate col-md-6">
            <label for="date_of_birth">Date de naissance</label>
            <input required="" type="date" value="" name="date_of_birth" id="date_of_birth" %>
        </div>
        <div class="address col-md-6" style="">
            <label for="address">Addresse</label>
            <input required="" type="text" value="" name="address" id="address" placeholder="65222 charline court">
        </div>
    </div>
    <div class="location row">
    	<div class="country col-md-6">
            <label for="student_country">Pays</label>
            <select name="country" id="country">
                <option>
                    Andorra
                </option>
                <option>
                    United Arab Emirates
                </option>
                <option>
                    Afghanistan
                </option>
                <option>
                    Antigua and Barbuda
                </option>
                <option>
                    Anguilla
                </option>
                <option>
                    Albania
                </option>
                <option>
                    Armenia
                </option>
                <option>
                    Angola
                </option>
                <option>
                    Antarctica
                </option>
                <option>
                    Argentina
                </option>
                <option>
                    American Samoa
                </option>
                <option>
                    Austria
                </option>
                <option>
                    Australia
                </option>
                <option>
                    Aruba
                </option>
                <option>
                    Åland
                </option>
                <option>
                    Azerbaijan
                </option>
                <option>
                    Bosnia and Herzegovina
                </option>
                <option>
                    Barbados
                </option>
                <option>
                    Bangladesh
                </option>
                <option>
                    Belgium
                </option>
                <option>
                    Burkina Faso
                </option>
                <option>
                    Bulgaria
                </option>
                <option>
                    Bahrain
                </option>
                <option>
                    Burundi
                </option>
                <option>
                    Benin
                </option>
                <option>
                    Saint-Barthélemy
                </option>
                <option>
                    Bermuda
                </option>
                <option>
                    Brunei
                </option>
                <option>
                    Bolivia
                </option>
                <option>
                    Bonaire
                </option>
                <option>
                    Brazil
                </option>
                <option>
                    Bahamas
                </option>
                <option>
                    Bhutan
                </option>
                <option>
                    Botswana
                </option>
                <option>
                    Belarus
                </option>
                <option>
                    Belize
                </option>
                <option>
                    Canada
                </option>
                <option>
                    Cocos [Keeling] Islands
                </option>
                <option>
                    Congo
                </option>
                <option>
                    Central African Republic
                </option>
                <option>
                    Republic of the Congo
                </option>
                <option>
                    Switzerland
                </option>
                <option>
                    Ivory Coast
                </option>
                <option>
                    Cook Islands
                </option>
                <option>
                    Chile
                </option>
                <option>
                    Cameroon
                </option>
                <option>
                    China
                </option>
                <option>
                    Colombia
                </option>
                <option>
                    country_name
                </option>
                <option>
                    Costa Rica
                </option>
                <option>
                    Cuba
                </option>
                <option>
                    Cape Verde
                </option>
                <option>
                    Curaçao
                </option>
                <option>
                    Christmas Island
                </option>
                <option>
                    Cyprus
                </option>
                <option>
                    Czech Republic
                </option>
                <option>
                    Germany
                </option>
                <option>
                    Djibouti
                </option>
                <option>
                    Denmark
                </option>
                <option>
                    Dominica
                </option>
                <option>
                    Dominican Republic
                </option>
                <option>
                    Algeria
                </option>
                <option>
                    Ecuador
                </option>
                <option>
                    Estonia
                </option>
                <option>
                    Egypt
                </option>
                <option>
                    Eritrea
                </option>
                <option>
                    Spain
                </option>
                <option>
                    Ethiopia
                </option>
                <option>
                    Finland
                </option>
                <option>
                    Fiji
                </option>
                <option>
                    Falkland Islands
                </option>
                <option>
                    Federated States of Micronesia
                </option>
                <option>
                    Faroe Islands
                </option>
                <option>
                    France
                </option>
                <option>
                    Gabon
                </option>
                <option>
                    United Kingdom
                </option>
                <option>
                    Grenada
                </option>
                <option>
                    Georgia
                </option>
                <option>
                    French Guiana
                </option>
                <option>
                    Guernsey
                </option>
                <option>
                    Ghana
                </option>
                <option>
                    Gibraltar
                </option>
                <option>
                    Greenland
                </option>
                <option>
                    Gambia
                </option>
                <option>
                    Guinea
                </option>
                <option>
                    Guadeloupe
                </option>
                <option>
                    Equatorial Guinea
                </option>
                <option>
                    Greece
                </option>
                <option>
                    South Georgia and the South Sandwich Islands
                </option>
                <option>
                    Guatemala
                </option>
                <option>
                    Guam
                </option>
                <option>
                    Guinea-Bissau
                </option>
                <option>
                    Guyana
                </option>
                <option>
                    Hong Kong
                </option>
                <option>
                    Honduras
                </option>
                <option>
                    Croatia
                </option>
                <option>
                    Haiti
                </option>
                <option>
                    Hungary
                </option>
                <option>
                    Indonesia
                </option>
                <option>
                    Ireland
                </option>
                <option>
                    Israel
                </option>
                <option>
                    Isle of Man
                </option>
                <option>
                    India
                </option>
                <option>
                    British Indian Ocean Territory
                </option>
                <option>
                    Iraq
                </option>
                <option>
                    Iran
                </option>
                <option>
                    Iceland
                </option>
                <option>
                    Italy
                </option>
                <option>
                    Jersey
                </option>
                <option>
                    Jamaica
                </option>
                <option>
                    Hashemite Kingdom of Jordan
                </option>
                <option>
                    Japan
                </option>
                <option>
                    Kenya
                </option>
                <option>
                    Kyrgyzstan
                </option>
                <option>
                    Cambodia
                </option>
                <option>
                    Kiribati
                </option>
                <option>
                    Comoros
                </option>
                <option>
                    Saint Kitts and Nevis
                </option>
                <option>
                    North Korea
                </option>
                <option>
                    Republic of Korea
                </option>
                <option>
                    Kuwait
                </option>
                <option>
                    Cayman Islands
                </option>
                <option>
                    Kazakhstan
                </option>
                <option>
                    Laos
                </option>
                <option>
                    Lebanon
                </option>
                <option>
                    Saint Lucia
                </option>
                <option>
                    Liechtenstein
                </option>
                <option>
                    Sri Lanka
                </option>
                <option>
                    Liberia
                </option>
                <option>
                    Lesotho
                </option>
                <option>
                    Republic of Lithuania
                </option>
                <option>
                    Luxembourg
                </option>
                <option>
                    Latvia
                </option>
                <option>
                    Libya
                </option>
                <option>
                    Morocco
                </option>
                <option>
                    Monaco
                </option>
                <option>
                    Republic of Moldova
                </option>
                <option>
                    Montenegro
                </option>
                <option>
                    Saint Martin
                </option>
                <option>
                    Madagascar
                </option>
                <option>
                    Marshall Islands
                </option>
                <option>
                    Macedonia
                </option>
                <option>
                    Mali
                </option>
                <option>
                    Myanmar [Burma]
                </option>
                <option>
                    Mongolia
                </option>
                <option>
                    Macao
                </option>
                <option>
                    Northern Mariana Islands
                </option>
                <option>
                    Martinique
                </option>
                <option>
                    Mauritania
                </option>
                <option>
                    Montserrat
                </option>
                <option>
                    Malta
                </option>
                <option>
                    Mauritius
                </option>
                <option>
                    Maldives
                </option>
                <option>
                    Malawi
                </option>
                <option>
                    Mexico
                </option>
                <option>
                    Malaysia
                </option>
                <option>
                    Mozambique
                </option>
                <option>
                    Namibia
                </option>
                <option>
                    New Caledonia
                </option>
                <option>
                    Niger
                </option>
                <option>
                    Norfolk Island
                </option>
                <option>
                    Nigeria
                </option>
                <option>
                    Nicaragua
                </option>
                <option>
                    Netherlands
                </option>
                <option>
                    Norway
                </option>
                <option>
                    Nepal
                </option>
                <option>
                    Nauru
                </option>
                <option>
                    Niue
                </option>
                <option>
                    New Zealand
                </option>
                <option>
                    Oman
                </option>
                <option>
                    Panama
                </option>
                <option>
                    Peru
                </option>
                <option>
                    French Polynesia
                </option>
                <option>
                    Papua New Guinea
                </option>
                <option>
                    Philippines
                </option>
                <option>
                    Pakistan
                </option>
                <option>
                    Poland
                </option>
                <option>
                    Saint Pierre and Miquelon
                </option>
                <option>
                    Pitcairn Islands
                </option>
                <option>
                    Puerto Rico
                </option>
                <option>
                    Palestine
                </option>
                <option>
                    Portugal
                </option>
                <option>
                    Palau
                </option>
                <option>
                    Paraguay
                </option>
                <option>
                    Qatar
                </option>
                <option>
                    Réunion
                </option>
                <option>
                    Romania
                </option>
                <option>
                    Serbia
                </option>
                <option>
                    Russia
                </option>
                <option>
                    Rwanda
                </option>
                <option>
                    Saudi Arabia
                </option>
                <option>
                    Solomon Islands
                </option>
                <option>
                    Seychelles
                </option>
                <option>
                    Sudan
                </option>
                <option>
                    Sweden
                </option>
                <option>
                    Singapore
                </option>
                <option>
                    Saint Helena
                </option>
                <option>
                    Slovenia
                </option>
                <option>
                    Svalbard and Jan Mayen
                </option>
                <option>
                    Slovakia
                </option>
                <option>
                    Sierra Leone
                </option>
                <option>
                    San Marino
                </option>
                <option>
                    Senegal
                </option>
                <option>
                    Somalia
                </option>
                <option>
                    Suriname
                </option>
                <option>
                    South Sudan
                </option>
                <option>
                    São Tomé and Príncipe
                </option>
                <option>
                    El Salvador
                </option>
                <option>
                    Sint Maarten
                </option>
                <option>
                    Syria
                </option>
                <option>
                    Swaziland
                </option>
                <option>
                    Turks and Caicos Islands
                </option>
                <option>
                    Chad
                </option>
                <option>
                    French Southern Territories
                </option>
                <option>
                    Togo
                </option>
                <option>
                    Thailand
                </option>
                <option>
                    Tajikistan
                </option>
                <option>
                    Tokelau
                </option>
                <option>
                    East Timor
                </option>
                <option>
                    Turkmenistan
                </option>
                <option>
                    Tunisia
                </option>
                <option>
                    Tonga
                </option>
                <option>
                    Turkey
                </option>
                <option>
                    Trinidad and Tobago
                </option>
                <option>
                    Tuvalu
                </option>
                <option>
                    Taiwan
                </option>
                <option>
                    Tanzania
                </option>
                <option>
                    Ukraine
                </option>
                <option>
                    Uganda
                </option>
                <option>
                    U.S. Minor Outlying Islands
                </option>
                <option>
                    United States
                </option>
                <option>
                    Uruguay
                </option>
                <option>
                    Uzbekistan
                </option>
                <option>
                    Vatican City
                </option>
                <option>
                    Saint Vincent and the Grenadines
                </option>
                <option>
                    Venezuela
                </option>
                <option>
                    British Virgin Islands
                </option>
                <option>
                    U.S. Virgin Islands
                </option>
                <option>
                    Vietnam
                </option>
                <option>
                    Vanuatu
                </option>
                <option>
                    Wallis and Futuna
                </option>
                <option>
                    Samoa
                </option>
                <option>
                    Kosovo
                </option>
                <option>
                    Yemen
                </option>
                <option>
                    Mayotte
                </option>
                <option>
                    South Africa
                </option>
                <option>
                    Zambia
                </option>
                <option>
                    Zimbabwe
                </option>
            </select>
        </div>
        <div class="city col-md-6">
            <label for="city">Ville</label>
            <div class="">
                <select name="city" id="state_teacher">
                    <option value="Antananarivo">Antananarivo</option>
                    <option value="Toamasina">Toamasina</option>
                    <option value="Mahajanga">Mahajanga</option>
                    <option value="Fianarantsoa">Fianarantsoa</option>
                    <option value="Toliara">Toliara</option>
                    <option value="Antsiranana">Antiranana</option>
                    <option value="Autre">Autre</option>
                </select>
                <span class="select-icon"><i class="zmdi zmdi-chevron-down"></i></span>
            </div>
        </div>
    </div>
    <div class="est">
        <label for="student_educational_establishment">Etablissement scolaire</label>
        <select name="educational_establishment" id="educational_establishment">
            <option>
                Sayna
            </option>
            <option>
                Saint Michel Itaosy
            </option>
            <option>
                Esca Antanimena
            </option>
            <option>
                Saint François Xavier
            </option>
            <option>
                Collège de France
            </option>
            <option>
                Lycée Jule Ferry
            </option>
            <option>
                Saint Michel Amparibe
            </option>
            <option>Autre</option>
        </select>
    </div>
    <div class="row">
        <div class="subject col-md-6">
            <label for="teacher_subject">Matière enseignée</label>
            <select name="subject" id="subject">
                <option>
                    Aléatoire
                </option>
                <option>
                    Maths / Mathematics
                </option>
                <option>
                    Algebra
                </option>
                <option>
                    Geometry
                </option>
                <option>
                    Science
                </option>
                <option>
                    Biology
                </option>
                <option>
                    Physics
                </option>
                <option>
                    Chemistry
                </option>
                <option>
                    Geography
                </option>
                <option>
                    History
                </option>
                <option>
                    Citizenship
                </option>
                <option>
                    Physical Education (P.E)
                </option>
                <option>
                    Business Studies
                </option>
                <option>
                    Home Economics
                </option>
                <option>
                    Art
                </option>
                <option>
                    Music
                </option>
            </select>
        </div>
        <div class="level col-md-6">
            <label for="teacher_degrees">Diplomes</label>
            <select name="degrees" id="degrees">
                <option>
                    Associate's degree
                </option>
                <option>
                    Bachelor's degree
                </option>
                <option>
                    Master's degree
                </option>
                <option>
                    Doctoral degree
                </option>
                <option>
                    Profesional degree
                </option>
            </select>
        </div>
    </div>
</div>
<!-- End Teacher Form -->
`)
}
function registrationCarousel() {
let def = -1;
// Registration carousel
$(`div.def`).hide();
$(`button.previous_step:first`).hide();
$(`button.next_step:first`).on('click', function() {
if (def == -1) {
$(`div.intro:first`).remove();
$(`button.previous_step:first`).show();
}
$(`div.def`).eq(def).hide();
(def + 1 == $(`div.def`).length) ? def = 0: def += 1;
$(`div.def`).eq(def).show();
})
$(`button.previous_step:first`).on('click', function() {
$(`div.def`).eq(def).hide();
(def - 1 == -1) ? def = $(`div.def`).length - 1: def -= 1;
$(`div.def`).eq(def).show();
})
}
registrationCarousel();
function checkUserStatus() {
$("select.user_status").change(function() {
let selectedUserStatus = $(this).children("option:selected").val();
// alert("You have selected the status - " + selectedUserStatus);
if (selectedUserStatus == "Eleve") {
showStudentForm();
} else if (selectedUserStatus == "Professeur") {
showTeacherForm();
} else {
$(`div.student_teacher_form:first`).html(``);
}
});
}
checkUserStatus();
});