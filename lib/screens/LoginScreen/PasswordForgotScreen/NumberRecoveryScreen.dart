import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'NumberOTPrecoveryScreen.dart';

class NumberRecoveryScreen extends StatelessWidget {
  const NumberRecoveryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0, 
        foregroundColor: Colors.black,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
           mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('Forgot Password', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
              const SizedBox(height: 60), 

              const Text('Please enter your email adress. you will receive a link to cteare or set a new password via email.', style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
              const SizedBox(height: 30), 

              TextFormField(    
                decoration:  const InputDecoration(
                  border: OutlineInputBorder(), 
                  prefixIcon: Icon(Icons.numbers),
                  labelText: 'Number',
                  suffix: InkWell(
                
                    child: Icon(CupertinoIcons.multiply, color: Color(0xFFEf6969),),
                  ), 
                ),
              ),
              const SizedBox(height: 30), 

              ElevatedButton(
                     onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const NumberOTPrecoveryScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55), 
                      backgroundColor: const Color(0xFFEf6969),
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Send Number Code', style: TextStyle(fontSize: 18)),                   
                      ),
                              
            ],
          ),
        ),
      ),
    );
  }
}