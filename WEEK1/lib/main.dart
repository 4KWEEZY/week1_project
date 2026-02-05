import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
@override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'INFT-425 [OWUSU COLLINS]' ,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const HelloWorldScreen(),
    );
  }
}
class HelloWorldScreen extends StatelessWidget {
  const HelloWorldScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Hello World App'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Hello, World!',
              style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),  
            SizedBox(height: 20),
            Icon(
              Icons.code,
              size: 50,
              color: Colors.green,
            ),
            SizedBox(height: 20),
            Text('Department of computing science and engineering',
              style: TextStyle(
                fontSize: 16,
                fontStyle: FontStyle.italic,
                
              ),
              textAlign: TextAlign.center,
              ),
          ],
        ),
      ),
    );
  }
}

//OWUSU COLLINS 
//OWUSU COLLINS 

            
          
        