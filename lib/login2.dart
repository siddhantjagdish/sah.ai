import 'package:flutter/material.dart';
import 'student.dart';
import 'staff.dart'; // Import the staff class

class Login2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: MediaQuery.of(context).size.width * 1.01,
        height: MediaQuery.of(context).size.height * 1.01,
        child: Scaffold(
          body: Column(
            children: [
              Container(
                width: 350.34,
                height: 760,
                clipBehavior: Clip.antiAlias,
                decoration: ShapeDecoration(
                  color: Color(0xFF111111),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(0),
                  ),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      left: 0,
                      top: 482.24,
                      child: Container(
                        width: 343,
                        height: 259.33,
                        decoration: ShapeDecoration(
                          color: Colors.white,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(24.64),
                          ),
                        ),
                      ),
                    ),
                    const Positioned(
                      left: 140.44,
                      top: 26,
                      child: SizedBox(
                        width: 61.89,
                        height: 25.23,
                        child: Text(
                          'Log In',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.82,
                            fontFamily: 'Inter',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8.21,
                      top: 502.11,
                      child: Container(
                        width: 104.49,
                        height: 5.24,
                        decoration: ShapeDecoration(
                          color: Color(0xFF9D85E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.26),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 120.68,
                      top: 502.06,
                      child: Container(
                        width: 104.49,
                        height: 5.24,
                        decoration: ShapeDecoration(
                          color: Color(0xFF9D85E0),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.26),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 233.15,
                      top: 502.11,
                      child: Container(
                        width: 101.40,
                        height: 5.24,
                        decoration: ShapeDecoration(
                          color: Color(0xFFACACAC),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(7.26),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top: 607,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Student()),
                          );
                        },
                        child: Container(
                          width: 326.47,
                          height: 91.30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 326.47,
                                  height: 91.30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0.13,
                                        top: 0,
                                        child: Container(
                                          width: 326.34,
                                          height: 40.59,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 326.34,
                                                  height: 40.59,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF252525),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.49),
                                                    ),
                                                    shadows: const [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xB2000000),
                                                        blurRadius: 1.61,
                                                        offset: Offset(0, 1.61),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 109.61,
                                                top: 10.01,
                                                child: SizedBox(
                                                  width: 103.90,
                                                  height: 20.71,
                                                  child: Text(
                                                    'I’m a Student',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.31,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 8,
                      top:
                          660, // Adjusted top position for the "I'm a Staff" button
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(builder: (context) => Staff()),
                          );
                        },
                        child: Container(
                          width: 326.47,
                          height: 91.30,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 326.47,
                                  height: 91.30,
                                  child: Stack(
                                    children: [
                                      Positioned(
                                        left: 0.13,
                                        top: 0,
                                        child: Container(
                                          width: 326.34,
                                          height: 40.59,
                                          child: Stack(
                                            children: [
                                              Positioned(
                                                left: 0,
                                                top: 0,
                                                child: Container(
                                                  width: 326.34,
                                                  height: 40.59,
                                                  decoration: ShapeDecoration(
                                                    color: Color(0xFF252525),
                                                    shape:
                                                        RoundedRectangleBorder(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              18.49),
                                                    ),
                                                    shadows: const [
                                                      BoxShadow(
                                                        color:
                                                            Color(0xB2000000),
                                                        blurRadius: 1.61,
                                                        offset: Offset(0, 1.61),
                                                        spreadRadius: 0,
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              const Positioned(
                                                left: 98.61,
                                                top: 10.01,
                                                child: SizedBox(
                                                  width: 129.90,
                                                  height: 20.71,
                                                  child: Text(
                                                    '     I’m a Staff',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                      fontSize: 16.31,
                                                      fontFamily: 'Inter',
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      height: 0,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      left: 9.64,
                      top: 525.74,
                      child: SizedBox(
                        width: 326.34,
                        height: 21.78,
                        child: Text(
                          'Please select one:',
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 20.82,
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
            ],
          ),
        ),
      ),
    );
  }
}
