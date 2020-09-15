import 'package:flutter/material.dart';
import 'package:speedy_chat/screens/chat_screen.dart';
import 'package:speedy_chat/screens/login_screen.dart';
import 'package:speedy_chat/screens/registration_screen.dart';
import 'package:speedy_chat/screens/welcome_screen.dart';
import 'package:firebase_core/firebase_core.dart';

//void main() => runApp(SpeedyChat());

Future main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(SpeedyChat());
}

class SpeedyChat extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: WelcomeScreen.id,
//      home: WelcomeScreen(),
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        LoginScreen.id: (context) => LoginScreen(),
        RegistrationScreen.id: (context) => RegistrationScreen(),
        ChatScreen.id: (context) => ChatScreen(),
      },
    );
  }
}
