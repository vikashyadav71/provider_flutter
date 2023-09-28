import 'package:callbacks/screen2.dart';
import'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'screen1.dart';

void main(){
  runApp( const MaterialApp(home:MyAPP()));
}
class MyAPP extends StatefulWidget {
  const MyAPP({Key? key}) : super(key: key);

  @override
  State<MyAPP> createState() => _MyAPPState();
}

class _MyAPPState extends State<MyAPP> {

  @override
  Widget build(BuildContext context) {//yaha se rebuild hote hai pure widgets bina
    // hot restart jab setstate+reload
    return ChangeNotifierProvider(//globally listen th value...
      create: (_)=>Screen2(),
      child: Scaffold( appBar:AppBar(title: const Text('Callbacks',
        style: TextStyle(fontWeight: FontWeight.w700,
      color: Colors.white),
      ),centerTitle: true,),
          body:Screen1(),
      ),
    );
  }
}
