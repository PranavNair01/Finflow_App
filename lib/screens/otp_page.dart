import 'dart:async';

import 'package:finflow/screens/home_page.dart';
import 'package:finflow/screens/signup_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class OTPPage extends StatefulWidget {
  static const String routeName = '/otp';

  @override
  State<OTPPage> createState() => _OTPPageState();
}

class _OTPPageState extends State<OTPPage> {
  
  bool isEnabled = false;

  static const oneSec = const Duration(seconds: 1);
  late Timer _timer;
  int _start = 120;

  void startTimer() {
    _timer = new Timer.periodic(
      oneSec,
          (Timer timer) {
        if (_start == 0) {
          setState(() {
            isEnabled = true;
          });
        } else {
          setState(() {
            _start--;
          });
        }
      },
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    startTimer();
    super.initState();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 9.22,
        iconTheme: IconThemeData(
          size: 20,
          color: Color(0xFF23286B),
        ),
        title: Text(
          'Finflow',
          style: TextStyle(
              color: Color(0xFF23286B),
              fontSize: 20
          ),
        ),
        leadingWidth: 64,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SizedBox.expand(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: MediaQuery.of(context).size.height / 23.03,),
                Image.asset(
                  'assets/images/clip-calculating.png',
                  height: MediaQuery.of(context).size.height / 2.61,
                  width: MediaQuery.of(context).size.width / 1.20,
                ),
                SizedBox(height: 16,),
                Text(
                  'Welcome to Finflow!',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.black45,
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Color(0xFFF3F9FF)
                  ),
                  padding: EdgeInsets.all(12),
                  child: TextField(
                    decoration: InputDecoration(
                        hintText: 'Enter OTP',
                        hintStyle: TextStyle(
                            fontSize: 16,
                            color: Colors.black45
                        ),
                        // contentPadding: EdgeInsets.all(12),
                        isCollapsed: true,
                        border: InputBorder.none
                    ),
                    onChanged: (val) {

                    },
                    keyboardType: TextInputType.phone,
                    maxLength: 4,
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 18.45,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, HomePage.routeName);
                    },
                    child: Text(
                      'Next',
                    ),
                  ),
                ),
                SizedBox(height: 16,),
                Text.rich(
                  TextSpan(
                    text: 'A 4 digit code has been sent to ',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black45
                    ),
                    children: [
                      TextSpan(
                        text: mobileNumber,
                        style: TextStyle(
                          fontSize: 14,
                          color: Colors.black
                        )
                      )
                    ]
                  )
                ),
                SizedBox(height: 16,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TextButton(
                      onPressed: () {
                        if(isEnabled){
                          setState(() {
                            _start = 120;
                            isEnabled = false;
                          });
                        }
                      },
                      child: Text(
                        'Resend OTP',
                        style: TextStyle(
                          color: isEnabled ? Color(0xFF23286B) : Colors.black45,
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'in ',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.black45
                          ),
                        ),
                        Text(
                          _start.toString(),
                          style: TextStyle(
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          (_start > 1) ? ' seconds' : ' second',
                          style: TextStyle(
                              fontSize: 16,
                              color: Colors.black45
                          ),
                        ),
                      ],
                    )
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
