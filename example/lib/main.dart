import 'package:flutter/material.dart';
import 'package:flutter_responsive_breakpoints/flutter_responsive_breakpoints.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Responsive(
      builder: (context) => MaterialApp(
            title: 'Package demo',
            theme: ThemeData(
              primarySwatch: Colors.blue,
            ),
            home: MyHomePage(),
          ));
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key}) : super(key: key);

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Package demo'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 50,
                height: 50,
                color: responsive<Color>(
                    def: Colors.red,
                    sm: Colors.orange,
                    md: Colors.yellow,
                    lg: Colors.green,
                    xl: Colors.blue,
                    xxl: Colors.indigo)),
            Container(
                width: r<double>(def: 10, sm: 15, lg: 50, xl: 100),
                height: 50,
                color: responsive<Color>(
                  def: Colors.red,
                  sm: Colors.orange,
                  xl: Colors.blue,
                )),
            Container(
              color: Colors.grey,
              width: 90.vw,
              height: 50,
            )
          ],
        ),
      ),
    );
  }
}
