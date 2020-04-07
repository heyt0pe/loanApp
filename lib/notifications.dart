import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Notifications extends StatefulWidget {
  @override
  _NotificationsState createState() => _NotificationsState();
}

class _NotificationsState extends State<Notifications> {
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
          'NOTIFICATIONS (1)',
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
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.fromLTRB(0, 0, 10, 0),
                        child: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                            color: Color.fromRGBO(203, 238, 234, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.check,
                              color: Color.fromRGBO(13, 190, 83, 1),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text(
                              'Your loan request was successful!',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w700,
                                color: Color.fromRGBO(0, 0, 0, 1),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 5, 0, 10),
                              child: Row(
                                children: <Widget>[
                                  Flexible(
                                    child: RichText(
                                      text: TextSpan(
                                          text:
                                              'Your account has been credited with ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'Gilroy',
                                            fontWeight: FontWeight.w500,
                                            color:
                                                Color.fromRGBO(126, 126, 126, 1),
                                          ),
                                          children: <TextSpan>[
                                            TextSpan(
                                              text:
                                                  'N40,000',
                                              style: TextStyle(
                                                fontSize: 14,
                                                fontFamily: 'Gilroy',
                                                fontWeight: FontWeight.w600,
                                                color: Color.fromRGBO(
                                                    126, 126, 126, 1),
                                              ),
                                            ),
                                          ],),
                                    ),
                                  )
                                ],
                              ),
                            ),
                            Text(
                              'Yesterday',
                              textAlign: TextAlign.left,
                              style: TextStyle(
                                fontSize: 13,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w500,
                                color: Color.fromRGBO(126, 126, 126, 0.5),
                              ),
                            ),
                          ],
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
    );
  }
}
