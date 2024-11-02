import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'City Tour',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'City Tour'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text("City Tour"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(16),
          child: SingleChildScrollView(
            children: [
              Column(
              ),
              SizedBox(height: 16.0,)
              Row(
                children: [
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                  ),

                ],
              ),
            ],
          )
      ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Image(
            height: 300,
            width: 150,
        ),
      ),
      Image.asset(Asset/162-200-300.jpg),
      Text( 'Explore, Enjoy, Experience'
          textDirection: “Explore the charm of our city's hidden gems and embark on a journey to
          discover the rich cultural heritage, breathtaking landscapes, and unique experiences that
          await you. From historic landmarks to vibrant markets and serene natural wonders, our city offers a tapestry of experiences that will captivate your senses. Join us in exploring the beauty
          of our city and create memories that will last a lifetime. Come and visit our city's treasures
          today.”
      ),
  }
}
