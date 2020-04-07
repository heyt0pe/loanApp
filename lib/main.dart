import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:infinity_page_view/infinity_page_view.dart';
import 'package:loan/signup.dart';
import 'package:loan/signin.dart';

import 'dart:async';
import 'dart:io';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Loan',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Color.fromRGBO(57, 24, 79, 1),
        accentColor: Colors.white,
      ),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  InfinityPageController infinityPageController = new InfinityPageController(
    initialPage: 0,
    viewportFraction: 0.8,
  );

  double height1 = 350;
  double height2 = 350;
  double height3 = 350;
  var pageContext;
  bool contextSet = false;
  Timer timer;
  int index = 0;

  InfinityPageController textPageController = new InfinityPageController();

  Color second = Colors.transparent;
  Color third = Colors.transparent;

  getContext(context) {
    if (!contextSet) {
      pageContext = context;
      height1 = (MediaQuery.of(pageContext).size.height * 0.5);
      height2 = (MediaQuery.of(pageContext).size.height * 0.5) -
          (MediaQuery.of(pageContext).size.height * 0.035);
      height3 = (MediaQuery.of(pageContext).size.height * 0.5) -
          (MediaQuery.of(pageContext).size.height * 0.035);
      contextSet = true;
    }
  }

  onImageChange(int page) {
    index = page;
    setState(() {
      textPageController.jumpToPage(page);
      if (page == 0) {
        height1 = (MediaQuery.of(pageContext).size.height * 0.5);
        height2 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        height3 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        second = Colors.transparent;
        third = Colors.transparent;
      } else if (page == 1) {
        height1 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        height2 = (MediaQuery.of(pageContext).size.height * 0.5);
        height3 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        second = Color.fromRGBO(57, 24, 79, 1);
        third = Colors.transparent;
      } else if (page == 2) {
        height1 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        height2 = (MediaQuery.of(pageContext).size.height * 0.5) -
            (MediaQuery.of(pageContext).size.height * 0.035);
        height3 = (MediaQuery.of(pageContext).size.height * 0.5);
        second = Color.fromRGBO(57, 24, 79, 1);
        third = Color.fromRGBO(57, 24, 79, 1);
      }
    });
  }

  carousel() {
    try {
      infinityPageController.animateToPage(
        index + 1,
        duration: Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } catch (e) {}
  }

  void initState() {
    super.initState();
    timer = Timer.periodic(
      Duration(milliseconds: 4500),
      (timer) => carousel(),
    );
  }

  @override
  Widget build(BuildContext context) {
    getContext(context);

    return Scaffold(
      body: Container(
        margin: MediaQuery.of(context).padding,
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Container(
                    height: MediaQuery.of(context).size.height * 0.5,
                    child: InfinityPageView(
                      controller: infinityPageController,
                      itemCount: 3,
                      itemBuilder: (BuildContext context, int index) {
                        switch (index) {
                          case 0:
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 250),
                                  height: height1,
                                  width:
                                      MediaQuery.of(pageContext).size.height *
                                          0.75,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Image.asset(
                                      'assets/images/1.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            );
                          case 1:
                            return Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                AnimatedContainer(
                                  duration: Duration(milliseconds: 250),
                                  height: height2,
                                  width:
                                      MediaQuery.of(pageContext).size.height *
                                          0.75,
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                    child: Image.asset(
                                      'assets/images/2.png',
                                      fit: BoxFit.fill,
                                    ),
                                  ),
                                ),
                              ],
                            );
                        }
                        return Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            AnimatedContainer(
                              duration: Duration(milliseconds: 250),
                              height: height3,
                              width:
                                  MediaQuery.of(pageContext).size.height * 0.75,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 0, 10, 0),
                                child: Image.asset(
                                  'assets/images/3.png',
                                  fit: BoxFit.fill,
                                ),
                              ),
                            ),
                          ],
                        );
                      },
                      onPageChanged: onImageChange,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20),
                  child: Container(
                    color: Color.fromRGBO(235, 235, 235, 1),
                    width: MediaQuery.of(context).size.width * 0.3,
                    height: 3,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          color: Color.fromRGBO(57, 24, 79, 1),
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: 3,
                        ),
                        Container(
                          color: second,
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: 3,
                        ),
                        Container(
                          color: third,
                          width: MediaQuery.of(context).size.width * 0.1,
                          height: 3,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(5),
                  child: Text(
                    'Welcome to Aculoan',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Colors.black,
                      fontSize: 26,
                    ),
                  ),
                ),
                Container(
                  height: 70,
                  width: MediaQuery.of(context).size.width * 0.75,
                  child: InfinityPageView(
                    controller: textPageController,
                    itemCount: 3,
                    physics: new NeverScrollableScrollPhysics(),
                    itemBuilder: (BuildContext context, int index) {
                      switch (index) {
                        case 0:
                          return Center(
                            child: Text(
                              'Great benefits with joining our family, never go broke again.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 18,
                              ),
                            ),
                          );
                        case 1:
                          return Center(
                            child: Text(
                              'We offer great and better securities at on lonas taken.',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(153, 153, 153, 1),
                                fontSize: 18,
                              ),
                            ),
                          );
                      }
                      return Center(
                        child: Text(
                          'Get a loan today with the best minimum interest rate.',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(153, 153, 153, 1),
                            fontSize: 18,
                          ),
                        ),
                      );
                    },
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
                            builder: (context) => SignUp(),
                          ),
                        );
                      },
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Center(
                        child: Text(
                          "GET STARTED",
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
                  padding: const EdgeInsets.fromLTRB(0, 7, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.9,
                    height: 56,
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 1,
                          color: Color.fromRGBO(153, 153, 153, 0.3),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width * 0.9,
                          height: 55,
                          child: RaisedButton(
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => SignIn(),
                                ),
                              );
                            },
                            color: Colors.white,
                            child: Center(
                              child: Text(
                                "LOGIN",
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(57, 24, 79, 1),
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
      ),
    );
  }
}
