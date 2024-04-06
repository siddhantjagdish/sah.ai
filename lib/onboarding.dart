import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    title: 'Login Screen Example',
    home: LoginScreen(),
  ));
}

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 2884,
      height: 6244.82,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF111111),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(269.17),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 2,
            top: 65.45,
            child: Container(
              width: 882,
              height: 179,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(207),
                ),
              ),
            ),
          ),
          Positioned(
            left: 84,
            top: 4423,
            child: SizedBox(
              width: 1837,
              height: 183,
              child: Text(
                'Welcome to sah.ai! 👋🏻',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 174.96,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 1182,
            top: 232,
            child: SizedBox(
              width: 520,
              height: 212,
              child: Text(
                'Log In',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 174.96,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 71,
            top: 4232.45,
            child: Container(
              width: 878,
              height: 44,
              decoration: ShapeDecoration(
                color: Color(0xFF9D85E0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(61),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1961,
            top: 4232.45,
            child: Container(
              width: 852,
              height: 44,
              decoration: ShapeDecoration(
                color: Color(0xFFACACAC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(61),
                ),
              ),
            ),
          ),
          Positioned(
            left: 1003,
            top: 4232.45,
            child: Container(
              width: 903,
              height: 44,
              decoration: ShapeDecoration(
                color: Color(0xFFACACAC),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(61),
                ),
              ),
            ),
          ),
          Positioned(
            left: 108,
            top: 4789,
            child: SizedBox(
              width: 2586,
              height: 346,
              child: Text(
                'Your ultimate guide to navigating life at PESU and studying with ease!',
                style: TextStyle(
                  color: Color(0xFF545454),
                  fontSize: 121.56,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
            ),
          ),
          Positioned(
            left: 84,
            top: 5304,
            child: Container(
              width: 2718,
              height: 329,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 2718,
                      height: 329,
                      decoration: ShapeDecoration(
                        color: Color(0xFF252525),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(170),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 206.82,
                    top: 108,
                    child: SizedBox(
                      width: 1220.39,
                      height: 113.23,
                      child: Text(
                        'Get Started',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 146.26,
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
            left: 108,
            top: 5725,
            child: Container(
              width: 2718,
              height: 329,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 2718,
                      height: 329,
                      decoration: ShapeDecoration(
                        color: Color(0xFF4D4D4D),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(170),
                        ),
                      ),
                    ),
                  ),
                  const Positioned(
                    left: 900,
                    top: 98,
                    child: SizedBox(
                      width: 918,
                      height: 94.97,
                      child: Text(
                        'Proceed as Guest',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 106.51,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w500,
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
    );
  }
}
