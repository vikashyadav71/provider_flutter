import 'package:callbacks/screen2.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';



class Screen1 extends StatelessWidget {
  @override

  Widget build(BuildContext context) {//iske niche ka ek baar hi update hoga vo bi hot restart pe aur b
    //variable ki value pass krni padengi] w
    //in case of listen false means we not listening if true so all class or widget will rebuild so this is not good  but at same time we can update the property an
//function and variale if liesten is off so it is impotant to update the variables to build only a a class widget we require the consumer no need of refernce pr listem 

    final countProvider=Provider.of<Screen2>(context,listen: false);
    print('build or bot');

    return Scaffold(
        body: Center(child: Consumer<Screen2>(builder: (context,value,child){
          return Text(countProvider.count.toString(),style: TextStyle(
            fontWeight: FontWeight.w700,
            fontSize: 49,
          ),);
        },)),

    floatingActionButton: FloatingActionButton(
      onPressed: () {

countProvider.fun();


      },
      child: const Icon(Icons.add),),);

  }
}

