import 'package:alert_design/lockdown_slide_button.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Alert extends StatefulWidget {
  const Alert({super.key});

  @override
  State<Alert> createState() => _AlertState();
}

class _AlertState extends State<Alert> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(Icons.settings_outlined, size: 30),
        title: Text('High School', style: GoogleFonts.outfit()),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'Switch',
              style: GoogleFonts.outfit(color: Colors.blue, fontSize: 15),
            ),
          ),
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  print('SECURE');
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image(
                          image: AssetImage('assets/images/secure.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'SECURE',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => LockdownSlideButton(),
                    ),
                  );
                  print('LOCKDOWN');
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image(
                          image: AssetImage('assets/images/lockdown.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'LOCKDOWN',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  print('EVACUATE');
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 15),
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image(
                          image: AssetImage('assets/images/evacuate.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'EVACUATE',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(width: 40),
              GestureDetector(
                onTap: () {
                  print('SHELTER');
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 20),
                      SizedBox(
                        height: 110,
                        width: 110,
                        child: Image(
                          image: AssetImage('assets/images/shelter.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),

                      Text(
                        'SHELTER',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Row(
            children: [
              SizedBox(width: 120),
              GestureDetector(
                onTap: () {
                  print('HOLD');
                },
                child: Container(
                  height: 180,
                  width: 140,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Column(
                    children: [
                      SizedBox(height: 10),
                      SizedBox(
                        height: 120,
                        width: 120,
                        child: Image(
                          image: AssetImage('assets/images/hold.png'),
                          fit: BoxFit.cover,
                        ),
                      ),
                      SizedBox(height: 10),
                      Text(
                        'HOLD',
                        style: GoogleFonts.outfit(
                          color: Colors.black,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: SizedBox(
          width: 180,
          child: ElevatedButton.icon(
            onPressed: () {
              // Your action
              showModalBottomSheet(
                context: context,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
                ),
                builder: (BuildContext context) {
                  return Container(
                    height: 600,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(20),
                        topRight: Radius.circular(20),
                      ),
                    ),
                    padding: EdgeInsets.all(16),
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 50,
                          height: 5,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        SizedBox(height: 10),
                        Row(
                          children: [
                            Text(
                              'Choose a Type',
                              style: GoogleFonts.outfit(
                                fontSize: 15,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(width: 150),
                            TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text(
                                'Cancel',
                                style: GoogleFonts.outfit(color: Colors.blue),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20),
                        ListTile(
                          leading: Icon(Icons.notification_important, size: 30),
                          title: Text(
                            'Student Behavioral/Emotional Assistance',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context); // Close bottom sheet
                            print('Student Behavioral/Emotional Assistance');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.no_accounts, size: 30),
                          title: Text(
                            'Disruptive Parent/Visitor',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('Disruptive Parent/Visitor');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.medical_services, size: 30),
                          title: Text(
                            'Medical Assistance Needed ',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('Medical Assistance Needed');
                          },
                        ),
                        ListTile(
                          leading: SizedBox(
                            height: 30,
                            width: 30,
                            child: Image.asset('assets/images/emoji.png'),
                          ),
                          title: Text(
                            'Suspicious Activity ',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('Suspicious Activity ');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.notification_important, size: 30),
                          title: Text(
                            'Administrative Assistance ',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('Administrative Assistance ');
                          },
                        ),
                        ListTile(
                          leading: Icon(Icons.notification_important, size: 30),
                          title: Text(
                            'IT Hands on Support',
                            style: GoogleFonts.outfit(),
                          ),
                          onTap: () {
                            Navigator.pop(context);
                            print('IT Hands on Support');
                          },
                        ),
                      ],
                    ),
                  );
                },
              );
            },
            icon: Icon(Icons.notifications, color: Colors.black, size: 20),
            label: Text(
              'TEAM ASSIST',
              style: GoogleFonts.outfit(
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30.0),
              ),
              padding: EdgeInsets.symmetric(vertical: 16),
              elevation: 2,
              shadowColor: Colors.blueGrey,
            ),
          ),
        ),
      ),
    );
  }
}
