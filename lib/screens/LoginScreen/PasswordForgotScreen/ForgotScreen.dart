import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NumberRecoveryScreen.dart';
import 'RecoveryScreen.dart';



class ForgotScreen extends StatefulWidget {
  const ForgotScreen({super.key});

  @override
  State<ForgotScreen> createState() => _ForgotScreenState();
}

class _ForgotScreenState extends State<ForgotScreen> {
// ***************
  bool clrButton = false;

  TextEditingController emailController = TextEditingController();

// *****************
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
        foregroundColor: Colors.black,
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const Text('Forgot Password', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
            const SizedBox(height: 60), 

            const Text('Please enter your email adress. you will receive a link to cteare or set a new password via email.', style: TextStyle(fontSize: 15)),
            const SizedBox(height: 20), 

            TextFormField(
              controller: emailController,
              onChanged: (value) {
                if (value != '') {
                  setState(() {
                    clrButton = true;
                  });
                }
              },
              decoration:  InputDecoration(
                border: const OutlineInputBorder(), 
                labelText: 'Email',
                suffix: InkWell(
                  onTap: () {
                    setState(() {
                      emailController.clear();
                    });
                  },
                  child: const Icon(CupertinoIcons.multiply, color: Color(0xFFEf6969),),
                ), 
              ),
            ),
            const SizedBox(height: 30), 

            ElevatedButton(
                   onPressed: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const RecoveryScreen()));
                    },
                    style: ElevatedButton.styleFrom(
                    minimumSize: const Size.fromHeight(55), 
                    backgroundColor: const Color(0xFFEf6969),
                    shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                    ),
                    child: const Text('Send Code', style: TextStyle(fontSize: 18)),                   
                    ),
                      const SizedBox(height: 20), 
                      
                       const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text('OR', style: TextStyle(fontWeight: FontWeight.bold),), 
                        ],
                      ),

                    Row(          
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: (){
                            Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberRecoveryScreen(),));
                          },
                           child: const Text('Verify using Number', style: TextStyle(fontSize: 16, color: Color(0xFFEf6969)))
                           ), 
                      ],
                    )
          ],
        ),
      ),
    );
  }
}