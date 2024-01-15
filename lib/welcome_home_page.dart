import 'package:flutter/material.dart';


class WelcomeHomePage extends StatefulWidget {
  const WelcomeHomePage({super.key});

  @override
  State<WelcomeHomePage> createState() => _WelcomeHomePageState();
}

class _WelcomeHomePageState extends State<WelcomeHomePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
        color: Colors.white,
        child:  Padding(
          padding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(16.0),
                child: Container(
                  color: Colors.amber,
                  height: 80,
                  width: 80,
                  child: const Icon(
                    Icons.ac_unit,
                    size: 36,
                    color: Colors.white,
                    ),
                ),
              ),
               const Text(
                "Hey, Welcome Back",
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                  decoration: TextDecoration.none,
                ),
                ),
                
            ],
            ),
        ),
      );
  }
}