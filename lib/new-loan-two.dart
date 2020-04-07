import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/home.dart';

class NewLoanContd extends StatefulWidget {
  @override
  _NewLoanContdState createState() => _NewLoanContdState();
}

class _NewLoanContdState extends State<NewLoanContd> {
  Future<void> proceed() async {
    return showDialog<void>(
        context: context,
        barrierDismissible: true, // user must tap button!
        builder: (BuildContext context) {
          return Material(
            type: MaterialType.transparency,
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(17, 100, 17, 20),
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(50),
                    ),
                    color: Color.fromRGBO(57, 24, 79, 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(18, 20, 18, 40),
                    child: Column(
                      children: <Widget>[
                        Icon(
                          Icons.warning,
                          size: 55,
                          color: Color.fromRGBO(230, 78, 0, 1),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                          child: Text(
                            'Alert',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 20,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Text(
                            'Your loan approval is on hold. Your Next of Kin is to chek their email for a confirmation email to continue loan approval',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Home(),
                                ),
                              );
                            },
                            child: Container(
                              width: MediaQuery.of(context).size.width,
                              height: 50,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(25),
                                ),
                                color: Color.fromRGBO(230, 78, 0, 1),
                              ),
                              child: Center(
                                child: Text(
                                  'HOME',
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
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          );
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        centerTitle: true,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Text(
          'NEW LOAN REQUEST',
          style: TextStyle(
            fontFamily: 'Gilroy',
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color.fromRGBO(16, 16, 16, 1),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          child: Padding(
            padding: const EdgeInsets.fromLTRB(15, 20, 15, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(
                    'In order to continue the request, kindly put in the correct details of your next of kin.',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(123, 123, 123, 1),
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
                        labelText: 'Next of Kin Name',
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
                        labelText: 'Next of Kin Address',
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
                    decoration: BoxDecoration(
                      border: Border(
                        top: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                        bottom: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                        left: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                        right: BorderSide(
                          width: 1.0,
                          color: Color.fromRGBO(153, 153, 153, 1),
                        ),
                      ),
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 0, 10, 0),
                          child: Text(
                            '+234',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                          ),
                        ),
                        Container(
                          height: 45,
                          width: 1,
                          color: Color.fromRGBO(151, 151, 151, 1),
                        ),
                        Expanded(
                          child: TextFormField(
                            keyboardType: TextInputType.number,
                            decoration: InputDecoration(
                                contentPadding:
                                    const EdgeInsets.fromLTRB(26, 0, 0, 0),
                                enabledBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                    color: Color.fromRGBO(0, 0, 0, 0),
                                    width: 0.0,
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderSide: const BorderSide(
                                      color: Colors.transparent, width: 0.0),
                                  borderRadius: BorderRadius.circular(0.0),
                                ),
                                hintText: 'Phone Number'),
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                          ),
                        ),
                      ],
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
                        labelText: 'Next of Kin BVN',
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
                      keyboardType: TextInputType.emailAddress,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(128, 128, 128, 1),
                      ),
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                        labelText: 'Next of Kin Email',
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
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 7),
                  child: Container(
                    height: 56,
                    child: RaisedButton(
                      onPressed: () {
                        proceed();
                      },
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Center(
                        child: Text(
                          "PROCEED",
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
