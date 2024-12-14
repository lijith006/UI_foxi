import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:students_app_provider/functions/functions.dart';
import 'package:students_app_provider/providers/add_controllers.dart';
import 'package:students_app_provider/providers/controller.dart';
import 'package:students_app_provider/screens/home_screen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializeDatabase();

  runApp(ChangeNotifierProvider(
    create: (_) => DataController(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => DataController(),
        ),
        ChangeNotifierProvider(create: (context) => AddControllers())
      ],
      child: MaterialApp(
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
        home: const HomeScreen(),
      ),
    );
  }
}
