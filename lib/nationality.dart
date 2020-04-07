import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/bank.dart';

class Nationality extends StatefulWidget {
  @override
  _NationalityState createState() => _NationalityState();
}

class _NationalityState extends State<Nationality> {
  List<String> nationality = [
    "Afghanistan",
    "Albania",
    "Algeria",
    "American Samoa",
    "Andorra",
    "Angola",
    "Anguilla",
    "Antarctica",
    "Antigua and Barbuda",
    "Argentina",
    "Armenia",
    "Aruba",
    "Australia",
    "Austria",
    "Azerbaijan",
    "Bahamas",
    "Bahrain",
    "Bangladesh",
    "Barbados",
    "Belarus",
    "Belgium",
    "Belize",
    "Benin",
    "Bermuda",
    "Bhutan",
    "Bolivia",
    "Bonaire",
    "Bosnia and Herzegovina",
    "Botswana",
    "Bouvet Island",
    "Brazil",
    "Brunei Darussalam",
    "Bulgaria",
    "Burkina Faso",
    "Burundi",
    "Cabo Verde",
    "Cambodia",
    "Cameroon",
    "Canada",
    "Cayman Islands",
    "Central African Republic",
    "Chad",
    "Chile",
    "China",
    "Christmas Island",
    "Cocos Islands",
    "Colombia",
    "Comoros",
    "Congo",
    "Congo",
    "Cook Islands",
    "Costa Rica",
    "Croatia",
    "Cuba",
    "Curaçao",
    "Cyprus",
    "Czechia",
    "Côte d'Ivoire",
    "Denmark",
    "Djibouti",
    "Dominica",
    "Dominican Republic",
    "Ecuador",
    "Egypt",
    "El Salvador",
    "Equatorial Guinea",
    "Eritrea",
    "Estonia",
    "Eswatini",
    "Ethiopia",
    "Falkland Islands",
    "Faroe Islands",
    "Fiji",
    "Finland",
    "France",
    "French Guiana",
    "French Polynesia",
    "Gabon",
    "Gambia",
    "Georgia",
    "Germany",
    "Ghana",
    "Gibraltar",
    "Greece",
    "Greenland",
    "Grenada",
    "Guadeloupe",
    "Guam",
    "Guatemala",
    "Guernsey",
    "Guinea",
    "Guinea-Bissau",
    "Guyana",
    "Haiti",
    "Holy See",
    "Honduras",
    "Hong Kong",
    "Hungary",
    "Iceland",
    "India",
    "Indonesia",
    "Iran",
    "Iraq",
    "Ireland",
    "Isle of Man",
    "Israel",
    "Italy",
    "Jamaica",
    "Japan",
    "Jersey",
    "Jordan",
    "Kazakhstan",
    "Kenya",
    "Kiribati",
    "North Korea",
    "South Korea",
    "Kuwait",
    "Kyrgyzstan",
    "Lao People's Democratic Republic",
    "Latvia",
    "Lebanon",
    "Lesotho",
    "Liberia",
    "Libya",
    "Liechtenstein",
    "Lithuania",
    "Luxembourg",
    "Macao",
    "Madagascar",
    "Malawi",
    "Malaysia",
    "Maldives",
    "Mali",
    "Malta",
    "Marshall Islands",
    "Martinique",
    "Mauritania",
    "Mauritius",
    "Mayotte",
    "Mexico",
    "Micronesia",
    "Moldova",
    "Monaco",
    "Mongolia",
    "Montenegro",
    "Montserrat",
    "Morocco",
    "Mozambique",
    "Myanmar",
    "Namibia",
    "Nauru",
    "Nepal",
    "Netherlands",
    "New Caledonia",
    "New Zealand",
    "Nicaragua",
    "Niger",
    "Nigeria",
    "Niue",
    "Norfolk Island",
    "North Macedonia",
    "Northern Mariana Islands",
    "Norway",
    "Oman",
    "Pakistan",
    "Palau",
    "Palestine, State of",
    "Panama",
    "Papua New Guinea",
    "Paraguay",
    "Peru",
    "Philippines",
    "Pitcairn",
    "Poland",
    "Portugal",
    "Puerto Rico",
    "Qatar",
    "Romania",
    "Russian Federation",
    "Rwanda",
    "Réunion",
    "Saint Barthélemy",
    "Saint Kitts and Nevis",
    "Saint Lucia",
    "Saint Martin",
    "Saint Pierre and Miquelon",
    "Samoa",
    "San Marino",
    "Sao Tome and Principe",
    "Saudi Arabia",
    "Senegal",
    "Serbia",
    "Seychelles",
    "Sierra Leone",
    "Singapore",
    "Sint Maarten",
    "Slovakia",
    "Slovenia",
    "Solomon Islands",
    "Somalia",
    "South Africa",
    "South Sudan",
    "Spain",
    "Sri Lanka",
    "Sudan",
    "Suriname",
    "Svalbard and Jan Mayen",
    "Sweden",
    "Switzerland",
    "Syrian Arab Republic",
    "Taiwan",
    "Tajikistan",
    "Tanzania, United Republic of",
    "Thailand",
    "Timor-Leste",
    "Togo",
    "Tokelau",
    "Tonga",
    "Trinidad and Tobago",
    "Tunisia",
    "Turkey",
    "Turkmenistan",
    "Turks and Caicos Islands",
    "Tuvalu",
    "Uganda",
    "Ukraine",
    "United Arab Emirates",
    "United Kingdom",
    "United States",
    "Uruguay",
    "Uzbekistan",
    "Vanuatu",
    "Venezuela",
    "Viet Nam",
    "Virgin Islands (British)",
    "Virgin Islands (U.S.)",
    "Wallis and Futuna",
    "Western Sahara",
    "Yemen",
    "Zambia",
    "Zimbabwe",
    "Åland Islands"
  ];
  String selectedNationality = "Nigeria";

  List<String> state = [
    'Lagos',
    'Abuja',
    'Ibadan',
    'Enugu',
    'Kaduna',
    'Calabar',
  ];
  String selectedState = 'Lagos';

  List<String> lga = [
  "Agege",
  "Ajeromi-Ifelodun",
  "Alimosho",
  "Amuwo-Odofin",
  "Apapa",
  "Badagry",
  "Epe",
  "Eti Osa",
  "Ibeju-Lekki",
  "Ifako-Ijaiye",
  "Ikeja",
  "Ikorodu",
  "Kosofe",
  "Lagos Island",
  "Lagos Mainland",
  "Mushin",
  "Ojo",
  "Oshodi-Isolo",
  "Shomolu",
  "Surulere"
  ];
  String selectedLga = 'Ikeja';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              SingleChildScrollView(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Row(
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Color.fromRGBO(57, 24, 79, 1),
                            ),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          ),
                          Text(
                            'Back',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(57, 24, 79, 1),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(17, 17, 17, 5),
                      child: Container(
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                              child: Row(
                                children: <Widget>[
                                  Column(
                                    children: <Widget>[
                                      Row(
                                        children: <Widget>[
                                          Container(
                                            width: 11,
                                            height: 11,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topLeft: Radius.circular(11),
                                              ),
                                              border: Border(
                                                top: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                left: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                right: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                bottom: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                              ),
                                              color: Color.fromRGBO(57, 24, 79, 1)
                                            ),
                                          ),
                                          Container(
                                            width: 11,
                                            height: 11,
                                            decoration: BoxDecoration(
                                              borderRadius: BorderRadius.only(
                                                topRight: Radius.circular(11),
                                              ),
                                              border: Border(
                                                top: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                left: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                right: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                                bottom: BorderSide(
                                                  style: BorderStyle.solid,
                                                  width: 1,
                                                  color: Color.fromRGBO(57, 24, 79, 1),
                                                ),
                                              ),
                                              color: Colors.white,
                                            ),
                                          ),
                                        ],
                                      ),
                                      Container(
                                        width: 22,
                                        height: 11,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(13),
                                            bottomRight: Radius.circular(13),
                                          ),
                                          color: Color.fromRGBO(57, 24, 79, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    ' Nationality & Residential Details',
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(0, 0, 0, 1),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  value: selectedNationality,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedNationality = newValue;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nationality',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  items: nationality.map((nationality) {
                                    return DropdownMenuItem(
                                      child: new Text(nationality),
                                      value: nationality,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  value: selectedState,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedState = newValue;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nationality',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  items: state.map((state) {
                                    return DropdownMenuItem(
                                      child: new Text(state),
                                      value: state,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  value: selectedLga,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedLga = newValue;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Nationality',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  items: lga.map((lga) {
                                    return DropdownMenuItem(
                                      child: new Text(lga),
                                      value: lga,
                                    );
                                  }).toList(),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 7),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.9,
                                height: 56,
                                child: RaisedButton(
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => Bank(),
                                      ),
                                    );
                                  },
                                  color: Color.fromRGBO(57, 24, 79, 1),
                                  child: Center(
                                    child: Text(
                                      "CONTINUE",
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(5, 10, 5, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Protected by the rights from the ',
                      style: TextStyle(
                        fontSize: 11,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                        color: Color.fromRGBO(153, 153, 153, 1),
                      ),
                    ),
                    Text(
                      'Aculoan Privacy Policy',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(57, 24, 79, 1),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
