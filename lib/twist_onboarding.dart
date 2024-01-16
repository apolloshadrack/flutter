import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  const MaterialApp(
      home: TwistOnboarding(),
    );
  }
}

class TwistOnboarding extends StatefulWidget {
  const TwistOnboarding({super.key});

  @override
  State<TwistOnboarding> createState() => _TwistOnboardingState();
}

class _TwistOnboardingState extends State<TwistOnboarding> {
  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Column(
        children: <Widget>[
          // Top half of the screen for the image with a gentle curve at the bottom
        ClipPath(
          clipper: BottomCurveClipper(),
          child: Container(
            height: screenHeight * 0.5,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage("assets/images/twist1.jpeg"),
                fit: BoxFit.cover,
              ),
            ),
          ),
        ),


          // Bottom half of the screen for text and button
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(30),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  const Text(
                    "Choose your time and place",
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const Text(
                    "TWiST comes to wherever you are",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 20),
                    child: ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 233, 33, 243),
                        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 15),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30),
                        ),
                      ),
                      child: const Padding(
                        padding:  EdgeInsets.all(8.0),
                        child:  Text(
                          "Continue",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, 0); // Start from the top left corner
    path.lineTo(0, size.height - 30); // Line to the bottom left corner, 50 units above the container's bottom

    // The control point is now 50 units below the bottom edge of the container, to create the dip effect
    var controlPoint = Offset(size.width / 2, size.height + 30);
    var endPoint = Offset(size.width, size.height - 30); // End point 50 units above the bottom right corner
    path.quadraticBezierTo(
      controlPoint.dx,
      controlPoint.dy,
      endPoint.dx,
      endPoint.dy,
    ); // Curve that dips into the image

    path.lineTo(size.width, 0); // Line to the top right corner
    path.close(); // Close the path

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}


