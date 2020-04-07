import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/personal.dart';

class Welcome extends StatefulWidget {
  @override
  _WelcomeState createState() => _WelcomeState();
}

class _WelcomeState extends State<Welcome> {
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
        elevation: 0,
      ),
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    child: Image.asset(
                      'assets/images/tasks.png',
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Welcome Precious!',
                    style: TextStyle(
                      fontSize: 22,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(0, 0, 0, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Text(
                    'Your details have been taken down and your account created. We just need one more thing from you before you begin.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(151, 151, 151, 1),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 15, 0, 7),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 56,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => Personal(),
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
      ),
    );
  }
}
