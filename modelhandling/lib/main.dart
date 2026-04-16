import 'package:flutter/material.dart';
import 'package:modelhandling/screen/dashboard_screen.dart';
import 'package:modelhandling/screen/homepage.dart';
import 'package:modelhandling/screen/login_screen.dart';
import 'package:modelhandling/screen/product_screen.dart';
import 'package:modelhandling/screen/signup_screen.dart';
import 'package:modelhandling/screen/student_screen.dart';
import 'package:supabase_flutter/supabase_flutter.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Supabase.initialize(
    url: "https://cvdpewijrvclxwnxiymu.supabase.co",
    anonKey:
        "eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImN2ZHBld2lqcnZjbHh3bnhpeW11Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3NzA4NzkxMjIsImV4cCI6MjA4NjQ1NTEyMn0.gaVZt9kyO8n5y2HUwUfJrwMtBhHby0O1UFaEpTYJ02U",
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(colorScheme: .fromSeed(seedColor: Colors.deepPurple)),
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}
