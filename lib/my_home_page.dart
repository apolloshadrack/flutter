import 'package:flutter/material.dart';


class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

 
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
      color: Colors.white,
      child: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
           
                      
                Expanded(
                  child: Image.asset(
                    "assets/images/test_one.png", 
                    fit: BoxFit.contain),
                ),
                      
                       const Padding(
                         padding: EdgeInsets.all(8.0),
                         child: Text(
                                    "Discover your\n Dream Job Here", 
                                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, decoration: TextDecoration.none, color: Colors.red,), textAlign: TextAlign.center,
                                  ),
                       ),
             


              const Padding(
                padding: EdgeInsets.all(32.0),
                child: Text(
                    "Start your career here today and become a flutter professional in the next three months", 
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.normal, decoration: TextDecoration.none, color: Colors.black), textAlign: TextAlign.center,
                    ),
              ),
                      
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.red,         
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              ),
                              ),
                          onPressed: () {}, 
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                         child:  Text(
                          "Login", 
                          style: TextStyle(fontSize: 16, color: Colors.white),
                          ),
                        ),
                        ),
                            
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            elevation: 0.0,
                            shadowColor: Colors.white,
                            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0.0) )
                          ),
                          onPressed: () {}, 
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                        child:  Text(
                          "Register", 
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                          ),
                        ),
                      ],
                      ),
                  )
                      
              ],
            
       
          ),
      )
      );
  }
}