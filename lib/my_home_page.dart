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
                                  style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.red,), textAlign: TextAlign.center,
                                  ),
                       ),
             


              const Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                    "Start your career here today and become a flutter professional in the next three months", 
                    style: TextStyle(fontSize: 16, color: Colors.black), textAlign: TextAlign.center,
                    ),
              ),
                      
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(onPressed: () {}, 
                        child: Container(
                          child: 
                          const Text(
                            "Login", 
                            style: TextStyle(fontSize: 16, color: Colors.red),
                            ),
                        )
                        ),
                            
                        ElevatedButton(onPressed: () {}, 
                        child: Container(
                          child: 
                          const Text(
                            "Register", 
                            style: TextStyle(fontSize: 16, color: Colors.red),
                            ),
                        )
                        )
                      ],
                      ),
                  )
                      
              ],
            
       
          ),
      )
      );
  }
}