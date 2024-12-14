import 'package:api_works/apis.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'API_Works',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController numbercontroller = TextEditingController();

  String resultText = 'Type number and get result.!';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyan,
      ),
      backgroundColor: Color.fromARGB(255, 75, 72, 72),
      body: SafeArea(
        child: Center(
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(20),
                child: TextFormField(
                  controller: numbercontroller,
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                      hintText: 'Enter the number',
                      hintStyle: TextStyle(color: Colors.white),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(10))),
                  style: TextStyle(color: Colors.white),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  final _number = numbercontroller.text;

                  final result = await getnumber(number: _number);
                  print(result.text);
                  setState(() {
                    resultText = result.text ?? "No text found";
                  });
                },
                style: ElevatedButton.styleFrom(
                    minimumSize: Size(150, 50),
                    elevation: 5,
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white),
                child: Text('Get result'),
              ),
              SizedBox(
                height: 30,
              ),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Text(
                  resultText,
                  style: TextStyle(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
