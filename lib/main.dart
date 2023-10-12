import 'package:flutter/material.dart';
import 'screens/homepage.dart';
import 'screens/contact.dart';

void main(){
  
  runApp(const Myapp());
}

class Myapp extends StatelessWidget {



  const Myapp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(primarySwatch: Colors.red),
      home: const HomePage(),

      routes: {
        '/homepage':(context) => const HomePage(),
        '/contact':(context) => const ContactUs(),
      },

    );
  }
  
  
}