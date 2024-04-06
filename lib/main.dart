import 'package:flutter/material.dart';
import './login2.dart';

void main() {
  runApp(const FigmaToCodeApp());
}

class FigmaToCodeApp extends StatelessWidget {
  const FigmaToCodeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark().copyWith(
        scaffoldBackgroundColor: const Color.fromARGB(255, 18, 32, 47),
      ),
      home: Scaffold(
        body: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ListView(
            children: [
              Iphone1415ProMax13(),
            ],
          ),
        ),
      ),
    );
  }
}

class Iphone1415ProMax13 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                left: -0.23,
                top: 0,
                child: Container(
                  width: 342.67,
                  height: 742,
                  clipBehavior: Clip.antiAlias,
                  decoration: ShapeDecoration(
                    color: Color(0xFF111111),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(31.98),
                    ),
                  ),
                  child: Stack(
                    children: [
                      Positioned(
                        left: 0.24,
                        top: 483.05,
                        child: Container(
                          width: 342.43,
                          height: 258.90,
                          decoration: ShapeDecoration(
                            color: Colors.white,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(24.60),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 9.99,
                        top: 525.53,
                        child: SizedBox(
                          width: 218.27,
                          height: 21.74,
                          child: Text(
                            'Welcome to sah.ai! 👋🏻',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 20.79,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 140.45,
                        top: 27.57,
                        child: SizedBox(
                          width: 61.79,
                          height: 25.19,
                          child: Text(
                            'Log In',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.79,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w700,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 8.44,
                        top: 502.89,
                        child: Container(
                          width: 104.32,
                          height: 5.23,
                          decoration: ShapeDecoration(
                            color: Color(0xFF9D85E0),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 233.01,
                        top: 502.89,
                        child: Container(
                          width: 101.23,
                          height: 5.23,
                          decoration: ShapeDecoration(
                            color: Color(0xFFACACAC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.25),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 119.18,
                        top: 502.89,
                        child: Container(
                          width: 107.29,
                          height: 5.23,
                          decoration: ShapeDecoration(
                            color: Color(0xFFACACAC),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(7.25),
                            ),
                          ),
                        ),
                      ),
                      const Positioned(
                        left: 12.84,
                        top: 569.02,
                        child: SizedBox(
                          width: 307.26,
                          height: 41.11,
                          child: Text(
                            'Your ultimate guide to navigating life at PESU and studying with ease!',
                            style: TextStyle(
                              color: Color(0xFF545454),
                              fontSize: 14.44,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w600,
                              height: 0,
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 9.99,
                        top: 630.21,
                        child: GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => Login2()),
                            );
                          },
                          child: Container(
                            width: 322.95,
                            height: 39.09,
                            child: Stack(
                              children: [
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 322.95,
                                    height: 39.09,
                                    decoration: ShapeDecoration(
                                      color: Colors.transparent,
                                      shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadius.circular(20.20),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 0,
                                  top: 0,
                                  child: Container(
                                    width: 320,
                                    height: 39.09,
                                    decoration: BoxDecoration(
                                      image: const DecorationImage(
                                        image: AssetImage(
                                            'assets/images/getstarted1.png'),
                                        fit: BoxFit.cover,
                                      ),
                                      borderRadius:
                                          BorderRadius.circular(20.20),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        left: 12.83,
                        top: 680.23,
                        child: Container(
                          width: 322.95,
                          height: 39.09,
                          child: Stack(
                            children: [
                              Positioned(
                                left: 0,
                                top: 0,
                                child: Container(
                                  width: 322.95,
                                  height: 39.09,
                                  decoration: ShapeDecoration(
                                    color: Color(0xFF4D4D4D),
                                    shape: RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(20.20),
                                    ),
                                  ),
                                ),
                              ),
                              const Positioned(
                                left: 106.94,
                                top: 11.65,
                                child: SizedBox(
                                  width: 109.08,
                                  height: 11.28,
                                  child: Text(
                                    'Proceed as Guest',
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12.66,
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
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
