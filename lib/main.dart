import 'package:booky/features/courses/screens/courses_screen.dart';
import 'package:booky/getit.dart';
import 'package:flutter/material.dart';

const String testUserId = '0';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      home: CoursesScreen(),
    );
  }
}
