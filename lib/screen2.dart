import 'package:flutter/foundation.dart';
class Screen2 with ChangeNotifier{
int _count =0;
int get count=> _count;
void fun(){
  _count++;
  notifyListeners();
}
}