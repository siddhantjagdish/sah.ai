import 'package:flutter/material.dart';
import 'package:practice/chat_page.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: 355.34,
              height: 760,
              clipBehavior: Clip.antiAlias,
              decoration: ShapeDecoration(
                color: Color(0xFF151515),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(31.98),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    left: 16.87,
                    top: 359.91,
                    child: GestureDetector(
                      onTap: () {
                        // Add your logic here for "Use pesuGPT" tap
                      },
                      child: Container(
                        width: 195.49,
                        height: 131.66,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 195.49,
                                height: 131.66,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(14.04),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 6.83,
                              top: 91.27,
                              child: SizedBox(
                                width: 170.14,
                                height: 23.04,
                                child: Text(
                                  'Use pesuGPT',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 19.23,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 16.87,
                    top: 136.05,
                    child: GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ChatPage()),
                        );
                        // Add your logic here for "Talk to sah.ai" tap
                      },
                      child: Container(
                        width: 296.81,
                        height: 212.45,
                        child: Stack(
                          children: [
                            Positioned(
                              left: 0,
                              top: 0,
                              child: Container(
                                width: 296.81,
                                height: 212.45,
                                decoration: ShapeDecoration(
                                  color: Colors.white,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21.86),
                                  ),
                                ),
                              ),
                            ),
                            const Positioned(
                              left: 6.06,
                              top: 146.62,
                              child: SizedBox(
                                width: 258,
                                height: 48.60,
                                child: Text(
                                  'Talk to sah.ai',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 39.76,
                                    fontFamily: 'Inter',
                                    fontWeight: FontWeight.w700,
                                    height: 0,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
