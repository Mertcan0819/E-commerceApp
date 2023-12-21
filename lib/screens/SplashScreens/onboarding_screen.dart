
import 'package:flutter/material.dart';
import 'package:flutter_application_5/product/PageDecoration.dart';
import 'package:flutter_application_5/screens/BottomNavigation/home_screen.dart';
import 'package:introduction_screen/introduction_screen.dart';

class OnboardingScreen extends StatelessWidget {
 OnboardingScreen({super.key});

// *******************
final introKey = GlobalKey<IntroductionScreenState>();
// ****************

  @override
  Widget build(BuildContext context) {
    PageDecorationss();             // product da
    return IntroductionScreen(
      key: introKey,
      globalBackgroundColor: Colors.white,
      pages:  [
          PageViewModel(
            title: 'Shop Now', 
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,', 
            image: Image.asset('image/splash1.png', width: 300),
          ),
          PageViewModel(
            title: 'Big Discount', 
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,', 
            image: Image.asset('image/splash2.png', width: 300),
          ),
          PageViewModel(
            title: 'Free Delivery', 
            body: 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s,',
            image: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Image.asset('image/splash3.png', width: 300,),
            ),

            decoration:  const PageDecoration(),
            footer:  Padding(padding: const EdgeInsets.only(left: 15, right: 15, top: 50), 
            child: ElevatedButton(
             onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => const HomeScreen()));
             },
             style: ElevatedButton.styleFrom(
              minimumSize: const Size.fromHeight(55), 
              backgroundColor: const Color(0xFFEf6969),
              shape:  RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
             ),
             child: const Text('lets shop', style: TextStyle(fontSize: 18),), 
                      
            ),
            ), 
          ),
      ],
      showSkipButton: false, 
      showDoneButton: false,
      showBackButton: true, 
      back: const Text('back', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),),
      next: const Text('Next', style: TextStyle(fontWeight: FontWeight.w600, color: Color(0xFFEF6969)),),
      onDone: () {}, 
      onSkip: () {},
      dotsDecorator:  DotsDecorator(
        size: const Size.square(10), 
        activeSize: const Size(20, 10), 
        activeColor: const Color(0xFFEf6969), 
        color: Colors.black26, 
        spacing: const EdgeInsets.symmetric(horizontal: 3), 
        activeShape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)), 
      ),
    );
  }
}
