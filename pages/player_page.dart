import 'package:flutter/material.dart';

class PlayerPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final Color lighterGreyColor = Color(0xFFB0B0B0);

    final BoxDecoration boxDecorationWithShadow = BoxDecoration(
      color: lighterGreyColor,
      borderRadius: BorderRadius.circular(12),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.4),
          blurRadius: 10,
          offset: Offset(0, 4),
        ),
      ],
    );

    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              // Header
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(12),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Khalid Ali',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    Row(
                      children: [
                        Text(
                          'Goalkeeper',
                          style: TextStyle(
                            fontSize: 16,
                            color: Colors.white70,
                          ),
                        ),
                        SizedBox(width: 8),
                        Container(
                          height: 16,
                          width: 24,
                          child: Image.asset(
                            'assets/flag.png',
                            fit: BoxFit.cover,
                          ),
                        ),
                      ],
                    ),
                    SizedBox(height: 16),
                    Container(
                      width: double.infinity,
                      height: 160,
                      decoration: BoxDecoration(
                        color: Color(0xFF2A2A2A),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Stack(
                        children: [
                          Positioned.fill(
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.asset(
                                'assets/player.png',
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            top: 8,
                            left: 8,
                            child: Container(
                              height: 150,
                              width: 150,
                              child: Image.asset(
                                'assets/wba_logo.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Goals Per Season
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(16),
                decoration: boxDecorationWithShadow,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Goals Per Season',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 8),
                    Container(
                      height: 100,
                      width: double.infinity,
                      child: Image.asset(
                        'assets/goals_chart.png',
                        fit: BoxFit.contain,
                      ),
                    ),
                  ],
                ),
              ),

              SizedBox(height: 16),

              // Stats and Cards/Donut Section
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Statistics
                  Expanded(
                    flex: 1,
                    child: Container(
                      padding: EdgeInsets.all(12),
                      height: 292,
                      decoration: boxDecorationWithShadow,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Statistics',
                            style: TextStyle(
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Expanded(
                            child: Center(
                              child: Image.asset(
                                'assets/pentagon_chart.png',
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),

                  SizedBox(width: 16),

                  // Cards and Donut
                  Expanded(
                    flex: 1,
                    child: Column(
                      children: [
                        // Cards
                        Container(
                          padding: EdgeInsets.all(12),
                          height: 140,
                          decoration: boxDecorationWithShadow,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Cards',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                              Expanded(
                                child: Center(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "2",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.orange,
                                            ),
                                          ),
                                          Text(
                                            "Yellow",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(width: 24),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.center,
                                        children: [
                                          Text(
                                            "0",
                                            style: TextStyle(
                                              fontSize: 24,
                                              fontWeight: FontWeight.bold,
                                              color: Colors.red,
                                            ),
                                          ),
                                          Text(
                                            "Red",
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Colors.white70,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),

                        SizedBox(height: 12),

                        // Donut Chart
                        Container(
                          padding: EdgeInsets.all(12),
                          height: 140,
                          decoration: boxDecorationWithShadow,
                          child: Center(
                            child: Image.asset(
                              'assets/donut_chart.png',
                              fit: BoxFit.contain,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),

              SizedBox(height: 16),

              // More Info Button
              Container(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => InfoPage()),
                    );
                  },
                  child: Text(
                    'More Info',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.purple,
                    foregroundColor: Colors.white,
                    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
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

class InfoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: BackButton(color: Colors.white),
        title: Text(
          'Player Details',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Center(
        child: Text(
          'Here is more information about the player!',
          style: TextStyle(fontSize: 24, color: Colors.white),
        ),
      ),
    );
  }
}
