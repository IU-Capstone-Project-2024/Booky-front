import 'package:booky/common/app_colors.dart/theme.dart';
import 'package:booky/features/courses/screens/courses_screen.dart';
import 'package:flutter/material.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // await BookyServer().run();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: const MaterialTheme(TextTheme()).light(),
      home: CoursesScreen(),
    );
  }
}
