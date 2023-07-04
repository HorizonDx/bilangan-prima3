import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:prime_numbers/prime_numbers.dart';

class AppStatefull extends StatefulWidget {
  const AppStatefull({super.key});

  @override
  State<AppStatefull> createState() => _AppStatefullState();
}

class _AppStatefullState extends State<AppStatefull> {
int angka = 1;

  void tekanAku(){
    setState(() {
      if (angka<45){
        angka +=1;
      } 
    });
  }
  void prima(){
    if(angka.isPrime){
      print('true');
    }else{
      print('false');
    }
  }
  
  @override
  Widget build(BuildContext context) {
     return MaterialApp(
      title: 'Contoh AppStateless',
      home: Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () => tekanAku(),
          child: Icon(Icons.add),
        ),
        appBar: AppBar(
          centerTitle: true,
          title: Text('Indra Kurniawan Absen: 04'),
        ),
        body: Center(
          child: Text('$angka \n\nbilangan prima '+angka.isPrime.toString(),style: TextStyle(fontSize: 30),),
      ),
      ),
    );
  }
}