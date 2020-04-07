import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/nationality.dart';

class Business extends StatefulWidget {
  @override
  _BusinessState createState() => _BusinessState();
}

class _BusinessState extends State<Business> {
  List<String> employment = [
    'Part Time Employment',
    'Full Time Employment',
    'Self Employed',
    'Student',
  ];
  String selectedEmployment;

  List<String> year = [
    '<1 Year',
    '1 - 3 Years',
    '3 - 7 Years',
    '7 - 10 Years',
    '>10 Years',
  ];
  String selectedYear;

  TextEditingController dob = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Container(
            height: MediaQuery.of(context).size.height,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Column(
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
                                      Container(
                                        width: 22,
                                        height: 11,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            topLeft: Radius.circular(11),
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
                                      Container(
                                        width: 22,
                                        height: 11,
                                        decoration: BoxDecoration(
                                          borderRadius: BorderRadius.only(
                                            bottomLeft: Radius.circular(11),
                                            bottomRight: Radius.circular(11),
                                          ),
                                          color: Color.fromRGBO(57, 24, 79, 1),
                                        ),
                                      ),
                                    ],
                                  ),
                                  Text(
                                    ' Business Details',
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
                                  value: selectedEmployment,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedEmployment = newValue;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Employment Status',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  items: employment.map((employment) {
                                    return DropdownMenuItem(
                                      child: new Text(employment),
                                      value: employment,
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
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(128, 128, 128, 1),
                                  ),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Name of Organization',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: TextFormField(
                                  keyboardType: TextInputType.text,
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w500,
                                    color: Color.fromRGBO(128, 128, 128, 1),
                                  ),
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Address of Organization',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                              child: Container(
                                width: MediaQuery.of(context).size.width,
                                height: 60,
                                child: DropdownButtonFormField(
                                  value: selectedYear,
                                  onChanged: (newValue) {
                                    setState(() {
                                      selectedYear = newValue;
                                    });
                                  },
                                  decoration: const InputDecoration(
                                    border: OutlineInputBorder(),
                                    labelText: 'Number of Years in Organization',
                                    labelStyle: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.normal,
                                      fontSize: 16.0,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  items: year.map((year) {
                                    return DropdownMenuItem(
                                      child: new Text(year),
                                      value: year,
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
                                        builder: (context) => Nationality(),
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
                Transform.translate(
                  offset: Offset(0, -15),
                  child: Padding(
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
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
