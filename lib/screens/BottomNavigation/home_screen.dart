import 'package:flutter/material.dart';

import '../ProductScreen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  // **************
  List tabs = ['All', 'Category', 'Top', 'Recommended'];

  List imageList = [
    'image/image1.jpg',
    'image/image2.jpg',
    'image/image3.jpg',
    'image/image4.jpg',
  ];

  List productTitles = [
    'warm Zipper', 
    'knitted woo!', 
    'zipper Win', 
    'Child Win', 
  ];

  List prices = [
    '\$300', 
    '\$650', 
    '\$50', 
    '\$100', 
  ];

  List reviews = [
    '54', 
    '120', 
    '542', 
    '34', 
  ];

  // ****************
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
         body: ListView(
          children: [
            SafeArea(
            child: Padding(
              padding: const EdgeInsets.only(left: 15, right: 15, top: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
         
                      Container(
                        height: 50, width: MediaQuery.of(context).size.width / 1.5, 
                        decoration: BoxDecoration( 
                          color: Colors.black12.withOpacity(0.05), 
                          borderRadius: BorderRadius.circular(10),   
                        ),
                        child: TextFormField(
                          decoration: const InputDecoration(
                            prefixIcon: Icon(Icons.search, color: Color(0xFFDB3022)), 
                            border: InputBorder.none, 
                            label: Text('Find your Product', style: TextStyle(color: Color.fromARGB(255, 247, 136, 136))), 
                          ),
                        ),
                      ), 
         
                      Container(
                        height: 50, width: MediaQuery.of(context).size.width / 6,
                        decoration: BoxDecoration(
                          color: Colors.black12.withOpacity(0.05), 
                          borderRadius: BorderRadius.circular(10), 
                        ),
                        child: const Center(
                          child: Icon(Icons.notifications, color: Color(0xFFDB3022),),
                        ),
                      ), 
         
                    ]),
         
                    const SizedBox(height: 20),
         
                    Container(
                      height: 150, width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFF8DD), 
                        borderRadius: BorderRadius.circular(20), 
                      ),
                      child: Image.network('https://picsum.photos/912'),
                      
                    ),  
         
                        const SizedBox(height: 20),
         
                        SizedBox(
                     
                          height: 50, 
                          child: ListView.builder(
                           
                            scrollDirection: Axis.horizontal,
                            itemCount: tabs.length,
                            itemBuilder: (context, index) {
                            return FittedBox(
                              child: Container( 
                               height: 20, 
                                margin: const EdgeInsets.all(7),
                                padding: const EdgeInsets.only(left: 15, right: 15), 
                                decoration:    BoxDecoration(
                                  color: Colors.black12.withOpacity(0.05), 
                                  borderRadius: BorderRadius.circular(20),          
                                ),
                                
                                child: Center(
                                  child: FittedBox(
                                    child: Text(tabs[index], style: const TextStyle(color: Colors.black38, fontWeight: FontWeight.bold, fontSize: 16),),
                                  ),
                                ),
                              ),
                            );
                          },),
                        ), 
                      
                      const SizedBox(height: 10), 
         
                       const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('New Collection', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                     ),
         
                         const SizedBox(height: 10), 
         
                      SizedBox(
                        height: 220,
                        child: ListView.builder(
                          itemCount: imageList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                          return Padding(
                            padding: const EdgeInsets.only(right: 18),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Stack( 
                                  children: [ 
                                    InkWell( 
                                      onTap: () {
                                        Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(),));
                                      },
                                      child: ClipRRect(                                  
                                        borderRadius: BorderRadius.circular(20),
                                        child: Image.network('https://picsum.photos/200/300',  
                                        height: 150, width: 160,
                                        fit: BoxFit.cover, 
                                        ),
                                      ),
                                    ), 
                                    Positioned(
                                      right: 10, top: 10, 
                                      child: Container(
                                        height: 30, width: 30, 
                                        decoration: BoxDecoration(
                                         color: Colors.white, 
                                         borderRadius: BorderRadius.circular(20), 
                                        ),
                                        child: const Center(child: Icon(Icons.favorite, color: Colors.red)),
                                      ),
                                    ),
                                  ]),
                                const SizedBox(height: 10), 
                                   
                                Text(productTitles[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), 
                                const SizedBox(height: 10),  
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber),
                                    Text( '${'(' + reviews[index]})' ),  
                                    const SizedBox(width: 10,), 
                                    Text(prices[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                      ), 
                      
                      const SizedBox(height: 20), 

                     const Align(
                      alignment: Alignment.centerLeft,
                      child: Text('Old Collection', style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),
                     ),

                    const SizedBox(height: 10), 

                        SingleChildScrollView(
                      scrollDirection: Axis.horizontal,    
                        child: Row(
                          children: [
                            SizedBox(
                        height: 300,
                        child: ListView.builder(
                          itemCount: imageList.length,
                          scrollDirection: Axis.horizontal,
                          shrinkWrap: true,
                          itemBuilder: (context, index) {
                          return Container( 
                            margin: const EdgeInsets.only(right: 18),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [

                                SizedBox(
                                  height: 200,            
                                  child: Stack( 
                                    children: [ 
                                      InkWell( 
                                       onTap: () {
                                          Navigator.push(context, MaterialPageRoute(builder: (context) => const ProductScreen(),));
                                        },
                                        child: ClipRRect(
                                          borderRadius: BorderRadius.circular(20),
                                          child: Image.network('https://picsum.photos/200/300',),
                                          
                                        ),
                                      ), 
                                      Positioned(
                                        right: 10, top: 10, 
                                        child: Container(
                                          height: 30, width: 30, 
                                          decoration: BoxDecoration(
                                           color: Colors.white, 
                                           borderRadius: BorderRadius.circular(20), 
                                          ),
                                          child: const Center(child: Icon(Icons.favorite, color: Colors.red)),
                                        ),
                                      ),
                                    ]),
                                ),
                                
                                const SizedBox(height: 10), 
         
                                Text(productTitles[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)), 
                                const SizedBox(height: 10),  
                                Row(
                                  children: [
                                    const Icon(Icons.star, color: Colors.amber),
                                    Text( '${'(' + reviews[index]})' ),  
                                    const SizedBox(width: 10,), 
                                    Text(prices[index], style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                                  ],
                                )
                              ],
                            ),
                          );
                        }),
                      ),
                          ],
                        ),
                          
                      )
                ]),
            ), 
            ),
            ],
         ),
    );
  }
}