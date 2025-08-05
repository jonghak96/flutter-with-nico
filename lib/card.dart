import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {
  final Color backgroundColor;
  final String title;
  final String startHour;
  final String startMinute;
  final String endHour;
  final String endMinute;
  final List<String> participants;

  const MyCard({
    super.key,
    required this.backgroundColor,
    required this.title,
    required this.participants,
    required this.startHour,
    required this.startMinute,
    required this.endHour,
    required this.endMinute,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Container(
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(34),
        ),
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 40, 20, 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                children: [
                  SizedBox(height: 6),
                  Text(
                    startHour,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    startMinute,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                  Text(
                    '|',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w200,
                      color: Colors.black54,
                    ),
                  ),
                  SizedBox(height: 6),
                  Text(
                    endHour,
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w500,
                      height: 0.8,
                    ),
                  ),
                  Text(
                    endMinute,
                    style: TextStyle(fontSize: 14, fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              SizedBox(width: 20),
              Column(
                children: [
                  Text(
                    title,
                    style: TextStyle(
                      fontSize: 68,
                      fontWeight: FontWeight.w400,
                      height: 0.85,
                      letterSpacing: -2,
                    ),
                  ),
                  SizedBox(height: 26),
                  Row(
                    // 왜 정렬 적용이 안될까요?
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      for (var i = 0; i < 3; i++)
                        Padding(
                          padding: const EdgeInsets.only(right: 20),
                          child: Text(
                            participants[i],
                            style: TextStyle(
                              color: Colors.grey[800],
                              fontWeight: participants[i] == 'ME'
                                  ? FontWeight.w800
                                  : FontWeight.w400,
                            ),
                          ),
                        ),
                      if (participants.length > 3)
                        Text(
                          '+${participants.length - 3}',
                          style: TextStyle(color: Colors.grey[800]),
                        ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
