import 'package:flutter/material.dart';
import 'homescreen.dart';

class Student extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            width: 350.34,
            height: 760,
            clipBehavior: Clip.antiAlias,
            decoration: ShapeDecoration(
              color: Color(0xFF111111),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(39.81),
              ),
            ),
            child: Stack(
              children: [
                Positioned(
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
                  left: 0,
                  top: 483,
                  child: Container(
                    width: 338,
                    height: 409.89,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            width: 338,
                            height: 409.89,
                            decoration: ShapeDecoration(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(24.28),
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.09,
                          top: 19.59,
                          child: Container(
                            width: 321.58,
                            height: 5.16,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 102.97,
                                    height: 5.16,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF9D85E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.15),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 110.83,
                                  top: 0,
                                  child: Container(
                                    width: 102.97,
                                    height: 5.16,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF9D85E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.15),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 221.66,
                                  top: 0,
                                  child: Container(
                                    width: 99.92,
                                    height: 5.16,
                                    decoration: ShapeDecoration(
                                      color: Color(0xFF9D85E0),
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(7.15),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Positioned(
                          left: 8.09,
                          top: 78.22,
                          child: Container(
                            width: 321.70,
                            height: 89.98,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0.12,
                                  top: 0,
                                  child: Container(
                                    width: 321.58,
                                    height: 40,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 321.58,
                                            height: 40,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF252525),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        18.22),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: Color(0xB2000000),
                                                  blurRadius: 1.58,
                                                  offset: Offset(0, 1.58),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 11.97,
                                          top: 9.86,
                                          child: SizedBox(
                                            width: 124.43,
                                            height: 20.43,
                                            child: Text(
                                              'Enter your email',
                                              style: TextStyle(
                                                color: Color(0xFFBBBBBB),
                                                fontSize: 16.08,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
                                                height: 0,
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 49.98,
                                  child: Container(
                                    width: 321.58,
                                    height: 40,
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          left: 0,
                                          top: 0,
                                          child: Container(
                                            width: 321.58,
                                            height: 40,
                                            decoration: ShapeDecoration(
                                              color: Color(0xFF252525),
                                              shape: RoundedRectangleBorder(
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        18.22),
                                              ),
                                              shadows: [
                                                BoxShadow(
                                                  color: Color(0xB2000000),
                                                  blurRadius: 1.58,
                                                  offset: Offset(0, 1.58),
                                                  spreadRadius: 0,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          left: 11.97,
                                          top: 9.84,
                                          child: SizedBox(
                                            width: 124.43,
                                            height: 20.43,
                                            child: Text(
                                              'Password',
                                              style: TextStyle(
                                                color: Color(0xFFBBBBBB),
                                                fontSize: 16.08,
                                                fontFamily: 'Inter',
                                                fontWeight: FontWeight.w400,
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
                        Positioned(
                          left: 8.09,
                          top: 39.40,
                          child: SizedBox(
                            width: 220.26,
                            height: 22.17,
                            child: Text(
                              'Student Login',
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 20.41,
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
                Positioned(
                  left: 13.96,
                  top: 678.27,
                  child: Container(
                    width: 161.85,
                    height: 37.24,
                    child: Stack(
                      children: [
                        Positioned(
                          left: 0,
                          top: 0,
                          child: SizedBox(
                            width: 161.85,
                            height: 17.24,
                            child: Text(
                              'Don’t have an account?',
                              style: TextStyle(
                                color: Color(0xFF818181),
                                fontSize: 14.26,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w600,
                                height: 0,
                              ),
                            ),
                          ),
                        ),
                        Positioned(
                          left: 0.01,
                          top: 19.24,
                          child: SizedBox(
                            width: 130.06,
                            child: Text.rich(
                              TextSpan(
                                children: [
                                  TextSpan(
                                    text: 'Proceed as ',
                                    style: TextStyle(
                                      color: Color(0xFF4E4E4E),
                                      fontSize: 15.09,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w500,
                                      height: 0,
                                    ),
                                  ),
                                  TextSpan(
                                    text: 'Guest',
                                    style: TextStyle(
                                      color: Color(0xFF4E4E4E),
                                      fontSize: 15.09,
                                      fontFamily: 'Inter',
                                      fontWeight: FontWeight.w700,
                                      height: 0,
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
                ),
                Positioned(
                  left: 221.89,
                  top: 676.16,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => HomeScreen()),
                      );
                    },
                    child: Image.asset(
                      'assets/images/gobutton.png',
                      width: 104.14,
                      height: 38.59,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
