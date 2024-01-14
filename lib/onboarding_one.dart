import 'package:flutter/material.dart';


class OnboardingOnePage extends StatefulWidget {
  const OnboardingOnePage({super.key});

  @override
  State<OnboardingOnePage> createState() => _OnboardingOnePage();
}

class _OnboardingOnePage extends State<OnboardingOnePage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
        color: const Color.fromARGB(255, 251, 250, 248),
        child:  SafeArea(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                  child: Image.asset(
                    "assets/images/home.jpg", 
                    fit: BoxFit.fitWidth),
                ),

               const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                  child: Text(
                    "Never Run for Errands again",
                    style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                      ),
                    ),
                ),

                  const Padding(
                  padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 32),
                  child: Text(
                    "Pet grooming, barbershops and luxury car washes & more , right at your doorstep",
                    style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.normal,
                    color: Colors.black,
                    decoration: TextDecoration.none,
                      ),
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
                            backgroundColor: Colors.blue,         
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                              ),
                              ),
                          onPressed: () {}, 
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
                            padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
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
        )
        ),
      );
  }
}