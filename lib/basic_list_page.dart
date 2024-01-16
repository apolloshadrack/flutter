import 'package:flutter/material.dart';

class BasicListPage extends StatefulWidget {
  const BasicListPage({super.key});

  @override
  State<BasicListPage> createState() => _BasicListPage();
}

class _BasicListPage extends State<BasicListPage> {
  List<String> feedItems = [
    "Drink Water",
    "Workout for 20 minutes",
    "write code for 2 hours",
    "Sing in the shower",
    "Make apple juice ",
    "Update operating system",
    "Submit deliverable",
    "Achieve 10,000 steps",
    "Write a blog post",
    "Work on side project",
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          child: Column(
            children: [
              const Text(
                "Choose what you would like to make your habit",
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  decoration: TextDecoration.none,
                ),
                textAlign: TextAlign.center,
              ),
              Expanded(
                child: ListView.builder(
                    scrollDirection: Axis.vertical,
                    itemCount: 5,
                    itemBuilder: (BuildContext context, int position) {
                      String name = feedItems[position];
                      Color color;
                      switch (position % 4) {
                        case 0:
                          color = Color.fromARGB(255, 238, 90, 252); // color 1
                          break;
                        case 1:
                          color = Color.fromARGB(255, 240, 113, 50); // color 2
                          break;
                        case 2:
                          color = Color.fromARGB(255, 112, 112, 246); // color 3
                          break;
                        default:
                          color = Color.fromARGB(255, 221, 240, 50); // color 4
                          break;
                      }

                      return Container(
                        margin: EdgeInsets.all(16),
                        height: 120,
                        child: Card(
                          color: color,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12.0),
                          ),
                          child: ListTile(
                            title: Text(name),
                            subtitle: Text("Position" + position.toString()),
                            trailing: Icon(Icons.arrow_forward_ios),
                          ),
                        ),
                      );
                    }),
              )
            ],
          ),
        ));
  }
}
