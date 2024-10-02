import 'package:flutter/material.dart';

void main() {
  runApp(Stateful());
}

//Stateless (UI nya tidak bisa diubah)
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    //kerangka applikasi
    return MaterialApp(
      home: Scaffold(

        appBar: AppBar( //Bagian Biru
          title: Text("Stateless App Bar"),
        ),

        body: Column( //Bagian Putih
          children: [
            Text("Frist Column"),
            SizedBox(height: 20),
            Text("Second Column"),
            ElevatedButton(onPressed: (){
              print("pressed");
            }, child: Text("Button"),)
          ],
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            print("FAB Pressed!");
          },child: Icon(Icons.add),
        ),


      )
    );
  }
}

///////////////////////////////////////////////////////////////////
//Stateful (UI nya bisa berubah)
class Stateful extends StatefulWidget{
  @override
  State<StatefulWidget> createState() => StatefulPage();
}

class StatefulPage extends State<StatefulWidget>{
  @override

  int counter = 0;
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("StateFull App"),
        ),

        body: Center(
          child: Column( //untuk memindahkan kalimat ke tengah samping
            mainAxisAlignment: MainAxisAlignment.center, //untuk memindahkan kalimat ke tengah bawah
            children: [
              Text("Button pressed this many time : "),
              Text('$counter')
            ],
          ),
        ),

        floatingActionButton: FloatingActionButton(
          onPressed: (){
            setState(() {
              counter++;
            });
          },
          child: Icon(Icons.add),
        ),
      )
    );
  }
  
}
