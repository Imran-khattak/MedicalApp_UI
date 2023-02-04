import 'package:flutter/material.dart';

class ConsltationCard extends StatelessWidget {
  final String name;
  final String calltext;
  final String timeText;
  final Color timetextColor;
  final String dateText;
  final Color datetextColor;
  final Color color;
  final Color callboxcolor;
  final Color namecoller;
  final Color calltextcolor;
  final Widget avatar;
  const ConsltationCard(
      {super.key,
      required this.name,
      required this.color,
      required this.calltext,
      required this.timeText,
      required this.timetextColor,
      required this.dateText,
      required this.datetextColor,
      required this.callboxcolor,
      required this.namecoller,
      required this.calltextcolor,
      required this.avatar});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 155,
      height: 180,
      decoration: BoxDecoration(
        color: color,
        borderRadius: const BorderRadius.all(Radius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 24, left: 24, right: 24),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                avatar,
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: <Widget>[
                    Text(
                      timeText,
                      style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: timetextColor),
                    ),
                    Text(
                      dateText,
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: datetextColor),
                    )
                  ],
                )
              ],
            ),
            const Spacer(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name,
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: namecoller),
                ),
                OutlinedButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    foregroundColor: MaterialStateProperty.all(Colors.white),
                    backgroundColor: MaterialStateProperty.all(callboxcolor),
                    shape: MaterialStateProperty.all(RoundedRectangleBorder(
                        borderRadius: BorderRadius.all(Radius.circular(20)))),
                  ),
                  child: Text(
                    calltext,
                    style: TextStyle(fontSize: 12, color: calltextcolor),
                  ),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
