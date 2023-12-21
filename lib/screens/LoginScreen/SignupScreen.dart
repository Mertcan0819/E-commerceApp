import 'package:flutter/material.dart';
import 'package:flutter_application_5/screens/LoginScreen/login_screen.dart';


class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [     
          const SizedBox(height: 30), 

          Image.asset('image/freed.png'),
        const SizedBox(height: 50), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Name', 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.person),             
                  ),
                ),
                 const SizedBox(height: 15),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Email', 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),             
                  ),
                ),
                const SizedBox(height: 15),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Number', 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.numbers),             
                  ),
                ),
                const SizedBox(height: 15), 

                 TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*', 
                  keyboardType: TextInputType.visiblePassword, 
                  decoration: const InputDecoration(
                    labelText: 'Enter Password',
                     prefixIcon: Icon(Icons.lock),  
                    border: OutlineInputBorder(), 
                  ),  
                ),
                const SizedBox(height: 15), 

                 TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*', 
                  keyboardType: TextInputType.visiblePassword, 
                  decoration: const InputDecoration(
                    prefixIcon: Icon(Icons.lock),  
                    labelText: 'Confrim Password',
                    border: OutlineInputBorder(), 
                  ),  
                ),              
                const SizedBox(height: 30),

                ElevatedButton(
                 onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const 
                  LoginScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55), 
                  backgroundColor: const Color(0xFFEf5970),
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text('Create Account', style: TextStyle(fontSize: 18)),                   
                  ),
                  const SizedBox(height: 10), 
 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Already Have an Account?'), 
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const LoginScreen(),));
                        },
                         child: const Text('Log In', style: TextStyle(fontSize: 16, color: Color(0xFFEf5970)))
                         ), 
                    ],
                  )
              ],
            ),
          )
        ],
      ),
    );
  }
}