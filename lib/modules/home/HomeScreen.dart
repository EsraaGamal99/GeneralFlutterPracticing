import 'dart:ui';

import 'package:first_project/modules/login/Login.dart';
import 'package:first_project/shared/components/components.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(
          Icons.arrow_back,
        ),
        title: Text(
          'LOLLY App',
        ),
        centerTitle: true,
        actions: [
          IconButton(
            onPressed: () {
              print('ESRAA pressed');
            },
            icon: Icon(
              Icons.home,
            ),
          ),
          IconButton(
            onPressed: () {
              print('LOLLY pressed');
            },
            icon: Icon(
              Icons.search,
            ),
          ),
        ],
        elevation: 0.0,
        backgroundColor: Colors.grey,
      ),
      body: Row(
        children: [

          Container(
            width: 300.0,
            child: Padding(
              padding: const EdgeInsets.all(50.0),

              child: Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                ),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Stack(
                  alignment: AlignmentDirectional.bottomCenter,
                  children: [
                    Image(
                      image: NetworkImage(
                        'https://images.pexels.com/photos/931162/pexels-photo-931162.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                      ),
                      height: 300.0,
                      width: 300.0,
                      fit: BoxFit.cover,
                    ),
                    Container(
                      width: double.infinity,
                      color: Colors.black.withOpacity(0.7),
                      padding: const EdgeInsets.symmetric(
                        vertical: 20.0,
                      ),
                      child: Text(
                        'Flowers',
                        style: TextStyle(
                          fontSize: 30.0,
                          color: Colors.greenAccent,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          SizedBox(width: 10.0,),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(right: 20.0),
              child: defaultButton(
               radius: 15.0,
                width: 350.0,
                backgroundColor: Colors.grey,
                onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context)=>Login()),);
              }, text: 'Login Page',isUpperCase: false,),
            ),
          ),
        ],
      ),
    );
  }
}
