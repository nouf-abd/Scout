
import 'package:flutter/material.dart';
import 'player_page.dart';
import 'scout_page.dart';
import 'coach_page.dart';

class OnboardingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[850],
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          // PageView for onboarding text
          Expanded(
            child: PageView(
              children: [
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Welcome to Scout!',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        'assets/ball.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'Choose your role to proceed.',
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                        ),
                      ),
                      SizedBox(height: 20),
                      Image.asset(
                        'assets/choose_role_image.png',
                        height: 200,
                        width: 200,
                        fit: BoxFit.cover,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),


          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _buildRoleButton(context, "Player", PlayerPage()),
                _buildRoleButton(context, "Scout", ScoutPage()),
                _buildRoleButton(context, "Coach", CoachPage()),
              ],
            ),
          ),
        ],
      ),
    );
  }


  Widget _buildRoleButton(BuildContext context, String role, Widget page) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Text(
        role,
        style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.purple,
        foregroundColor: Colors.white,
        padding: EdgeInsets.symmetric(horizontal: 30, vertical: 15),
        textStyle: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
    );
  }
}