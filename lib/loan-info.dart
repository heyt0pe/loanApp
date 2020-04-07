import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/services.dart';

class Separator extends StatelessWidget {
  final double height;
  final Color color;

  const Separator({this.height = 1, this.color = Colors.black});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (BuildContext context, BoxConstraints constraints) {
        final boxWidth = constraints.constrainWidth();
        final dashWidth = 7.0;
        final dashHeight = height;
        final dashCount = (boxWidth / (2 * dashWidth)).floor();
        return Flex(
          children: List.generate(dashCount, (_) {
            return SizedBox(
              width: dashWidth,
              height: dashHeight,
              child: DecoratedBox(
                decoration: BoxDecoration(color: color),
              ),
            );
          }),
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          direction: Axis.horizontal,
        );
      },
    );
  }
}

class Loan extends StatefulWidget {
  final String title;

  Loan({
    this.title,
  });

  @override
  _LoanState createState() => _LoanState(
        this.title,
      );
}

class _LoanState extends State<Loan> {
  final String title;
  bool copied = false;

  List<String> account = [
    'Debit',
    'Credit',
  ];
  String selectedAccount = 'Debit';

  _LoanState(
    this.title,
  );

  Future<void> payForLoan() async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return StatefulBuilder(
          builder: (context, setState) {
            return Material(
              type: MaterialType.transparency,
              child: SingleChildScrollView(
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(0, 60, 0, 20),
                      child: Container(
                        color: Colors.white,
                        width: MediaQuery.of(context).size.width * 0.9,
                        constraints: BoxConstraints(
                          minWidth: MediaQuery.of(context).size.width * 0.9,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: <Widget>[
                              Align(
                                alignment: Alignment.topRight,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.pop(context);
                                  },
                                  child: Icon(
                                    Icons.close,
                                    color: Color.fromRGBO(230, 78, 0, 1),
                                    size: 30,
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(0, 10, 0, 10),
                                child: Transform.translate(
                                  offset: Offset(0, -10),
                                  child: Text(
                                    'Pay For Loan',
                                    textAlign: TextAlign.center,
                                    style: TextStyle(
                                      fontSize: 19,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w500,
                                      color: Colors.black,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Container(
                                  width: (MediaQuery.of(context).size.width *
                                          0.9) -
                                      40,
                                  child: Separator(
                                    color: Color.fromRGBO(200, 200, 200, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(3, 10, 0, 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Pay with Card',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Stack(
                                children: <Widget>[
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.87,
                                    height: 200,
                                    child: Card(
                                      elevation: 5,
                                      color: Color.fromRGBO(57, 24, 79, 1),
                                    ),
                                  ),
                                  Container(
                                    height: 200,
                                    child: Transform.translate(
                                      offset: Offset(25, -3.2),
                                      child: Align(
                                        alignment: Alignment.bottomLeft,
                                        child: Container(
                                          height: 55,
                                          width: 34,
                                          decoration: BoxDecoration(
                                            border: Border.all(
                                              color: Color.fromRGBO(
                                                  96, 67, 116, 1),
                                              width: 3,
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Container(
                                    width: MediaQuery.of(context).size.width *
                                        0.87,
                                    height: 200,
                                    child: Card(
                                      color: Colors.transparent,
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 10, 15, 10),
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: <Widget>[
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 10),
                                              child: Image.asset(
                                                'assets/images/mastercard.png',
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 10),
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: <Widget>[
                                                  Text(
                                                    'Card Number',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'Gilroy',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: Color.fromRGBO(
                                                          218, 218, 218, 1),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 5, 0, 5),
                                                    child: Text(
                                                      '4084 0840 8408 4081',
                                                      style: TextStyle(
                                                        letterSpacing: 3,
                                                        fontSize: 17,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromRGBO(
                                                            255, 255, 255, 1),
                                                      ),
                                                    ),
                                                  )
                                                ],
                                              ),
                                            ),
                                            Padding(
                                              padding:
                                                  const EdgeInsets.fromLTRB(
                                                      0, 10, 0, 10),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Text(
                                                        'Exp. Date',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Gilroy',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromRGBO(
                                                              218, 218, 218, 1),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 5, 0, 5),
                                                        child: Text(
                                                          '05 / 23',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                  Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    children: <Widget>[
                                                      Text(
                                                        'Card Holder Name',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'Gilroy',
                                                          fontWeight:
                                                              FontWeight.w600,
                                                          color: Color.fromRGBO(
                                                              218, 218, 218, 1),
                                                        ),
                                                      ),
                                                      Padding(
                                                        padding:
                                                            const EdgeInsets
                                                                    .fromLTRB(
                                                                0, 5, 0, 5),
                                                        child: Text(
                                                          'Precious I Ogar',
                                                          style: TextStyle(
                                                            fontSize: 17,
                                                            fontFamily:
                                                                'Gilroy',
                                                            fontWeight:
                                                                FontWeight.w600,
                                                            color:
                                                                Color.fromRGBO(
                                                                    255,
                                                                    255,
                                                                    255,
                                                                    1),
                                                          ),
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ),
                                  Align(
                                    alignment: Alignment.topRight,
                                    child: Container(
                                      width: 30,
                                      height: 30,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.all(
                                          Radius.circular(15),
                                        ),
                                        color: Color.fromRGBO(203, 238, 234, 1),
                                      ),
                                      child: Center(
                                        child: Icon(
                                          Icons.edit,
                                          color: Color.fromRGBO(230, 78, 0, 1),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(0, 15, 0, 15),
                                child: Text(
                                  'Add new Card',
                                  style: TextStyle(
                                    color: Color.fromRGBO(230, 78, 0, 1),
                                    fontSize: 15,
                                    fontFamily: 'Gilroy',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                                child: Container(
                                  width: (MediaQuery.of(context).size.width *
                                          0.9) -
                                      40,
                                  child: Separator(
                                    color: Color.fromRGBO(200, 200, 200, 1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(3, 10, 0, 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Pay with Bank',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(153, 153, 153, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(3, 10, 0, 10),
                                child: Align(
                                  alignment: Alignment.topLeft,
                                  child: Text(
                                    'Use the bank account provided below to pay for your loan.',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(69, 69, 69, 1),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 5, 0, 75),
                                child: Container(
                                  width: MediaQuery.of(context).size.width,
                                  height: 120,
                                  child: Card(
                                    elevation: 0,
                                    color: Color.fromRGBO(250, 242, 255, 1),
                                    child: Center(
                                      child: Padding(
                                        padding: const EdgeInsets.fromLTRB(
                                            15, 1, 15, 1),
                                        child: Row(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.end,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: <Widget>[
                                            Container(
                                              height: 70,
                                              child: Column(
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: <Widget>[
                                                  Padding(
                                                    padding:
                                                        EdgeInsets.fromLTRB(
                                                            0, 0, 0, 10),
                                                    child: Text(
                                                      'Account Details',
                                                      style: TextStyle(
                                                        fontSize: 11.5,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromRGBO(
                                                            94, 94, 94, 1),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 2, 0, 1),
                                                    child: Text(
                                                      'PROVIDUS BANK',
                                                      style: TextStyle(
                                                        fontSize: 13,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w900,
                                                        color: Color.fromRGBO(
                                                            69, 69, 69, 1),
                                                      ),
                                                    ),
                                                  ),
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(0, 2, 0, 0),
                                                    child: Text(
                                                      '0254507664',
                                                      style: TextStyle(
                                                        fontSize: 15,
                                                        letterSpacing: 2,
                                                        fontFamily: 'Gilroy',
                                                        fontWeight:
                                                            FontWeight.w600,
                                                        color: Color.fromRGBO(
                                                            69, 69, 69, 1),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            GestureDetector(
                                              onTap: () {
                                                Clipboard.setData(
                                                  ClipboardData(
                                                    text: '0254507664',
                                                  ),
                                                );
                                                setState(() {
                                                  copied = true;
                                                });
                                              },
                                              child: Text(
                                                (copied)
                                                    ? 'Copied'
                                                    : 'Copy Acc. Number',
                                                style: TextStyle(
                                                  fontSize: 12,
                                                  fontFamily: 'Gilroy',
                                                  fontWeight: FontWeight.w600,
                                                  color: Color.fromRGBO(
                                                      230, 78, 0, 1),
                                                ),
                                              ),
                                            ),
                                          ],
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
                  ],
                ),
              ),
            );
          },
        );
      },
    );
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
          title.toUpperCase(),
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
            padding: const EdgeInsets.fromLTRB(0, 15, 0, 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Card(
                      elevation: 5,
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
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
                                            'LOAN AMOUNT',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              color: Colors.white,
                                            ),
                                          ),
                                          Text(
                                            'N20,900',
                                            style: TextStyle(
                                              fontSize: 25,
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
                              Container(
                                height: 42,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Date of Collection',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(173, 173, 173, 1),
                                      ),
                                    ),
                                    Text(
                                      '12th, Jun 2020',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(173, 173, 173, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Card(
                      elevation: 5,
                      color: Colors.white,
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 20, 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.all(15.0),
                                    child: Icon(
                                      Icons.error_outline,
                                      size: 50,
                                      color: Color.fromRGBO(57, 24, 79, 1),
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
                                            'AMOUNT PAID',
                                            style: TextStyle(
                                              fontSize: 14,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(57, 24, 79, 1),
                                            ),
                                          ),
                                          Text(
                                            'N900',
                                            style: TextStyle(
                                              fontSize: 25,
                                              fontFamily: 'Gilroy',
                                              fontWeight: FontWeight.w600,
                                              color:
                                                  Color.fromRGBO(57, 24, 79, 1),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  )
                                ],
                              ),
                              Container(
                                height: 42,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    Text(
                                      'Due Date',
                                      style: TextStyle(
                                        fontSize: 13,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(230, 78, 0, 1),
                                      ),
                                    ),
                                    Text(
                                      '24th, Dec 2020',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontFamily: 'Gilroy',
                                        fontWeight: FontWeight.w600,
                                        color: Color.fromRGBO(230, 78, 0, 1),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    payForLoan();
                  },
                  child: Align(
                    alignment: Alignment.center,
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                      child: Container(
                        width: 250,
                        height: 50,
                        decoration: BoxDecoration(
                          color: Color.fromRGBO(203, 238, 234, 0.3),
                          borderRadius: BorderRadius.circular(25),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                              child: SvgPicture.asset(
                                "assets/svg/withdraw.svg",
                                height: 25,
                                color: Color.fromRGBO(230, 78, 0, 1),
                              ),
                            ),
                            Text(
                              'Pay for Loan',
                              style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(70, 70, 70, 1),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        'LOAN HISTORY',
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Started GreenLife Loans',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Partial Loan Payment',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Started GreenLife Loans',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Partial Loan Payment',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Started GreenLife Loans',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[
                                    Padding(
                                      padding: const EdgeInsets.all(3.0),
                                      child: Text(
                                        'Partial Loan Payment',
                                        style: TextStyle(
                                          fontSize: 15,
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
                                          fontWeight: FontWeight.w500,
                                          color:
                                              Color.fromRGBO(150, 132, 130, 1),
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
                                fontSize: 17,
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
    );
  }
}
