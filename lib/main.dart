import 'package:flutter/material.dart';
import 'package:schedule_ui/card.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  final today = 16;
  final totalDay = 30;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey[900],
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(56),
                            child: Image.asset(
                              'assets/images/avatar.jpg',
                              width: 56,
                              height: 56,
                            ),
                          ),
                          Icon(Icons.add, size: 36, color: Colors.white),
                        ],
                      ),
                      SizedBox(height: 30),
                      Row(
                        children: [
                          Text(
                            'MONDAY',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                              letterSpacing: 0.2,
                            ),
                          ),
                          SizedBox(width: 4),
                          Text(
                            '16',
                            style: TextStyle(
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(width: 4),
                        ],
                      ),
                      SizedBox(height: 4),
                      SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: Row(
                          children: [
                            Text(
                              'TODAY',
                              style: TextStyle(
                                fontSize: 44,
                                fontWeight: FontWeight.w400,
                                color: Colors.white,
                                letterSpacing: -1.4,
                              ),
                            ),
                            Text(
                              '·',
                              style: TextStyle(
                                fontSize: 40,
                                fontWeight: FontWeight.w700,
                                color: Colors.red,
                              ),
                            ),
                            for (int i = today + 1; i <= totalDay; i++)
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                  horizontal: 8,
                                ),
                                child: Text(
                                  '$i',
                                  style: TextStyle(
                                    fontSize: 40,
                                    fontWeight: FontWeight.w400,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20),
                    ],
                  ),
                ),
                MyCard(
                  backgroundColor: Colors.yellow,
                  title: 'DESIGN\nMEETING',
                  startHour: '11',
                  startMinute: '30',
                  endHour: '12',
                  endMinute: '30',
                  participants: ['ALEX', 'HELLENA', 'NANA'],
                ),
                MyCard(
                  backgroundColor: Colors.purple.shade300,
                  title: 'DAILY\nPROJECT',
                  startHour: '12',
                  startMinute: '35',
                  endHour: '14',
                  endMinute: '10',
                  participants: [
                    'ME',
                    'RICHARD',
                    'CIRY',
                    'JAMES',
                    'NANA',
                    'JOHN',
                    'JACK',
                  ],
                ),
                MyCard(
                  backgroundColor: Colors.green,
                  title: 'WEEKLY\nPLANNING',
                  startHour: '15',
                  startMinute: '00',
                  endHour: '16',
                  endMinute: '30',
                  participants: ['DEN', 'NANA', 'MARK'],
                ),
                MyCard(
                  backgroundColor: Colors.blue,
                  title: 'WEEKLY\nPLANNING',
                  startHour: '15',
                  startMinute: '00',
                  endHour: '16',
                  endMinute: '30',
                  participants: ['ALEX', 'HELLENA', 'NANA'],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
