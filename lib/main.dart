import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(8.0),  // Padding to create a border effect
          child: Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.black, width: 2),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // Image occupying half the screen
                Expanded(
                  flex: 1,
                  child: Image.asset('assets/paissagem.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                // Title and icon row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Title in Bold',
                        style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          SizedBox(width: 4),
                          Text(
                            '42',
                            style: TextStyle(fontSize: 18),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                // Subtitle
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 16.0),
                  child: Text(
                    'Subtitle in grey',
                    style: TextStyle(
                      color: Colors.grey,
                      fontSize: 16,
                    ),
                  ),
                ),
                // Icon buttons row
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Column(
                        children: [
                          Icon(Icons.call, color: Colors.blue),
                          Text('CALL', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.near_me, color: Colors.blue),
                          Text('ROUTE', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                      Column(
                        children: [
                          Icon(Icons.share, color: Colors.blue),
                          Text('SHARE', style: TextStyle(color: Colors.blue)),
                        ],
                      ),
                    ],
                  ),
                ),
                // Descriptive text
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. '
                    'Phasellus imperdiet, nulla et dictum interdum, nisi lorem egestas odio, '
                    'vitae scelerisque enim ligula venenatis dolor.',
                    style: TextStyle(fontSize: 16),
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
