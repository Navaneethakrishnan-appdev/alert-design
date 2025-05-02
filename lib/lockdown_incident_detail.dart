import 'package:alert_design/alert.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockdownIncidentDetail extends StatefulWidget {
  const LockdownIncidentDetail({super.key});

  @override
  State<LockdownIncidentDetail> createState() => _LockdownIncidentDetailState();
}

class _LockdownIncidentDetailState extends State<LockdownIncidentDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,

        leading: IconButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => Alert()),
            );
          },
          icon: Icon(Icons.navigate_before, color: Colors.black, size: 30),
        ),
        title: Text(
          'Incident Detail',
          style: GoogleFonts.outfit(color: Colors.black, fontSize: 20),
        ),
        centerTitle: true,
        actions: [
          Icon(Icons.menu, color: Colors.black, size: 30),
          SizedBox(width: 20),
        ],
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(height: 50),
            Padding(
              padding: const EdgeInsets.all(0),
              child: Container(
                height: 110,
                width: 110,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(100),
                ),
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(0),
                    child: Image(
                      image: AssetImage('assets/images/lockdown.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'LOCKDOWN EMERGENCY',
              style: GoogleFonts.outfit(
                fontSize: 19,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'High School',
              style: GoogleFonts.outfit(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Sam  Wed,Jul 14,2024  12:00 PM ',
              style: GoogleFonts.outfit(
                fontSize: 13,
                color: Colors.grey,
                fontWeight: FontWeight.w600,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              onPressed: () {},
              child: Text(
                'QUICK TASKS',
                style: GoogleFonts.outfit(
                  fontSize: 18,
                  color: Colors.orangeAccent,
                ),
              ),
            ),
            SizedBox(height: 20),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 5),
                backgroundColor: Colors.white,
              ),
              icon: Icon(Icons.call, size: 24, color: Colors.black),
              label: Text(
                'Emergency Call',
                style: GoogleFonts.outfit(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                backgroundColor: Colors.white,
              ),
              icon: Icon(Icons.message, size: 24, color: Colors.black),
              label: Text(
                'Group Messaging',
                style: GoogleFonts.outfit(fontSize: 18, color: Colors.black),
              ),
            ),
            SizedBox(height: 10),
            ElevatedButton.icon(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 25, vertical: 5),
                backgroundColor: Colors.white,
              ),
              icon: Icon(Icons.person, size: 24, color: Colors.black),
              label: Text(
                'Take Attendance',
                style: GoogleFonts.outfit(fontSize: 18, color: Colors.black),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
