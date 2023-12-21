import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/LoginScreen/PasswordForgotScreen/RecoveryScreen.dart';
import 'package:sms_otp_auto_verify/sms_otp_auto_verify.dart';


class NumberOTPrecoveryScreen extends StatefulWidget {
  const NumberOTPrecoveryScreen({super.key}); 

  @override
  State<NumberOTPrecoveryScreen> createState() => _NumberOTPrecoveryScreenState();
}

class _NumberOTPrecoveryScreenState extends State<NumberOTPrecoveryScreen> {
// *******************
BoxDecoration get _pinPutDecoration {
    return BoxDecoration(
      border: Border.all(color: Theme.of(context).primaryColor),
      borderRadius: BorderRadius.circular(15.0),
    );
  }


     TextEditingController textEditingController = TextEditingController(text: "");

// ****************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
        foregroundColor: Colors.black,
      ),
      body:  SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            children: [
              const Text('Enter OTP', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 

              const SizedBox(height: 50), 

              const Text('Enter the OTP we have sent you to your Number'), 

                const SizedBox(height: 20),
              TextFieldPin(                         // https://pub.dev/packages/sms_otp_auto_verify dan aldık
                textController: textEditingController,
                autoFocus: false,
                codeLength: 4,
                alignment: MainAxisAlignment.center,
                defaultBoxSize: 55.0,
                margin: 10,
                selectedBoxSize: 55.0,
                textStyle: const TextStyle(fontSize: 16),
                defaultDecoration: _pinPutDecoration.copyWith(
                border: Border.all(color: Colors.grey), 
                ),
                selectedDecoration: _pinPutDecoration,
                onChange: (code) {
                  setState(() {
                    
                  });
            }
            ),

            ElevatedButton(
                     onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55), 
                      backgroundColor: const Color(0xFFEf6969),
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Verify', style: TextStyle(fontSize: 18)),                   
                      ),

            ],
          ),
        ),
      ),
    );
  }
}