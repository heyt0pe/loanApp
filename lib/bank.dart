import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/home.dart';

class Bank extends StatefulWidget {
  @override
  _BankState createState() => _BankState();
}

class _BankState extends State<Bank> {
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
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        child: SingleChildScrollView(
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
                            Container(
                              width: 22,
                              height: 22,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(11),
                                ),
                                color: Color.fromRGBO(57, 24, 79, 1),
                              ),
                            ),
                            Text(
                              ' Bank Information',
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
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w500,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'BVN Number',
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
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                        child: Text(
                          'We are required by the Federal Law to collect your information to help prevent fraud and money laundering',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 25, 0, 5),
                        child: Text(
                          'Card Details',
                          style: TextStyle(
                            fontSize: 19,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(0, 0, 0, 1),
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
                              labelText: 'Name as Show on Card',
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
                              labelText: 'Card Number',
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
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                        child: Container(
                          width: 200,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                    child: Text(
                                      'Exp. Date',
                                      style: TextStyle(
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
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
                                          hintText: 'mm/yy'),
                                    ),
                                  )
                                ],
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(0, 0, 0, 3),
                                    child: Text(
                                      'CVV',
                                      style: TextStyle(
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12.0,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: 80,
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
                                          contentPadding:
                                              const EdgeInsets.fromLTRB(
                                                  25, 15, 15, 25),
                                          border: OutlineInputBorder(),
                                          hintText: '000'),
                                    ),
                                  )
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 5, 0, 20),
                        child: Text(
                          'We are required by the Federal Law to collect your information to help prevent fraud and money laundering',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w500,
                            color: Color.fromRGBO(153, 153, 153, 1),
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
                                  builder: (context) => Home(),
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
                      Padding(
                        padding: const EdgeInsets.fromLTRB(5, 20, 5, 10),
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
            ],
          ),
        ),
      ),
    );
  }
}
