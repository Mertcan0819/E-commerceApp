import 'package:flutter/material.dart';

import 'PasswordForgotScreen/ForgotScreen.dart';
import 'SignupScreen.dart';
import '../BottomNavigation/home_screen.dart';

class LoginScreen extends StatefulWidget {
    const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
// ******************
 bool _isSecure = true;

void _ChangeVisibility() {     // visibility = görünürlük 
  setState(() {
    _isSecure = !_isSecure;   // yani her tıklandıgında tam tersi oluyor aslında trueken false. falseken true
  });
}
// *-***************
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset('image/freed.png'),
        const SizedBox(height: 50), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25),
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: 'Enter Email', 
                    border: OutlineInputBorder(),
                    prefixIcon: Icon(Icons.email),             
                  ),
                ),
                
                const SizedBox(height: 15), 

                 TextFormField(
                  obscureText: true,
                  obscuringCharacter: '*', 
                  keyboardType: TextInputType.visiblePassword,   
                  decoration:  InputDecoration(
                  border: const OutlineInputBorder(), 
                  labelText: 'Password',  
                  prefixIcon: const Icon(Icons.lock),  
                  suffixIcon: IconButton(                     // bu methot sayesinde artık göz iconuna basınca password gizleniyor tekrar basınca görünür oluyor 
                  onPressed: () {_ChangeVisibility();},
                  icon: AnimatedCrossFade(                  // buda animasyonlu hali. bu kullanım çok çok daha güzel üstteki de daha basit hali 
                  firstChild: const Icon(Icons.visibility, color: Colors.red), 
                  secondChild: Icon(Icons.visibility_off, color: Colors.red[200],),
                  crossFadeState: _isSecure ? CrossFadeState.showFirst : CrossFadeState.showSecond, 
                  duration: const Duration(seconds: 1),
                      ),
                    ), 
                  ),
                ),
                
                Align(
                  alignment: Alignment.bottomRight,
                  child: TextButton(
                   onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const ForgotScreen()));
                  },
                    child: const Text('Forgot Password', style: TextStyle(color: Color(0xFFEf6969), fontSize: 16)), 
                    ),
                ), 

                const SizedBox(height: 30),
                ElevatedButton(
                 onPressed: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                  minimumSize: const Size.fromHeight(55), 
                  backgroundColor: const Color(0xFFEf6969),
                  shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                  ),
                  child: const Text('Log In', style: TextStyle(fontSize: 18)),                   
                  ),

                  const SizedBox(height: 10), 
 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('Dont Have an Account?'), 
                      TextButton(
                        onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context) => const SignupScreen(),));
                        },
                         child: const Text('Sign Up', style: TextStyle(fontSize: 16, color: Color(0xFFEf6969)))
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