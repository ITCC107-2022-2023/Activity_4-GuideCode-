import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/basic.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Simple Stock UI',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Simple Stock UI'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // 1 `Scaffold` is 1 screen in the app.
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(12),
                  child: Container(
                    height: 64,
                    width: 64,
                    child: Image.network(
                      "https://upload.wikimedia.org/wikipedia/en/f/f2/Robert_Downey_Jr._as_Tony_Stark_in_Avengers_Infinity_War.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                    ),
                    child: Container(
                      child: Text(
                        "Anthony Edward Stark",
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 3,
                    ),
                    child: Text(
                      'Genius, Billionaire',
                      style: TextStyle(
                        fontSize: 13,
                      ),
                    ),
                    height: 15,
                    width: 170,
                  ),
                ],
              ),
            ],
          ),
//...........2nd divider
          const SizedBox(height: 16),
          const Divider(
            height: 1.15,
            thickness: 5,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.info,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Personal Data',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                height: 50,
                width: 48,
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.phone,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Contacts',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                height: 50,
                width: 48,
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.badge,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Experience',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                height: 50,
                width: 48,
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                ),
              ),
            ],
          ),

          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.settings,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Settings',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.only(right: 16),
                height: 50,
                width: 48,
                child: Icon(
                  Icons.keyboard_arrow_right_sharp,
                ),
              ),
            ],
          ),

//.............last divider
          const SizedBox(height: 16),
          const Divider(
            height: 10,
            thickness: 5,
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.info,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'FAQs',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: Icon(
                      Icons.forum,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Questions',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  const SizedBox(width: 16),
                  Container(
                    height: 50,
                    width: 48,
                    child: const Icon(
                      Icons.groups,
                      size: 50,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Container(
                    height: 25,
                    width: 200,
                    child: Text(
                      'Community',
                      style: TextStyle(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
