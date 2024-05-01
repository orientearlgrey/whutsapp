import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:whutsapp/components/whutsapp_bubble.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: const Color(0xff52a8fd),
          brightness: Brightness.dark,
        ),
        useMaterial3: true,
      ),
      home: const WhutsApp(
        contact: 'Professor D',
        avatarPath: 'assets/images/nursing-D.jpeg',
      ),
    );
  }
}

class WhutsApp extends StatelessWidget {
  const WhutsApp(
      {super.key,
      required this.contact,
      required this.avatarPath,
      this.byline = 'tap here for contact info'});

  final String contact;
  final String avatarPath;
  final String byline;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        appBar: PreferredSize(
          preferredSize: const Size(
            double.infinity,
            64.0,
          ),
          child: ClipRRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 15, sigmaY: 15),
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.chevron_back,
                        color: Color(0xff52a8fd),
                        size: 32,
                      ),
                    ),
                    SizedBox(
                      width: 220,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            foregroundImage: AssetImage(avatarPath),
                            backgroundColor: Colors.white,
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                contact,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                byline,
                                style: const TextStyle(
                                  fontSize: 12,
                                  color: Color(0xff8a9397),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.videocam,
                        color: Color(0xff52a8fd),
                        size: 34,
                      ),
                    ),
                    IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        CupertinoIcons.phone,
                        color: Color(0xff52a8fd),
                        size: 28,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
        body: Container(
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/images/background.png'),
              fit: BoxFit.cover,
              opacity: 0.6,
              colorFilter: ColorFilter.mode(Colors.black, BlendMode.screen),
            ),
          ),
          child: SizedBox(
            height: MediaQuery.of(context).size.height,
            child: const SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 90,
                  ),
                  WhutsAppBubble(
                    text:
                        'The nurse is caring for a patient who recently suffered a stroke. The physician orders for the patient to be advanced to a clear liquid diet from NPO. Before allowing the patient to drink, which of the following is the most important for the nurse to confirm?',
                    timestamp: '9:35 AM',
                    color: Color(0xff005046),
                    tail: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  WhutsAppBubble(
                    text:
                        'The choices are the patient\'s favourite drinks, if the patient needs thickened liquids, if the patient is urinating, and if the patient has vomited in 24 hours.',
                    timestamp: '9:36 AM',
                    color: Color(0xff005046),
                    tail: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                  ),
                  WhutsAppBubble(
                    text:
                        'Let\'s focus on the patient\'s safety and well-being!',
                    timestamp: '9:41 AM',
                    color: Color(0xff363638),
                    tail: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    isSender: false,
                  ),
                  WhutsAppBubble(
                    text:
                        'When a patient is advanced to a clear liquid diet from NPO (nothing by mouth), it means they can start consuming clear liquids like water, clear broths, and electrolyte-rich drinks. Before allowing the patient to drink, the most important thing for the nurse to confirm is: D) If the patient has vomited in 24 hours.',
                    timestamp: '9:41 AM',
                    color: Color(0xff363638),
                    tail: false,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    isSender: false,
                  ),
                  WhutsAppBubble(
                    text:
                        'The nurse needs to ensure the patient has not vomited in the past 24 hours to minimize the risk of complications and ensure safe reintroduction to oral fluids.',
                    timestamp: '9:41 AM',
                    color: Color(0xff363638),
                    tail: true,
                    textStyle: TextStyle(color: Colors.white, fontSize: 16),
                    isSender: false,
                  ),
                ],
              ),
            ),
          ),
        ),
        bottomNavigationBar: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconButton(
              onPressed: () {},
              icon: const Icon(
                Icons.add_outlined,
                size: 30,
                color: Color(0xff52a8fd),
              ),
            ),
            SizedBox(
              width: 231,
              height: 35,
              child: TextField(
                textAlignVertical: TextAlignVertical.center,
                showCursor: false,
                decoration: InputDecoration(
                  enabled: true,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20.0),
                    borderSide: const BorderSide(
                      color: Color(0xff39393a),
                      width: 1,
                    ),
                  ),
                  fillColor: const Color(0xff2c2c2e),
                  suffixIcon: IconButton(
                    onPressed: () {},
                    icon: Transform.scale(
                      scaleX: 0.75,
                      child: Transform.rotate(
                        angle: 90 * math.pi / 180,
                        child: const Icon(
                          CupertinoIcons.doc,
                          color: Color(0xff52a8fd),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.camera,
                size: 24,
                color: Color(0xff52a8fd),
              ),
            ),
            IconButton(
              onPressed: () {},
              icon: const Icon(
                CupertinoIcons.mic,
                size: 28,
                color: Color(0xff52a8fd),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class WhutsappChatBubble extends StatelessWidget {
  const WhutsappChatBubble({
    super.key,
    this.author = 'self',
    required this.bubbleText,
    required this.timestamp,
  });

  final String author;
  final String bubbleText;
  final String timestamp;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: author == 'self'
              ? MainAxisAlignment.end
              : MainAxisAlignment.start,
          children: [
            Container(
              width: MediaQuery.of(context).size.width * 0.7,
              decoration: BoxDecoration(
                color: author == 'self'
                    ? const Color(0xff005046)
                    : const Color(0xff363638),
                borderRadius: const BorderRadius.all(
                  Radius.circular(16.0),
                ),
              ),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 12.0, vertical: 6.0),
                child: Column(
                  children: [
                    Text(
                      bubbleText,
                      style: const TextStyle(
                        fontSize: 17,
                        fontFamily: 'SF Pro',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Text(
                          timestamp,
                          style: const TextStyle(
                            color: Color(0xff9a9aa1),
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
    );
  }
}

// WhutsAppBubble(
//   text:
//       'Street lights indicate a speed limit of 30 miles an hour, but this is only for the theory test.',
//   timestamp: '9:40 AM',
//   color: Color(0xff363638),
//   tail: false,
//   textStyle: TextStyle(color: Colors.white, fontSize: 16),
//   isSender: false,
// ),
// WhutsAppBubble(
//   text:
//       'In real life, be wary of speed limit signs because some boroughs changed the speed limit to just 20 miles an hour.',
//   timestamp: '9:41 AM',
//   color: Color(0xff363638),
//   tail: true,
//   textStyle: TextStyle(color: Colors.white, fontSize: 16),
//   isSender: false,
// ),