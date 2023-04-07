import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Homework',

      home: const MyHomePage(title: 'Homework Home Page'),
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
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
     _counter++;
    });
  }
  void _decrementCounter() {
    setState(() {
      _counter--;
    });
  }
  void _zeroCounter() {
    setState(() {
      _counter=0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'The result is:',
             style: TextStyle(
              color: Colors.deepPurpleAccent,
              fontSize: 35.0
          ),
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            Padding(
              padding: EdgeInsets.only(top: 50),

              child: Row(
                mainAxisAlignment:  MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(onPressed: _incrementCounter,
                  tooltip: 'Increment',
                      icon: const Icon(Icons.add, color: Colors.purpleAccent,size: 50,)),

                  SizedBox(
                    width: 40.0,
                  ),

                  IconButton(onPressed: _decrementCounter,
                      tooltip: 'Decrement',
                      icon: const Icon(Icons.minimize, color: Colors.deepPurple,size: 50,)),

                  SizedBox(
                    width: 40.0,
                  ),

                  IconButton(onPressed: _zeroCounter,
                      tooltip: 'Reset',
                      icon: const Icon(Icons.exposure_zero,color: Colors.purple, size: 50,),
                  ),

                  SizedBox(
                    width: 40.0,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
       // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
