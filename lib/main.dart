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
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(),
    );
  }
}
class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  bool isVisible = true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(child: Scaffold(
      body: Center(child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextButton(onPressed: (){
            setState(() {
              isVisible = !isVisible;
            });
          }, child: Text(isVisible ? 'Hide' : 'Show')
          ),
          Image.network('https://tinyurl.com/yc4pctt5',width: 250,),
          SizedBox(height: 20,),
          Visibility(
            visible: isVisible,
            child: Image.network('https://tinyurl.com/yc4pctt5',width: 250,),)
        ],
      ),),
    ));
  }
}

