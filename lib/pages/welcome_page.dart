import 'package:flutter/material.dart';

import 'package:hive_to_do_list/pages/home_page.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(      
      backgroundColor: Colors.yellow[200],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "TODO",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            Positioned(
              bottom: 50,
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                child: const Text('CREATE NEW LIST'),
              ),
            )
          ],
        ),
      ),
    );
  }
}
