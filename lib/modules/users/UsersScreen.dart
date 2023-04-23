import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UsersScreen extends StatelessWidget {
  UsersScreen({Key key}) : super(key: key);

  List<UserModel> users = [
    UserModel(
      id: 1,
      name: 'Esraa Gamal',
      phone: '+20 23222543453',
    ),
    UserModel(
      id: 2,
      name: 'Hasnaa Gamal',
      phone: '+20 5454646464464',
    ),
    UserModel(
      id: 3,
      name: 'Mohamed Gamal',
      phone: '+20 1212545245',
    ),
    UserModel(
      id: 4,
      name: 'Mostafa Gamal',
      phone: '+20 021212113',
    ),
    UserModel(
      id: 5,
      name: 'Doha Gamal',
      phone: '+20 2121211321',
    ),
    UserModel(
      id: 1,
      name: 'Esraa Gamal',
      phone: '+20 23222543453',
    ),
    UserModel(
      id: 2,
      name: 'Hasnaa Gamal',
      phone: '+20 5454646464464',
    ),
    UserModel(
      id: 3,
      name: 'Mohamed Gamal',
      phone: '+20 1212545245',
    ),
    UserModel(
      id: 4,
      name: 'Mostafa Gamal',
      phone: '+20 021212113',
    ),
    UserModel(
      id: 5,
      name: 'Doha Gamal',
      phone: '+20 2121211321',
    ),
    UserModel(
      id: 1,
      name: 'Esraa Gamal',
      phone: '+20 23222543453',
    ),
    UserModel(
      id: 2,
      name: 'Hasnaa Gamal',
      phone: '+20 5454646464464',
    ),
    UserModel(
      id: 3,
      name: 'Mohamed Gamal',
      phone: '+20 1212545245',
    ),
    UserModel(
      id: 4,
      name: 'Mostafa Gamal',
      phone: '+20 021212113',
    ),
    UserModel(
      id: 5,
      name: 'Doha Gamal',
      phone: '+20 2121211321',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Users'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),

        //Items
        child: ListView.separated(
          itemBuilder: (contxt, index) => buildOneItem(users[index]),
          separatorBuilder: (contxt, index) => Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 1.0,
              width: double.infinity,
              color: Colors.grey[300],
            ),
          ),
          itemCount: users.length,
        ),
      ),
    );
  }

  Widget buildOneItem(UserModel users) {
    return
        //OneItem
        Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
         CircleAvatar(
          radius: 30.0,
          child: Text('${users.id}'),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children:  [
            Text(
              '${users.name}',
              style: TextStyle(
                fontSize: 20.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text('${users.phone}'),
          ],
        ),
      ],
    );
  }
}

class UserModel {
  final int id;
  final String name;
  final String phone;

  UserModel({
    @required this.id,
    @required this.name,
    @required this.phone,
  });
}
