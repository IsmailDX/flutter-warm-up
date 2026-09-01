import 'package:flutter/material.dart';
import 'package:flutter_basics/views/pages/login_page.dart';
import 'package:flutter_basics/views/widget_tree.dart';
import 'package:lottie/lottie.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsetsGeometry.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Lottie.asset('assets/lotties/GameAsset.json'),

            FittedBox(
              child: Text(
                'Flutter Warm up',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
              ),
            ),
            SizedBox(height: 20),
            FilledButton(
              style: FilledButton.styleFrom(
                minimumSize: Size(double.infinity, 40),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return WidgetTree();
                    },
                  ),
                );
              },
              child: Text('Get Started'),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) {
                      return LoginPage();
                    },
                  ),
                );
              },
              child: Text('Log in'),
            ),
          ],
        ),
      ),
    );
  }
}
