import 'package:alert_design/lockdown_incident_detail.dart';
import 'package:alert_design/main.dart';
import 'package:alert_design/service/notification_service.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LockdownSlideButton extends StatefulWidget {
  const LockdownSlideButton({super.key});

  @override
  State<LockdownSlideButton> createState() => _LockdownSlideButtonState();
}

class _LockdownSlideButtonState extends State<LockdownSlideButton> {
  double _dragPosition = 0.0;
  double _dragPercentage = 0.0;
  bool _completed = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    NotificationService.initialize(flutterLocalNotificationsPlugin);
  }

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final buttonWidth = screenWidth - 100;
    return Scaffold(
      backgroundColor: Colors.black26,
      body: SafeArea(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              Text(
                'High School',
                style: GoogleFonts.outfit(color: Colors.white, fontSize: 18),
              ),
              SizedBox(height: 40),
              Padding(
                padding: const EdgeInsets.all(0),
                child: Container(
                  height: 120,
                  width: 120,
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
                  fontSize: 20,
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                ),
              ),
              SizedBox(height: 10),
              SizedBox(
                height: 30,
                width: 160,
                child: ElevatedButton.icon(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white38,
                  ),
                  icon: Icon(Icons.add, color: Colors.white),
                  label: Text(
                    'Add SubType',
                    style: GoogleFonts.outfit(color: Colors.white),
                  ),
                ),
              ),
              SizedBox(height: 100),
              //slide button
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    Container(
                      width: buttonWidth,
                      height: 80,
                      decoration: BoxDecoration(
                        color: _completed ? Colors.white : Colors.white38,
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: Center(
                        child:
                            _completed
                                ? Text(
                                  "Initiating",
                                  style: GoogleFonts.outfit(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black,
                                  ),
                                )
                                : Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    Text(
                                      "Slide to Initiate",
                                      textAlign: TextAlign.right,
                                      style: GoogleFonts.outfit(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        color: Colors.white,
                                      ),
                                    ),
                                    SizedBox(width: 10),
                                    Icon(
                                      Icons.arrow_forward_ios,
                                      color: Colors.white,
                                    ),
                                    SizedBox(width: 15),
                                  ],
                                ),
                      ),
                    ),
                    GestureDetector(
                      onHorizontalDragUpdate: (details) {
                        if (!_completed) {
                          setState(() {
                            _dragPosition += details.delta.dx;
                            _dragPosition = _dragPosition.clamp(
                              0.0,
                              buttonWidth - 80,
                            );
                            _dragPercentage =
                                _dragPosition / (buttonWidth - 60);
                          });
                        }
                      },
                      onHorizontalDragEnd: (details) async {
                        if (_dragPercentage > 0.8) {
                          // If dragged enough
                          setState(() {
                            _completed = true;
                            _dragPosition = buttonWidth - 80;
                          });

                          await NotificationService.showBigTextNotification(
                            title: "EMERGENCY",
                            body: "Emergency Lockdown",
                            fln: flutterLocalNotificationsPlugin,
                          );

                          Future.delayed(Duration(seconds: 1), () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => LockdownIncidentDetail(),
                              ),
                            );
                          });
                        } else {
                          // Reset if not enough dragged
                          setState(() {
                            _dragPosition = 0.0;
                            _dragPercentage = 0.0;
                          });
                        }
                      },
                      child: AnimatedContainer(
                        duration: Duration(milliseconds: 200),
                        transform: Matrix4.translationValues(
                          _dragPosition,
                          0,
                          0,
                        ),
                        width: 77,
                        height: 77,
                        decoration: BoxDecoration(
                          color: _completed ? Colors.white : Colors.white,
                          shape: BoxShape.circle,
                        ),
                        child:
                            _completed
                                ? Padding(
                                  padding: const EdgeInsets.all(20),
                                  child: CircularProgressIndicator(
                                    color: Colors.green,
                                    strokeWidth: 5,
                                  ),
                                )
                                : Icon(
                                  Icons.warning,
                                  color: Colors.red,
                                  size: 45,
                                ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 80),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                  print("Button pressed");
                },
                style: ElevatedButton.styleFrom(
                  shape: const CircleBorder(),
                  padding: const EdgeInsets.all(16),
                  backgroundColor: Colors.white38, // Button color
                ),
                child: const Icon(Icons.close, size: 32, color: Colors.white),
              ),
              Text('Cancel', style: GoogleFonts.outfit(color: Colors.white)),
            ],
          ),
        ),
      ),
    );
  }
}
