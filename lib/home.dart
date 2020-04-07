import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/notifications.dart';
import 'package:loan/loan-info.dart';
import 'package:loan/withdraw.dart';
import 'package:loan/new-loan-one.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentIndex = 0;

  bool notifications = true;

  bool todo = true;

  List<String> account = [
    'Debit',
    'Credit',
  ];
  String selectedAccount = 'Debit';

  Widget view(context, index) {
    List views = [
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 0,
          centerTitle: false,
          automaticallyImplyLeading: false,
          title: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                child: Image.asset('assets/images/profile.png'),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Precious Ogar',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 20,
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(16, 16, 16, 1),
                    ),
                  ),
                  Text(
                    '720 Credit Score',
                    style: TextStyle(
                      fontFamily: 'Gilroy',
                      fontSize: 16,
                      color: Color.fromRGBO(92, 219, 142, 1),
                    ),
                  ),
                ],
              )
            ],
          ),
          actions: <Widget>[
            Transform.translate(
              offset: Offset(-15, 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    new Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(93, 93, 93, 1),
                      size: 40,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 78, 0, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 20,
                            minHeight: 17,
                          ),
                          child: Text(
                            '1',
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(15, 30, 15, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'DASHBOARD',
                    style: TextStyle(
                      fontSize: 14,
                      fontFamily: 'Gilroy',
                      fontWeight: FontWeight.w600,
                      color: Color.fromRGBO(61, 61, 61, 1),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      child: Card(
                        elevation: 5,
                        color: Color.fromRGBO(57, 24, 79, 1),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: SvgPicture.asset(
                                    "assets/svg/chart.svg",
                                    width: 50,
                                    height: 50,
                                    color: Colors.white,
                                  ),
                                ),
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(0, 15, 0, 15),
                                  child: Container(
                                    height: 55,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: <Widget>[
                                        Text(
                                          'AVAILABLE FUND',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          'N20,900,000',
                                          style: TextStyle(
                                            fontSize: 29,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Colors.white,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 120,
                      child: Card(
                        elevation: 5,
                        color: Color.fromRGBO(229, 243, 254, 1),
                        child: Center(
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(20, 5, 20, 5),
                                  child: Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.45,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 5, 0, 5),
                                          child: Text(
                                            'Manage Loans',
                                            style: TextStyle(
                                              fontSize: 18,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(230, 78, 0, 1),
                                            ),
                                          ),
                                        ),
                                        Text(
                                          'Start and complete loan plans. View reports and stats on loan services.',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                181, 181, 181, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Image.asset('assets/images/money.png')
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 10, 5, 5),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'TO-DO',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(61, 61, 61, 1),
                          ),
                        ),
                        GestureDetector(
                          child: Icon(
                            (todo) ? Icons.visibility_off : Icons.visibility,
                            color: Color.fromRGBO(232, 89, 16, 1),
                          ),
                          onTap: () {
                            setState(() {
                              todo = !todo;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  (todo)
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 56,
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Confirm Email Address',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(77, 77, 77, 1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: Color.fromRGBO(77, 77, 77, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  (todo)
                      ? Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 15),
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            height: 56,
                            child: Card(
                              elevation: 5,
                              child: Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Add Transaction Pin',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(77, 77, 77, 1),
                                      ),
                                    ),
                                    Icon(
                                      Icons.chevron_right,
                                      color: Color.fromRGBO(77, 77, 77, 1),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        )
                      : Container(),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 15, 5, 10),
                    child: Text(
                      'RECENT ACTIVITES',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(61, 61, 61, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Wallet Top-up',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Wallet Top-up',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 18,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
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
      ),
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'LOANS',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(16, 16, 16, 1),
            ),
          ),
          actions: <Widget>[
            Transform.translate(
              offset: Offset(-15, 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    new Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(93, 93, 93, 1),
                      size: 40,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 78, 0, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 20,
                            minHeight: 17,
                          ),
                          child: Text(
                            '1',
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 10, 0, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                      height: 115,
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 5, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 115,
                                child: Card(
                                  color: Color.fromRGBO(52, 198, 53, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 3, 0, 3),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 10, 0),
                                          child: Icon(
                                            Icons.show_chart,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 57,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'LOANS COLLECTED',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '10',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 115,
                                child: Card(
                                  color: Color.fromRGBO(0, 122, 255, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 3, 0, 3),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 10, 0),
                                          child: Icon(
                                            Icons.priority_high,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 57,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'PENDING LOANS',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '3',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(5, 0, 20, 0),
                              child: Container(
                                width: MediaQuery.of(context).size.width * 0.6,
                                height: 115,
                                child: Card(
                                  color: Color.fromRGBO(255, 53, 75, 1),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 3, 0, 3),
                                    child: Row(
                                      children: <Widget>[
                                        Padding(
                                          padding: const EdgeInsets.fromLTRB(
                                              0, 0, 10, 0),
                                          child: Icon(
                                            Icons.close,
                                            size: 40,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Container(
                                          height: 57,
                                          child: Column(
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text(
                                                'REJECTED LOANS',
                                                style: TextStyle(
                                                  fontSize: 16,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w600,
                                                  color: Colors.white,
                                                ),
                                              ),
                                              Text(
                                                '2',
                                                style: TextStyle(
                                                  fontSize: 30,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w900,
                                                  color: Colors.white,
                                                ),
                                              ),
                                            ],
                                          ),
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      )),
//                  Padding(
//                    padding: const EdgeInsets.fromLTRB(20, 10, 20, 5),
//                    child: Center(
//                      child: Container(
//                        width: 38,
//                        height: 5,
//                        color: Color.fromRGBO(57, 24, 79, 1),
//                      ),
//                    ),
//                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: Text(
                      'ONGOING LOANS(2)',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(61, 61, 61, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 5, 20, 10),
                    child: Column(
                      children: <Widget>[
                        Container(
                          width: MediaQuery.of(context).size.width,
                          height: 25,
                          child: Row(
                            children: <Widget>[
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 50) *
                                        0.14,
                                child: Text(
                                  'S/N',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(206, 206, 206, 1),
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 50) *
                                        0.43,
                                child: Text(
                                  'Loan Name',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(206, 206, 206, 1),
                                  ),
                                ),
                              ),
                              Container(
                                width:
                                    (MediaQuery.of(context).size.width - 50) *
                                        0.43,
                                child: Text(
                                  'Amount',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                    color: Color.fromRGBO(206, 206, 206, 1),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Loan(
                                  title: 'Greenlife Loans',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            color: Color.fromRGBO(247, 251, 255, 1),
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) *
                                        0.14,
                                    child: Text(
                                      '1.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) *
                                        0.43,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'GreenLife Loans',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(57, 24, 79, 1),
                                          ),
                                        ),
                                        Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(230, 78, 0, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width: (MediaQuery.of(context).size.width -
                                            50) *
                                        0.43,
                                    child: Text(
                                      'N120,000',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Loan(
                                  title: 'Breaking Poverty',
                                ),
                              ),
                            );
                          },
                          child: Container(
                            width: MediaQuery.of(context).size.width,
                            child: Padding(
                              padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Container(
                                    width:
                                        (MediaQuery.of(context).size.width - 50) *
                                            0.14,
                                    child: Text(
                                      '2.',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width:
                                        (MediaQuery.of(context).size.width - 50) *
                                            0.43,
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: <Widget>[
                                        Text(
                                          'Breaking Poverty',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(57, 24, 79, 1),
                                          ),
                                        ),
                                        Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(230, 78, 0, 1),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Container(
                                    width:
                                        (MediaQuery.of(context).size.width - 50) *
                                            0.43,
                                    child: Text(
                                      'N60,000',
                                      style: TextStyle(
                                        fontSize: 18,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(57, 24, 79, 1),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: Text(
                      'LOAN HISTORY',
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(61, 61, 61, 1),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Started GreenLife Loans',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Loan credit from Admin',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(57, 24, 79, 1),
          foregroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewLoan(),
              ),
            );
          },
        ),
      ),
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'FUNDS',
            style: TextStyle(
              fontFamily: 'Gilroy',
              fontSize: 20,
              fontWeight: FontWeight.w600,
              color: Color.fromRGBO(16, 16, 16, 1),
            ),
          ),
          actions: <Widget>[
            Transform.translate(
              offset: Offset(-15, 7),
              child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => Notifications(),
                    ),
                  );
                },
                child: Stack(
                  children: <Widget>[
                    new Icon(
                      Icons.notifications,
                      color: Color.fromRGBO(93, 93, 93, 1),
                      size: 40,
                    ),
                    Container(
                      width: 40,
                      height: 40,
                      child: Align(
                        alignment: Alignment.topRight,
                        child: Container(
                          padding: EdgeInsets.all(3),
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(230, 78, 0, 1),
                            borderRadius: BorderRadius.all(
                              Radius.circular(17),
                            ),
                          ),
                          constraints: BoxConstraints(
                            minWidth: 20,
                            minHeight: 17,
                          ),
                          child: Text(
                            '1',
                            style: new TextStyle(
                              color: Colors.white,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              fontSize: 14,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
        body: SingleChildScrollView(
          child: Container(
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.fromLTRB(0, 30, 0, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Text(
                            'Available Fund',
                            style: TextStyle(
                              fontSize: 15,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
                            child: Text(
                              'N120,000',
                              style: TextStyle(
                                fontSize: 35,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(230, 78, 0, 1),
                              ),
                            ),
                          ),
                          GestureDetector(
                            onTap: (){
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => Withdraw(),
                                ),
                              );
                            },
                            child: Container(
                              width: 250,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromRGBO(203, 238, 234, 0.4),
                                borderRadius: BorderRadius.circular(25),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(15, 0, 15, 0),
                                    child: SvgPicture.asset(
                                      "assets/svg/withdraw.svg",
                                      height: 25,
                                      color: Color.fromRGBO(230, 78, 0, 1),
                                    ),
                                  ),
                                  Text(
                                    'Withdraw Funds',
                                    style: TextStyle(
                                      fontSize: 18,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(70, 70, 70, 1),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 25, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'FUND HISTORY',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(61, 61, 61, 1),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 45,
                          child: DropdownButtonFormField(
                            value: selectedAccount,
                            onChanged: (newValue) {
                              setState(() {
                                selectedAccount = newValue;
                              });
                            },
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              contentPadding:
                                  const EdgeInsets.fromLTRB(20, 5, 5, 5),
                            ),
                            items: account.map((account) {
                              return DropdownMenuItem(
                                child: new Text(account),
                                value: account,
                              );
                            }).toList(),
                          ),
                        )
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Started GreenLife Loans',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Loan credit from Admin',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_received,
                                          color: Color.fromRGBO(13, 190, 83, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Loan credit from Admin',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N120,000',
                                style: TextStyle(
                                  fontSize: 20,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(13, 190, 83, 1),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                    child: Container(
                      width: MediaQuery.of(context).size.width,
                      height: 70,
                      child: Card(
                        elevation: 5,
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(3.0),
                                    child: Container(
                                      width: 40,
                                      height: 40,
                                      decoration: BoxDecoration(
                                        color: Color.fromRGBO(255, 207, 207, 1),
                                        borderRadius: BorderRadius.circular(20),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.call_made,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: <Widget>[
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          'Partial Loan Payment',
                                          style: TextStyle(
                                            fontSize: 16,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color:
                                                Color.fromRGBO(105, 79, 122, 1),
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding: const EdgeInsets.all(3.0),
                                        child: Text(
                                          '28, Jan 2020',
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w600,
                                            color: Color.fromRGBO(
                                                150, 132, 130, 1),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Text(
                                'N27,000',
                                style: TextStyle(
                                  fontSize: 21,
                                  fontFamily: 'Gilroy',
                                  fontWeight: FontWeight.w600,
                                  color: Color.fromRGBO(230, 78, 0, 1),
                                ),
                              )
                            ],
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
        floatingActionButton: FloatingActionButton(
          backgroundColor: Color.fromRGBO(57, 24, 79, 1),
          foregroundColor: Colors.white,
          child: Icon(
            Icons.add,
            size: 30,
          ),
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => NewLoan(),
              ),
            );
          },
        ),
      ),
      Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          elevation: 1,
          centerTitle: true,
          automaticallyImplyLeading: false,
          title: Text(
            'SETTINGS',
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
              padding: const EdgeInsets.fromLTRB(0, 20, 0, 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'PROFILE',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(61, 61, 61, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'My Account',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Credit/Debit Cards',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Change Pin',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'MORE',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(61, 61, 61, 1),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Notifications',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          CupertinoSwitch(
                            activeColor: Color.fromRGBO(230, 78, 0, 1),
                            value: notifications,
                            onChanged: (bool value) {
                              setState(() {
                                notifications = !notifications;
                              });
                            },
                          ),
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Support',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Report a bug',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'Terms of use',
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(61, 61, 61, 1),
                            ),
                          ),
                          Icon(Icons.chevron_right)
                        ],
                      ),
                      decoration: BoxDecoration(
                        border: Border(
                          bottom: BorderSide(
                            width: 1.0,
                            color: Color.fromRGBO(153, 153, 153, 1),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                    child: Container(
                      height: 56,
                      child: Row(
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                            child: Transform.rotate(
                              angle: 3.15,
                              child: Icon(
                                Icons.exit_to_app,
                                color: Color.fromRGBO(230, 78, 0, 1),
                              ),
                            ),
                          ),
                          Text(
                            'Log out',
                            style: TextStyle(
                              fontSize: 19,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(230, 78, 0, 1),
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
      ),
    ];
    return views[index];
  }

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: view(context, currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        elevation: 5,
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        selectedItemColor: Color.fromRGBO(230, 78, 0, 1),
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.w600),
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/speed.svg",
              color: Color.fromRGBO(151, 151, 151, 1),
            ),
            activeIcon: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Transform.translate(
                    offset: Offset(0, -9),
                    child: Container(
                      width: 10,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(230, 78, 0, 1),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    "assets/svg/speed.svg",
                    color: Color.fromRGBO(57, 24, 79, 1),
                  ),
                ),
              ],
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/svg/list.svg",
              color: Color.fromRGBO(151, 151, 151, 1),
            ),
            activeIcon: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Transform.translate(
                    offset: Offset(0, -9),
                    child: Container(
                      width: 10,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(230, 78, 0, 1),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: SvgPicture.asset(
                    "assets/svg/list.svg",
                    color: Color.fromRGBO(57, 24, 79, 1),
                  ),
                ),
              ],
            ),
            title: Text(
              'Loans',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.account_balance_wallet,
              color: Color.fromRGBO(151, 151, 151, 1),
            ),
            activeIcon: Stack(
              children: <Widget>[
                Align(
                  alignment: Alignment.topCenter,
                  child: Transform.translate(
                    offset: Offset(0, -9),
                    child: Container(
                      width: 10,
                      height: 6,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(5),
                          bottomLeft: Radius.circular(5),
                        ),
                        color: Color.fromRGBO(230, 78, 0, 1),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topCenter,
                  child: Icon(
                    Icons.account_balance_wallet,
                    color: Color.fromRGBO(57, 24, 79, 1),
                  ),
                ),
              ],
            ),
            title: Text(
              'Funds',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.settings,
              color: Color.fromRGBO(151, 151, 151, 1),
            ),
            activeIcon: Container(
              child: Stack(
                children: <Widget>[
                  Align(
                    alignment: Alignment.topCenter,
                    child: Transform.translate(
                      offset: Offset(0, -9),
                      child: Container(
                        width: 10,
                        height: 6,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomRight: Radius.circular(5),
                            bottomLeft: Radius.circular(5),
                          ),
                          color: Color.fromRGBO(230, 78, 0, 1),
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Icon(
                      Icons.settings,
                      color: Color.fromRGBO(57, 24, 79, 1),
                    ),
                  ),
                ],
              ),
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
                fontSize: 14,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
