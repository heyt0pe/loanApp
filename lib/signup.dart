import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/welcome.dart';
import 'package:loan/signin.dart';


class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
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
                      Text(
                        'Get Started!',
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
                          'Fill in the following fields with the appropriate records to start using Aculoan',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(153, 153, 153, 1),
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
                              labelText: 'Full Name',
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
                              labelText: 'Email',
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
                                      contentPadding: const EdgeInsets.fromLTRB(
                                          26, 0, 0, 0),
                                      enabledBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                          color: Color.fromRGBO(0, 0, 0, 0),
                                          width: 0.0,
                                        ),
                                      ),
                                      focusedBorder: OutlineInputBorder(
                                        borderSide: const BorderSide(
                                            color: Colors.transparent,
                                            width: 0.0),
                                        borderRadius:
                                            BorderRadius.circular(0.0),
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
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Password',
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
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(128, 128, 128, 1),
                            ),
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              labelText: 'Re-enter Password',
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
                        padding: const EdgeInsets.fromLTRB(0, 15, 0, 20),
                        child: Text(
                          'By signing up you agree to the Terms & Conditions protexted under the law of Aculoan',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
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
                                  builder: (context) => Welcome(),
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
              Padding(
                padding: const EdgeInsets.fromLTRB(10, 8, 10, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Text(
                      'Already have an account? ',
                      style: TextStyle(
                        fontSize: 14,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(153, 153, 153, 1),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignIn(),
                          ),
                        );
                      },
                      child: Text(
                        'Sign In',
                        style: TextStyle(
                          fontSize: 16,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w800,
                          color: Color.fromRGBO(57, 24, 79, 1),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
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
            ],
          ),
        ),
      ),
    );
  }
}
