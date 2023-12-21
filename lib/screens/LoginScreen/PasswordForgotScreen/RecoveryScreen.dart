import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/LoginScreen/login_screen.dart';

class RecoveryScreen extends StatefulWidget {
  const RecoveryScreen({super.key});

  @override
  State<RecoveryScreen> createState() => _RecoveryScreenState();
}

class _RecoveryScreenState extends State<RecoveryScreen> {
  // ***************


// *****************
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Recovery Password', style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),), 
              const SizedBox(height: 60), 


              TextFormField(
                decoration:  const InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: 'Reset Code',
                    prefixIcon: Icon(Icons.numbers)
                ),
              ),
                  const SizedBox(height: 20), 
              TextFormField(
                decoration:  const InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: 'New Password',
                   suffixIcon: Icon(Icons.remove_red_eye), 
                   prefixIcon: Icon(Icons.lock)
                ),
              ),
                  const SizedBox(height: 20), 
              TextFormField(
                decoration:  const InputDecoration(
                  border: OutlineInputBorder(), 
                  labelText: 'Confirm Password',
                  suffixIcon: Icon(Icons.remove_red_eye), 
                   prefixIcon: Icon(Icons.lock)
                ),
              ),
              const SizedBox(height: 40), 

              ElevatedButton(
                     onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen()));
                      },
                      style: ElevatedButton.styleFrom(
                      minimumSize: const Size.fromHeight(55), 
                      backgroundColor: const Color(0xFFEf6969),
                      shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                      ),
                      child: const Text('Reset Password', style: TextStyle(fontSize: 18)),                   
                      ),
            ],
          ),
        ),
      ),
    );
  }
}