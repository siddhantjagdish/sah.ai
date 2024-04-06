import 'dart:async';
import 'package:flutter/material.dart';
import 'package:practice/speech_recognition.dart';
import 'package:practice/widgets/filled_text_field.dart';
import 'package:practice/widgets/message_widget.dart';

class Message {
  final String text;
  final bool isUser;

  Message({
    required this.text,
    required this.isUser,
  });
}

class ChatPage extends StatefulWidget {
  @override
  _ChatPageState createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  final List<Message> messages = [
    Message(text: 'Hello!', isUser: false),
    Message(text: 'Hi there!', isUser: true),
  ];
  final TextEditingController _messageController = TextEditingController();
  bool _isLoading = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                flex: 1,
                child: Container(color: Colors.black),
              ),
              Expanded(
                flex: 8,
                child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.black,
                    borderRadius:
                        BorderRadius.only(topLeft: Radius.circular(24)),
                  ),
                  child: Column(
                    children: [
                      Expanded(
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              SizedBox(height: 20),
                              ListView.builder(
                                shrinkWrap: true,
                                itemCount: messages.length,
                                itemBuilder: (context, index) {
                                  return MessageBubble(
                                    text: messages[index].text,
                                    isUser: messages[index].isUser,
                                  );
                                },
                              ),
                            ],
                          ),
                        ),
                      ),
                      _buildMessageInput(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _buildMessageInput() {
    return Padding(
      padding: const EdgeInsets.all(25.0),
      child: Row(
        children: [
          Expanded(
            child: FilledTextField(
              controller: _messageController,
              maxLines: 2,
              hintText: 'Type your message...',
            ),
          ),
          Row(
            children: [
              IconButton(
                icon: Icon(Icons.send, color: Colors.grey[400]),
                onPressed: _isLoading ? null : _sendMessage,
              ),
              IconButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SpeechRecognitionScreen(),
                    ),
                  );
                },
                icon: Icon(Icons.mic_external_on_outlined),
              )
            ],
          )
        ],
      ),
    );
  }

  void _sendMessage() {
    String messageText = _messageController.text.trim();
    if (messageText.isNotEmpty) {
      setState(() {
        _isLoading = true;
      });
      _addUserMessage(messageText);
      _getBotReply(messageText);
      _messageController.clear();
    }
  }

  void _addUserMessage(String messageText) {
    Message userMessage = Message(text: messageText, isUser: true);
    setState(() {
      messages.add(userMessage);
    });
  }

  void _getBotReply(String messageText) {
    // Simulate a delay to mimic a backend request
    Timer(Duration(seconds: 2), () {
      String botReply = _generateBotReply(messageText);
      _addBotReply(botReply);
      setState(() {
        _isLoading = false;
      });
    });
  }

  void _addBotReply(String botReply) {
    Message botMessage = Message(text: botReply, isUser: false);
    setState(() {
      messages.add(botMessage);
    });
  }

  String _generateBotReply(String message) {
    // This is a dummy function to generate a bot reply based on the user's message
    return 'This is a dummy bot reply to "$message".';
  }
}

// import 'package:flutter/material.dart';
// import 'package:practice/speech_recognition.dart';
// import 'package:speech_to_text/speech_recognition_error.dart';

// class ChatPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.black,
//       body: Column(
//         children: [
//           Container(
//             width: 342.67,
//             height: 742,
//             clipBehavior: Clip.antiAlias,
//             decoration: ShapeDecoration(
//               color: Color(0xFF111111),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(31.98),
//               ),
//             ),
//             child: Stack(
//               children: [
//                 Positioned(
//                   left: 26.02,
//                   top: 664.67,
//                   child: Container(
//                     width: 244.17,
//                     height: 36.24,
//                     decoration: ShapeDecoration(
//                       color: Color(0xFF7A7979),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(22.69),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 624.39,
//                   top: 0,
//                   child: Container(
//                     width: 342.67,
//                     height: 742,
//                     clipBehavior: Clip.antiAlias,
//                     decoration: ShapeDecoration(
//                       color: Color(0xFF1A1A1A),
//                       shape: RoundedRectangleBorder(
//                         borderRadius: BorderRadius.circular(31.98),
//                       ),
//                     ),
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 0.24,
//                           top: 483.05,
//                           child: Container(
//                             width: 342.43,
//                             height: 258.91,
//                             decoration: ShapeDecoration(
//                               color: Colors.white,
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(24.60),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Positioned(
//                           left: 8.44,
//                           top: 523.45,
//                           child: SizedBox(
//                             width: 325.80,
//                             height: 21.74,
//                             child: Text(
//                               'Welcome to pesuacademy! 👋🏻',
//                               style: TextStyle(
//                                 color: Colors.black,
//                                 fontSize: 20.79,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Positioned(
//                           left: 140.44,
//                           top: 26.55,
//                           child: SizedBox(
//                             width: 61.79,
//                             height: 25.19,
//                             child: Text(
//                               'Log In',
//                               textAlign: TextAlign.center,
//                               style: TextStyle(
//                                 color: Colors.white,
//                                 fontSize: 20.79,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w700,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 8.44,
//                           top: 502.90,
//                           child: Container(
//                             width: 104.32,
//                             height: 5.23,
//                             decoration: ShapeDecoration(
//                               color: Color(0xFF092241),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(7.25),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 233.01,
//                           top: 502.90,
//                           child: Container(
//                             width: 101.23,
//                             height: 5.23,
//                             decoration: ShapeDecoration(
//                               color: Color(0xFFACACAC),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(7.25),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 119.17,
//                           top: 502.90,
//                           child: Container(
//                             width: 107.29,
//                             height: 5.23,
//                             decoration: ShapeDecoration(
//                               color: Color(0xFFACACAC),
//                               shape: RoundedRectangleBorder(
//                                 borderRadius: BorderRadius.circular(7.25),
//                               ),
//                             ),
//                           ),
//                         ),
//                         const Positioned(
//                           left: 8.44,
//                           top: 554.22,
//                           child: SizedBox(
//                             width: 307.26,
//                             height: 41.11,
//                             child: Text(
//                               'Your ultimate guide to navigating life at PESU and living with ease!',
//                               style: TextStyle(
//                                 color: Color(0xFF545454),
//                                 fontSize: 14.44,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w600,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 8.43,
//                           top: 628.12,
//                           child: Container(
//                             width: 325.80,
//                             height: 40.52,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Container(
//                                     width: 325.80,
//                                     height: 40.52,
//                                     child: Stack(
//                                       children: [
//                                         Positioned(
//                                           left: 0,
//                                           top: 0,
//                                           child: Container(
//                                             width: 325.80,
//                                             height: 40.52,
//                                             decoration: ShapeDecoration(
//                                               color: Color(0xFF252525),
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(
//                                                         18.46),
//                                               ),
//                                               shadows: const [
//                                                 BoxShadow(
//                                                   color: Color(0xB2000000),
//                                                   blurRadius: 1.60,
//                                                   offset: Offset(0, 1.60),
//                                                   spreadRadius: 0,
//                                                 )
//                                               ],
//                                             ),
//                                           ),
//                                         ),
//                                         Positioned(
//                                           left: 250.01,
//                                           top: 6.82,
//                                           child: Container(
//                                             width: 54.88,
//                                             height: 26.29,
//                                             clipBehavior: Clip.antiAlias,
//                                             decoration: ShapeDecoration(
//                                               shape: RoundedRectangleBorder(
//                                                 borderRadius:
//                                                     BorderRadius.circular(3.03),
//                                               ),
//                                             ),
//                                             child: Stack(children: []),
//                                           ),
//                                         ),
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const Positioned(
//                                   left: 16.17,
//                                   top: 10.70,
//                                   child: SizedBox(
//                                     width: 167.77,
//                                     child: Text(
//                                       'Student/Staff Login',
//                                       style: TextStyle(
//                                         color: Color(0xFF93C4FC),
//                                         fontSize: 15.29,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w700,
//                                         height: 0,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 8.43,
//                           top: 677.68,
//                           child: Container(
//                             width: 325.80,
//                             height: 40.52,
//                             child: Stack(
//                               children: [
//                                 Positioned(
//                                   left: 0,
//                                   top: 0,
//                                   child: Container(
//                                     width: 325.80,
//                                     height: 40.52,
//                                     decoration: ShapeDecoration(
//                                       color: Color(0xFFACACAC),
//                                       shape: RoundedRectangleBorder(
//                                         borderRadius:
//                                             BorderRadius.circular(18.46),
//                                       ),
//                                       shadows: const [
//                                         BoxShadow(
//                                           color: Color(0xB2000000),
//                                           blurRadius: 1.60,
//                                           offset: Offset(0, 1.60),
//                                           spreadRadius: 0,
//                                         )
//                                       ],
//                                     ),
//                                   ),
//                                 ),
//                                 const Positioned(
//                                   left: 96.96,
//                                   top: 11.05,
//                                   child: SizedBox(
//                                     width: 131.77,
//                                     child: Text(
//                                       'Proceed as Guest',
//                                       style: TextStyle(
//                                         color: Colors.white,
//                                         fontSize: 15.29,
//                                         fontFamily: 'Inter',
//                                         fontWeight: FontWeight.w700,
//                                         height: 0,
//                                       ),
//                                     ),
//                                   ),
//                                 ),
//                               ],
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 const Positioned(
//                   left: 36.95,
//                   top: 673.58,
//                   child: SizedBox(
//                     width: 201.16,
//                     height: 18.54,
//                     child: Opacity(
//                       opacity: 0.70,
//                       child: Text(
//                         'Type your query...',
//                         style: TextStyle(
//                           color: Colors.white,
//                           fontSize: 14.26,
//                           fontFamily: 'Inter',
//                           fontWeight: FontWeight.w500,
//                           height: 0,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 21.62,
//                   top: 77.71,
//                   child: SizedBox(
//                     width: 191.42,
//                     height: 137.17,
//                     child: Text(
//                       'Hi, I’m sah.ai!',
//                       style: TextStyle(
//                         color: Colors.white,
//                         fontSize: 56.75,
//                         fontFamily: 'Inter',
//                         fontWeight: FontWeight.w700,
//                         height: 0,
//                       ),
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 17.70,
//                   top: 250.59,
//                   child: Container(
//                     width: 268.89,
//                     height: 148.64,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 0,
//                           top: 0,
//                           child: Container(
//                             width: 22.93,
//                             height: 22.93,
//                             child: Image.asset('assets/images/pencil_icon.png',
//                                 width: 23, height: 23),
//                           ),
//                         ),
//                         Positioned(
//                           left: 37.31,
//                           top: 0,
//                           child: SizedBox(
//                             width: 231.58,
//                             height: 148.64,
//                             child: Text(
//                               'Your conversation may be sent to human reviewers for internal improvement purposes.',
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.3),
//                                 fontSize: 14.26,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w500,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 17.70,
//                   top: 318.31,
//                   child: Container(
//                     width: 281.24,
//                     height: 149.83,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 0,
//                           top: 0,
//                           child: Container(
//                             width: 22.93,
//                             height: 22.93,
//                             child: Image.asset('assets/images/pencil_icon.png',
//                                 width: 23, height: 23),
//                           ),
//                         ),
//                         Positioned(
//                           left: 38.38,
//                           top: 1.19,
//                           child: SizedBox(
//                             width: 242.86,
//                             height: 148.64,
//                             child: Text(
//                               'Sensitive information can only be accessed by authorized users',
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.3),
//                                 fontSize: 14.26,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w500,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 17.70,
//                   top: 370.95,
//                   child: Container(
//                     width: 284.93,
//                     height: 150.07,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 0,
//                           top: 0,
//                           child: Container(
//                             width: 22.93,
//                             height: 22.93,
//                             child: Image.asset('assets/images/pencil_icon.png',
//                                 width: 23, height: 23),
//                           ),
//                         ),
//                         Positioned(
//                           left: 42.06,
//                           top: 1.43,
//                           child: SizedBox(
//                             width: 242.86,
//                             height: 148.64,
//                             child: Text(
//                               'In case of incorrect/outdated information contact department office.',
//                               style: TextStyle(
//                                 color: Colors.white.withOpacity(0.3),
//                                 fontSize: 14.26,
//                                 fontFamily: 'Inter',
//                                 fontWeight: FontWeight.w500,
//                                 height: 0,
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//                 Positioned(
//                   left: 285.28,
//                   top: 664.20,
//                   child: Container(
//                     width: 37.32,
//                     height: 37.32,
//                     child: Stack(
//                       children: [
//                         Positioned(
//                           left: 12.84,
//                           top: 9.85,
//                           child: Opacity(
//                             opacity: 0.80,
//                             child: GestureDetector(
//                               child: Container(
//                                 width: 11.77,
//                                 height: 17.72,
//                                 decoration: BoxDecoration(
//                                   image: DecorationImage(
//                                     image: AssetImage(
//                                       'assets/images/microphone_icon.png',
//                                     ),
//                                     fit: BoxFit.cover,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                         Positioned(
//                           left: 0,
//                           top: 0,
//                           child: Opacity(
//                             opacity: 0.80,
//                             child: GestureDetector(
//                               onTap: () {
//                                 Navigator.push(
//                                   context,
//                                   MaterialPageRoute(
//                                       builder: (context) =>
//                                           SpeechRecognitionScreen()),
//                                 );
//                               },
//                               child: Container(
//                                 width: 37.32,
//                                 height: 37.32,
//                                 decoration: const ShapeDecoration(
//                                   shape: OvalBorder(
//                                     side: BorderSide(
//                                         width: 1.43, color: Color(0xFF7A7979)),
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
