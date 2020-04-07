import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loan/home.dart';

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

class Withdraw extends StatefulWidget {
  @override
  _WithdrawState createState() => _WithdrawState();
}

class _WithdrawState extends State<Withdraw> {
  List<String> banks = [
    'GT Bank',
    'UBA',
    'Providus',
  ];
  String selectedBank;

  TextEditingController one = new TextEditingController();
  TextEditingController two = new TextEditingController();
  TextEditingController three = new TextEditingController();
  TextEditingController four = new TextEditingController();
  FocusNode oneFocus = new FocusNode();
  FocusNode twoFocus = new FocusNode();
  FocusNode threeFocus = new FocusNode();
  FocusNode fourFocus = new FocusNode();

  void initState() {
    super.initState();
    one.addListener(() {
      if (one.text.length > 0) {
        FocusScope.of(context).nextFocus();
      }
    });
    two.addListener(() {
      if (two.text.length > 0) {
        FocusScope.of(context).nextFocus();
      }
    });
    three.addListener(() {
      if (three.text.length > 0) {
        FocusScope.of(context).nextFocus();
      }
    });

    four.addListener(() {
      if (four.text.length > 0) {
        FocusScope.of(context).nextFocus();
      }
    });


  }

  Future<void> success() async {
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
                        Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.all(
                              Radius.circular(25),
                            ),
                            border: Border.all(
                              width: 3,
                              color: Color.fromRGBO(92, 219, 142, 1),
                            ),
                          ),
                          child: Icon(
                            Icons.check,
                            size: 30,
                            color: Color.fromRGBO(92, 219, 142, 1),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 20, 0, 10),
                          child: Text(
                            'Your transaction was successful. Don’t forget to pay loans on time for good credit score',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(170, 170, 170, 1)),
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

  Future<void> verify() async {
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
                        Text(
                          'Security Pin',
                          style: TextStyle(
                            fontSize: 18,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Text(
                            'Enter your 4 digit pin. This is a personal transactional pin.',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontSize: 15,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                                color: Color.fromRGBO(170, 170, 170, 1)),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                padding: const EdgeInsets.fromLTRB(0, 0, 5, 0),
                                child: Container(
                                  width: 35,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: one,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Container(
                                  width: 35,
                                  child: TextFormField(
                                    obscureText: true,
                                    textAlign: TextAlign.center,
                                    controller: two,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                child: Container(
                                  width: 35,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: three,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
                                child: Container(
                                  width: 35,
                                  child: TextFormField(
                                    obscureText: true,
                                    controller: four,
                                    textAlign: TextAlign.center,
                                    keyboardType: TextInputType.number,
                                    decoration: InputDecoration(
                                      enabledBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                      focusedBorder: UnderlineInputBorder(
                                        borderSide:
                                            BorderSide(color: Colors.white),
                                      ),
                                    ),
                                    style: TextStyle(
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w900,
                                      color: Colors.white,
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 20, 0, 15),
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(context);
                              success();
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
                                  'CONTINUE',
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
          'WITHDRAW FUNDS',
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
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 0, 15, 5),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 120,
                    child: Card(
                      elevation: 5,
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.fromLTRB(5, 5, 5, 5),
                          child: Padding(
                            padding: const EdgeInsets.fromLTRB(0, 0, 0, 15),
                            child: Container(
                              height: 55,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text(
                                    'Available Amount',
                                    style: TextStyle(
                                      fontSize: 13,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                      color: Color.fromRGBO(230, 78, 0, 1),
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
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(17, 10, 17, 10),
                  child: Separator(
                    color: Color.fromRGBO(200, 200, 200, 1),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: TextFormField(
                      keyboardType: TextInputType.number,
                      style: TextStyle(
                        fontSize: 16,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                        color: Color.fromRGBO(128, 128, 128, 1),
                      ),
                      decoration: const InputDecoration(
                        prefixIcon: Padding(
                          padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
                          child: Text(
                            '₦',
                            style: TextStyle(
                              fontSize: 25,
                              color: Color.fromRGBO(57, 24, 79, 1),
                            ),
                          ),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Enter Amount',
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
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 60,
                    child: DropdownButtonFormField(
                      value: selectedBank,
                      onChanged: (newValue) {
                        setState(() {
                          selectedBank = newValue;
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_balance,
                          color: Color.fromRGBO(57, 24, 79, 1),
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Select Bank',
                        labelStyle: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color.fromRGBO(57, 24, 79, 1),
                        ),
                      ),
                      items: banks.map((bank) {
                        return DropdownMenuItem(
                          child: new Text(bank),
                          value: bank,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(15, 10, 15, 10),
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
                        prefixIcon: Icon(
                          Icons.account_balance,
                          color: Colors.transparent,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Accout Number',
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
                  padding: const EdgeInsets.fromLTRB(15, 40, 15, 7),
                  child: Container(
                    height: 56,
                    child: RaisedButton(
                      onPressed: () {
                        verify();
                      },
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Center(
                        child: Text(
                          "VERIFY & WITHDRAW",
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
