import 'package:flutter/material.dart';

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
                color: Colors.blue,
                height: 64,
                width: 64,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 16,
                    ),
                    color: Colors.grey,
                    height: 16,
                    width: 200,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                      left: 16,
                      top: 8,
                    ),
                    color: Colors.grey,
                    height: 12,
                    width: 170,
                  ),
                ],
              ),
            ],
          ),
          const SizedBox(height: 16),
          const Divider(height: 2.15),
          for (var i = 0; i < 4; i++) ...[
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      height: 48,
                      width: 48,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      height: 12,
                      width: 120,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: 12,
                  width: 12,
                  color: Colors.black,
                ),
              ],
            ),
          ],
          const SizedBox(height: 16),
          const Divider(height: 1.15),
          for (var i = 0; i < 3; i++) ...[
            const SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const SizedBox(width: 16),
                    Container(
                      height: 48,
                      width: 48,
                      color: Colors.blue,
                    ),
                    const SizedBox(width: 16),
                    Container(
                      height: 12,
                      width: 120,
                      color: Colors.grey,
                    ),
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(right: 16),
                  height: 12,
                  width: 12,
                  color: Colors.black,
                ),
              ],
            ),
          ],
        ],
      ),
    );
  }
}
