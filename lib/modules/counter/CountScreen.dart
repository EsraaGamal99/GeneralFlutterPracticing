import 'package:first_project/modules/counter/cubit/cubit.dart';
import 'package:first_project/modules/counter/cubit/states.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CountScreen extends StatefulWidget {
  @override
  State<CountScreen> createState() => _CountScreenState();
}

class _CountScreenState extends State<CountScreen> {
  //const CountScreen({Key? key}) : super(key: key);
  int counter = 1;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
        create: (BuildContext context) => CounterCubit(),
        child: BlocConsumer<CounterCubit, CounterStates>(
          listener: (context, state) {
            // if(state is CounterPlusState) print('PLUS STATE');
            // if(state is CounterMinusState) print('MINUS STATE');

          },
          builder: (BuildContext context,CounterStates state){
            return Scaffold(
            appBar: AppBar(
            title: Text(
            'Counter',
            ),
            ),
            body: Center(
            child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            TextButton(onPressed: (){
              CounterCubit.get(context).minus();
            },
            child: Text(
            'MINUS'
            ),),
            Padding(
            padding: const EdgeInsets.symmetric(
            horizontal: 20.0),
            child: Text(
            '${CounterCubit.get(context).counter}',
            style: TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            ),
            ),
            ),
            TextButton(onPressed: (){
            CounterCubit.get(context).plus();

            }, child: Text(
            'PLUS'
            ),),
            ],
            ),
            ),
            );
          },

        ),
    );
  }
}
