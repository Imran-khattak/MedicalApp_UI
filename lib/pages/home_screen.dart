import 'package:flutter/material.dart';

import '../util/consltation_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height / 7,
                  width: MediaQuery.of(context).size.width,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          const CircleAvatar(
                            backgroundColor: Colors.grey,
                            backgroundImage: AssetImage('images/profile.jpg'),
                            radius: 25,
                          ),
                          const SizedBox(
                            width: 15,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text(
                                'Welcome back',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    color: Colors.grey),
                              ),
                              Text(
                                'IMraN',
                                style: TextStyle(
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold,
                                    color: Color(0xff061E47)),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Icon(
                        Icons.sort,
                        size: 35,
                        color: Color(0xff061E47),
                      )
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Upcoming consultations',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff061E47)),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.blue.shade700,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.blue,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/12.jpg'),
                              radius: 21,
                            ),
                          ),
                          color: Colors.blue.shade900,
                          name: 'Michael\nSimpson',
                          namecoller: Colors.white,
                          timeText: '8:45 PM',
                          timetextColor: Colors.white,
                          dateText: 'Dec 8',
                          datetextColor: Colors.white,
                          calltext: 'Join the call',
                          calltextcolor: Colors.white,
                          callboxcolor: Colors.green.shade300,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            radius: 25,
                            backgroundColor: Colors.white,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/3.jpg'),
                              radius: 21,
                            ),
                          ),
                          color: Color(0xffE3E7F1),
                          name: 'Kate\nBrown',
                          namecoller: Color(0xff061E47),
                          timeText: '8:45 PM',
                          timetextColor: Colors.green.shade400,
                          dateText: 'Dec 12',
                          datetextColor: Colors.blueAccent,
                          calltext: 'Wait for call',
                          calltextcolor: Colors.blue.shade900,
                          callboxcolor: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: CircleAvatar(
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/10.jpg'),
                              radius: 21,
                            ),
                          ),
                          color: Color(0xffE3E7F1),
                          name: 'Rose\nJain',
                          namecoller: Color(0xff061E47),
                          timeText: '8:45 AM',
                          timetextColor: Colors.green.shade400,
                          dateText: 'Jan 12',
                          datetextColor: Colors.blueAccent,
                          calltext: 'Wait for call',
                          calltextcolor: Colors.blue.shade900,
                          callboxcolor: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/13.jpg'),
                            ),
                          ),
                          color: Color(0xffE3E7F1),
                          name: 'Jessica\nSimpson',
                          namecoller: Color(0xff061E47),
                          timeText: '8:45 PM',
                          timetextColor: Colors.green.shade400,
                          dateText: 'Feb 12',
                          datetextColor: Colors.blueAccent,
                          calltext: 'Wait for call',
                          calltextcolor: Colors.blue.shade900,
                          callboxcolor: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/2.jpg'),
                            ),
                          ),
                          color: Color(0xffE3E7F1),
                          name: 'Rohan\nShah',
                          namecoller: Color(0xff061E47),
                          timeText: '8:45 PM',
                          timetextColor: Colors.green.shade400,
                          dateText: 'Dec 12',
                          datetextColor: Colors.blueAccent,
                          calltext: 'Wait for call',
                          calltextcolor: Colors.blue.shade900,
                          callboxcolor: Colors.white,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        ConsltationCard(
                          avatar: const CircleAvatar(
                            backgroundColor: Colors.white,
                            radius: 25,
                            child: CircleAvatar(
                              radius: 21,
                              backgroundColor: Colors.grey,
                              backgroundImage: AssetImage('images/1.jpg'),
                            ),
                          ),
                          color: Color(0xffE3E7F1),
                          name: 'Zoney\nPaul',
                          namecoller: Color(0xff061E47),
                          timeText: '3:45 PM',
                          timetextColor: Colors.green.shade400,
                          dateText: 'Feb 22',
                          datetextColor: Colors.blueAccent,
                          calltext: 'Wait for call',
                          calltextcolor: Colors.blue.shade900,
                          callboxcolor: Colors.white,
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Patient profiles',
                      style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff061E47)),
                    ),
                    Icon(
                      Icons.arrow_forward,
                      size: 30,
                      color: Colors.blue.shade700,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 25),
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CircleAvatar(
                          backgroundColor: Colors.green[200],
                          radius: 30,
                          child: const Icon(
                            Icons.add,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/9.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/11.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/7.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/6.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/4.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/11.jpg'),
                          radius: 30,
                        ),
                        const SizedBox(
                          width: 15,
                        ),
                        const CircleAvatar(
                          backgroundColor: Colors.grey,
                          backgroundImage: AssetImage('images/8.jpg'),
                          radius: 30,
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Container(
                    height: 60,
                    width: 370,
                    decoration: BoxDecoration(
                      color: Color(0xffE3E7F1),
                      borderRadius: const BorderRadius.all(Radius.circular(30)),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 15),
                          child: Container(
                            height: 40,
                            width: 150,
                            decoration: BoxDecoration(
                              color: Colors.blue.shade900,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(20)),
                            ),
                            child: const Center(
                              child: Text(
                                'Last enquiries',
                                style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(right: 50),
                          child: Text('Reports',
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xff061E47))),
                        ),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 20),
                  child: Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 5),
                        child: Container(
                          height: 60,
                          width: 3,
                          color: Colors.green.shade200,
                        ),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      CircleAvatar(
                        radius: 25,
                        backgroundColor: Colors.grey,
                        backgroundImage: AssetImage('images/5.jpg'),
                      ),
                      SizedBox(
                        width: 15,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Anna Kowalsky',
                            style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Color(0xff061E47)),
                          ),
                          Text(
                            'Video Consultation',
                            style: TextStyle(
                                fontSize: 15,
                                fontWeight: FontWeight.w500,
                                color: Colors.grey.shade500),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
