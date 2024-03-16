import 'package:flutter/material.dart';

void main() => runApp(MyApp());


class MyApp extends StatelessWidget{
  var current_color = Colors.red;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(primaryColor: Colors.red, useMaterial3: true),
      home: MyHomePage()
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class ColorData {
  final Color color;
  final IconData icon;

  ColorData({required this.color, required this.icon});
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;
  var current_color = Colors.blue;
  var current_icon = Icons.ac_unit;

  void _incrementCounter(int ind) {
    setState(() {
      if (ind == 1) current_color = Colors.blue;
      if (ind == 2) current_color = Colors.green;
      if (ind == 3) current_color = Colors.red;
      if (ind == 4) current_icon = Icons.ac_unit;
      if (ind == 5) current_icon = Icons.add_a_photo;
      if (ind == 6) current_icon = Icons.account_balance;

      _counter++;
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.cyanAccent,
       
        title: Text("Icon change",),
      ),
      body: Center(
        
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
        Row(
        mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                _incrementCounter(4);
              },
              style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
              child: Icon(Icons.ac_unit),
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter(5);
              },
              style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
              child: Icon(Icons.add_a_photo),
            ),
            ElevatedButton(
              onPressed: () {
                _incrementCounter(6);
              },
              style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
              child: Icon(Icons.account_balance),
            ),]),
            Icon(current_icon, color: current_color, size: 52,),
            const Text(
              'You have changed the icon this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter(1);
                    },
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
                    child: Text('Blue', style: TextStyle(color: Colors.blue),),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter(2);
                    },
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
                    child: Text('Green',  style: TextStyle(color: Colors.green)),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      _incrementCounter(3);
                    },
                    style: ButtonStyle(minimumSize: MaterialStateProperty.all(Size(100,50))),
                    child: Text('Red', style: TextStyle(color: Colors.red)),
                  ),
                ]
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => SecondScreen(colorData: ColorData(color: current_color, icon: current_icon))),
          );
        },
        child: const Text("Take this!"),
      ),
      // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class SecondScreen extends StatelessWidget {

  final ColorData colorData;

  SecondScreen({required this.colorData});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('You choose:'),
      ),
      body: Center(
        child: Icon(colorData.icon, color: colorData.color, size: 87,)
        // ElevatedButton(
        //   onPressed: () {
        //     Navigator.pop(context);
        //   },
        //   child: Text('Go back to First Screen'),
        // ),
      ),
    );
  }
}

// Scaffold(
// appBar: AppBar(
// title: Text('Banki hoy'),
// centerTitle: true,
// ),
// body: Center(
// child: Icon(
// Icons.safety_check_outlined,
// size: 95,
// color: current_color,
// ),
// // child: Text("Hello word", style: TextStyle(fontSize: 15, color: Colors.deepOrangeAccent),)
// ),
// floatingActionButton: FloatingActionButton(
// onPressed: () {
// current_color = Colors.blue;
// },
// child: Text("Blue"),
// backgroundColor: Colors.blue,
// ),
// )

