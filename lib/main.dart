import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp( MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  Random random = Random();

  int x= 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lottery App'),
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Text('Lottery Winiing number is 5')),
            SizedBox(
              height: 20,
            ),
            Container(
               height: 250,
              width: 300,
              decoration: BoxDecoration(
                color: x == 5 ? Colors.teal:Colors.grey.withOpacity(.3),
                    borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: x == 5? Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.done_all, color: Colors.green, size: 20,),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Congratulation you have won the lottery, \n your number is $x',textAlign: TextAlign.center,)
                  ],
                ) :
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.error, color: Colors.red, size: 20,),
                    SizedBox(
                      height: 20,
                    ),
                    Text('Better luck next time your numberis$x\ntry again',textAlign: TextAlign.center,)
                  ],
                ),
              ),
            )
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            x= random.nextInt(10);
            print (x);
            setState(() {
            });
          },
          child: Icon(Icons.refresh),
        ),
      ),
    );
  }
}



