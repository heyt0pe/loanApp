import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loan/business.dart';

class Personal extends StatefulWidget {
  @override
  _PersonalState createState() => _PersonalState();
}

class _PersonalState extends State<Personal> {
  List<String> gender = [
    'Male',
    'Female',
    'Other',
  ];
  String selectedGender;

  List<String> nextOfKin = [
    'Sibling',
    'Spouse',
    'Friend',
  ];
  String selectedNextOfKin;

  TextEditingController dob = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(10, 2, 10, 20),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Protected by the rights from the ',
                style: TextStyle(
                  fontSize: 13,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                  color: Color.fromRGBO(153, 153, 153, 1),
                ),
              ),
              Text(
                'Aculoan Privacy Policy',
                style: TextStyle(
                  fontSize: 14,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w800,
                  color: Color.fromRGBO(57, 24, 79, 1),
                ),
              ),
            ],
          ),
        ),
        elevation: 0,
      ),
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(17, 17, 17, 5),
                child: Container(
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Complete Your Profile!',
                        style: TextStyle(
                          fontSize: 22,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                          color: Color.fromRGBO(0, 0, 0, 1),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 20),
                        child: Text(
                          'We are required by the Federal Law to collect your information to help prevent fraud and money laundering',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 5),
                        child: Row(
                          children: <Widget>[
                            Stack(
                              children: <Widget>[
                                Container(
                                  width: 22,
                                  height: 22,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.all(
                                      Radius.circular(11),
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
                                  height: 22,
                                  child: Align(
                                    alignment: Alignment.bottomRight,
                                    child: Container(
                                      width: 11,
                                      height: 11,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.only(
                                          bottomRight: Radius.circular(11),
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
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            Text(
                              ' Personal Details',
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
                            value: selectedGender,
                            onChanged: (newValue) {
                              setState(() {
                                selectedGender = newValue;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Gender',
                              labelStyle: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                color: Color.fromRGBO(57, 24, 79, 1),
                              ),
                            ),
                            items: gender.map((genderDropdown) {
                              return DropdownMenuItem(
                                child: new Text(genderDropdown),
                                value: genderDropdown,
                              );
                            }).toList(),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 56,
                              child: TextFormField(
                                keyboardType: TextInputType.text,
                                controller: dob,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(128, 128, 128, 1),
                                ),
                                decoration: const InputDecoration(
                                  prefixIcon: Icon(Icons.date_range),
                                  border: OutlineInputBorder(),
                                  labelText: 'Date Of Birth',
                                  labelStyle: TextStyle(
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.normal,
                                    fontSize: 16.0,
                                    color: Color.fromRGBO(57, 24, 79, 1),
                                  ),
                                ),
                              ),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width,
                              height: 56,
                              child: Theme(
                                data: ThemeData(
                                  primarySwatch: Colors.deepPurple,
                                ),
                                child: Builder(
                                  builder: (context) => GestureDetector(
                                    onTap: () {
                                      showDatePicker(
                                        context: context,
                                        initialDate: DateTime.now().add(
                                          Duration(
                                            days: 1,
                                          ),
                                        ),
                                        firstDate: DateTime.now(),
                                        lastDate: DateTime.now().add(
                                          Duration(
                                            days: 30,
                                          ),
                                        ),
                                      ).then((date) {
                                        if (date != null) {
                                          setState(() {
                                            dob.text = DateFormat("d, MMM y")
                                                .format(date)
                                                .toString();
                                          });
                                        }
                                      });
                                    },
                                    child: Container(
                                      color: Colors.transparent,
                                    ),
                                  ),
                                ),
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
                          child: TextFormField(
                            keyboardType: TextInputType.text,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Home Address',
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
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Next of Kin',
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
                            value: selectedNextOfKin,
                            onChanged: (newValue) {
                              setState(() {
                                selectedNextOfKin = newValue;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Relationship with Next of Kin',
                              labelStyle: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.normal,
                                fontSize: 16.0,
                                color: Color.fromRGBO(57, 24, 79, 1),
                              ),
                            ),
                            items: nextOfKin.map((nextOfKin) {
                              return DropdownMenuItem(
                                child: new Text(nextOfKin),
                                value: nextOfKin,
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
                                  builder: (context) => Business(),
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
      ),
    );
  }
}
