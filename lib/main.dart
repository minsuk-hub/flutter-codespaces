import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      scrollBehavior: MyCustomScrollBehavior(),
      // Application name
      title: 'Flutter Hello World',
      // Application theme data, you can set the colors for the application as
      // you want
      theme: ThemeData(
        // useMaterial3: false,
        primarySwatch: Colors.blue,
      ),
      // A widget which will be started on application startup
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Test Tffitle"),
        ),

        body: GridView(
          
            scrollDirection: Axis.horizontal,
            
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 6,
            
            crossAxisSpacing: 15.0,
            mainAxisSpacing: 12.0,
            ),
            children: [
             postContainer(number: "1200", colorData: Colors.green),
             postContainer(number: "2", colorData: Colors.black),
             postContainer(number: "3", colorData: Colors.blue),
             postContainer(number: "4", colorData: Colors.pink),
             postContainer(number: "1", colorData: Colors.brown),
             postContainer(number: "2", colorData: Colors.purple),
             postContainer(number: "3", colorData: Colors.cyan),
             postContainer(number: "1", colorData: Colors.green),
             postContainer(number: "2", colorData: Colors.black),
             postContainer(number: "3", colorData: Colors.blue),
             postContainer(number: "4", colorData: Colors.pink),
             postContainer(number: "1", colorData: Colors.brown),
             postContainer(number: "2", colorData: Colors.purple),
             postContainer(number: "3", colorData: Colors.cyan),
            ],
        ),
        );
  }

  Widget postContainer({String number = "0", Color colorData = Colors.amber}) {
    return Container(
                height: 200,
                color: colorData,
                child: Center(child: Text("Box $number")),
              );
  }
}

class MyCustomScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
    PointerDeviceKind.touch,
    PointerDeviceKind.mouse,
    PointerDeviceKind.stylus,
    PointerDeviceKind.unknown,
  };
}