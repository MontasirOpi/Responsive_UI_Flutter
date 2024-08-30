import 'package:flutter/material.dart';

class DesktopBody extends StatelessWidget {
  const DesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            elevation: 0,
            title: const Padding(
              padding: EdgeInsets.all(10),
              child: Text(
                "HUMMING\nBIRD .",
                style: TextStyle(color: Colors.black),
                
              ),
            ),
            actions: [
              TextButton(
                
                onPressed: () {
                  // Navigate to Episodes
                },
                child: const Text(
                  "Episodes",
                  style: TextStyle(color: Colors.black),
                ),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to About
                },
                child: const Text(
                  "About",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(32.0),
            child: Row(
              children: [
                // Left side: 60% of the screen for the content
                const Expanded(
                  flex: 6, // 60%
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "FLUTTER WEB.",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "THE BASICS",
                        style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        "In this course we will go over the basics of using Flutter Web for development. "
                        "Topics will include Responsive Layout, Deploying, Font Changes, Hover functionality, Modals and more.",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
                // Right side: 40% of the screen for the "Join course" button
                Expanded(
                  flex: 4, // 40%
                  child: Center(
                    child: ElevatedButton(
                      onPressed: () {
                        // Join course action
                      },
                      child: const Text("Join course"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.green,
                        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
                        textStyle: const TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
