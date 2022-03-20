import 'package:finflow/screens/otp_page.dart';
import 'package:finflow/utils/snackbar_message.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignUpPage extends StatefulWidget {
  static const String routeName = '/signup';

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

String mobileNumber = '';

class _SignUpPageState extends State<SignUpPage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: MediaQuery.of(context).size.height / 9.22,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: SvgPicture.asset(
            'assets/icons/Logo.svg',
          ),
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
                SizedBox(height: MediaQuery.of(context).size.height / 5.95,),
                Image.asset(
                  'assets/images/clip-1062.png',
                  height: MediaQuery.of(context).size.height / 3.87,
                  width: MediaQuery.of(context).size.width / 1.34,
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
                      hintText: 'Enter Phone Number',
                      hintStyle: TextStyle(
                        fontSize: 16,
                        color: Colors.black45
                      ),
                      // contentPadding: EdgeInsets.all(12),
                      isCollapsed: true,
                      border: InputBorder.none
                    ),
                    onChanged: (val) {
                      mobileNumber = '+91 ' + val;
                      print(mobileNumber);
                    },
                    keyboardType: TextInputType.phone,
                    maxLength: 10,
                  ),
                ),
                SizedBox(height: 16,),
                Container(
                  width: double.infinity,
                  height: MediaQuery.of(context).size.height / 18.45,
                  child: ElevatedButton(
                    onPressed: () {
                      if(mobileNumber.length != 14){
                        ScaffoldMessenger.of(context).showSnackBar(showSnackBar(context, 'Please enter a valid 10 digit mobile number'));
                      }
                      else{
                        Navigator.push(context, MaterialPageRoute(builder: (context) => OTPPage(mobileNumber: mobileNumber)));
                      }
                    },
                    child: Text(
                      'Next',
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
