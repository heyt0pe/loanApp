import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loan/new-loan-two.dart';

class NewLoan extends StatefulWidget {
  @override
  _NewLoanState createState() => _NewLoanState();
}

class _NewLoanState extends State<NewLoan> {
  TextEditingController paymentDate = new TextEditingController();

  List<String> reasons = [
    'Business',
    'Test',
    'Feeding',
  ];
  String selectedReason;

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
            Icons.close,
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
                  padding: const EdgeInsets.fromLTRB(0, 0, 0, 10),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: 50,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(25),
                      ),
                      color: Color.fromRGBO(239, 248, 254, 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            'You have a credit limit of ₦120,000',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              color: Color.fromRGBO(2, 132, 254, 1),
                            ),
                          ),
                          Icon(
                            Icons.error_outline,
                            color: Color.fromRGBO(2, 132, 254, 1),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                  child: Text(
                    'Please fill in the field with the appropraite details',
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
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 10),
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width,
                        height: 56,
                        child: TextFormField(
                          keyboardType: TextInputType.text,
                          controller: paymentDate,
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w600,
                            color: Color.fromRGBO(128, 128, 128, 1),
                          ),
                          decoration: const InputDecoration(
                            prefixIcon: Icon(
                              Icons.date_range,
                              color: Color.fromRGBO(57, 24, 79, 1),
                            ),
                            border: OutlineInputBorder(),
                            labelText: 'Choose Payment Date',
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
                                      paymentDate.text = DateFormat("d, MMM y")
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
                    child: DropdownButtonFormField(
                      value: selectedReason,
                      onChanged: (newValue) {
                        setState(() {
                          selectedReason = newValue;
                        });
                      },
                      decoration: const InputDecoration(
                        prefixIcon: Icon(
                          Icons.account_balance,
                          color: Colors.transparent,
                        ),
                        border: OutlineInputBorder(),
                        labelText: 'Purpose for Loan',
                        labelStyle: TextStyle(
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.normal,
                          fontSize: 16.0,
                          color: Color.fromRGBO(57, 24, 79, 1),
                        ),
                      ),
                      items: reasons.map((reason) {
                        return DropdownMenuItem(
                          child: new Text(reason),
                          value: reason,
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 10, 0, 45),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.check_box,
                        color: Color.fromRGBO(57, 24, 79, 1),
                      ),
                      Padding(
                        padding: const EdgeInsets.fromLTRB(10, 0, 10, 0),
                        child: Text(
                          'Payment by Installment',
                          style: TextStyle(
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.normal,
                            fontSize: 15.0,
                            color: Color.fromRGBO(121, 121, 121, 1),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(0, 5, 0, 7),
                  child: Container(
                    height: 56,
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => NewLoanContd(),
                          ),
                        );
                      },
                      color: Color.fromRGBO(57, 24, 79, 1),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Text(
                            "CONTINUE REQUEST",
                            style: TextStyle(
                              fontSize: 16,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                              color: Colors.white,
                            ),
                          ),
                          Image.asset('assets/images/arrow.png'),
                        ],
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
