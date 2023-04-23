import 'package:bloc/bloc.dart';
import 'package:first_project/modules/home/HomeScreen.dart';
import 'package:first_project/modules/login/Login.dart';
import 'package:first_project/modules/messenger_by_list_view/MessenderByListView.dart';
import 'package:first_project/shared/bloc_observer.dart';
import 'package:flutter/material.dart';
import 'modules/bmi/BMIScreen.dart';
import 'modules/counter/CountScreen.dart';
import 'modules/messenger/MessengerScreen.dart';
import 'modules/bmi_result/ResultScreen.dart';
import 'modules/users/UsersScreen.dart';

void main() {
  Bloc.observer =  MyBlocObserver();
  runApp( MyApp());
}
// scrcpy -b2M -m800
class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CountScreen(),
    );
  }

}