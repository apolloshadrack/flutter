import 'package:flutter/material.dart';


class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
 

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      body: Container(
          color: Colors.black,
          child:  SafeArea(
            child: Column(
               mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                 const  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                        ),
                      ),
                  ),
      
      
                const  Padding(
                    padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 24),
                    child: Text(
                      "Welcome back",
                      style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      decoration: TextDecoration.none,
                        ),
                      ),
                  ),
      
              const   Padding(
                    padding:  EdgeInsets.symmetric(vertical: 0, horizontal: 24),
                    child: Text(
                      "Please sign in to your account",
                      style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.normal,
                      color: Color.fromARGB(123, 255, 255, 255),
                      decoration: TextDecoration.none,
                        ),
                      ),
                  ),
      
              
              const  Padding(
                  padding: EdgeInsets.all(18.0),
                  child: TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.email),
                        labelText: 'Username',
                        // helperText: 'Your phone number',
                        // border: OutlineInputBorder(),
                      ),
                  ),
                ),

              const  Padding(
                  padding: EdgeInsets.all(18.0),
                  child: TextField(
                   
                    obscureText: true,  
                    decoration: InputDecoration(
                      prefixIcon: Icon(Icons.lock_outline),
                      suffixIcon: Icon(Icons.remove_red_eye),
                      labelText: 'Password',
                      //  border: OutlineInputBorder(),
                      ),
                  ),
                ),

              const Padding(
                padding:  EdgeInsets.symmetric(vertical: 8, horizontal: 20),
                child:  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forgot password?",
                       style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.normal,
                          color: Colors.grey,
                          decoration: TextDecoration.none,
                            ),
                      ),
                  ],
                ),
              ),
              
             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,         
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                              ),
                              ),
                onPressed: () {}, 
                child: const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child:  Text(
                    "Create Account",
                     style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                ),
              ),
             ),


           const Padding(
             padding:  EdgeInsets.all(20.0),
             child:  Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                 Expanded(
                   child: Divider(
                    color: Colors.grey,
                    ),
                 ),
                 Padding(
                   padding: EdgeInsets.symmetric(horizontal: 16),
                   child: Text(
                      "Or sign up using",
                      style: TextStyle(
                      fontSize: 16, 
                      color: Colors.grey
                      ),
                                   ),
                 ),
             
                  Expanded(
                    child: Divider(
                      color: Colors.grey,
                      ),
                  ),
             
                 ],
              ),
           ),

          

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,         
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                              ),
                              ),
                onPressed: () {}, 
                child: const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                       Icon(Icons.g_mobiledata_rounded,color: Colors.black),
                      Text(
                        "Continue with Google",
                         style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                    ],
                  ),
                ),
              ),
             ),

             Padding(
               padding: const EdgeInsets.all(20.0),
               child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,         
                shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0),
                              ),
                              ),
                onPressed: () {}, 
                child: const Padding(
                  padding:  EdgeInsets.all(16.0),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Icon(Icons.apple,color: Colors.black),
                      Text(
                        "Continue with Apple",
                         style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                    ],
                  ),
                ),
              ),
             ),
      
           ],
           ),
          ),
        ),
    );
  }
}