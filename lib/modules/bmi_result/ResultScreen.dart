import 'package:first_project/modules/users/UsersScreen.dart';
import 'package:first_project/shared/components/components.dart';
import 'package:flutter/material.dart';


class BMIResultScreen extends StatelessWidget {
  //const ResultScreen({Key? key}) : super(key: key);
final int result;
final int weight;
final int height;
final int age;
final bool isMale;

 BMIResultScreen({
  @required this.weight,
  @required this.result,
  @required this.height,
   @required this.isMale,
   @required this.age,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.indigoAccent,
        title: Center(
          child: Text(
            'Result',
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Gender is: ${isMale ? 'Male' : 'Female'}',
            style: TextStyle(
            fontWeight: FontWeight.bold,
              fontSize: 25.0,
            ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Height is: $height',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text('Weight is: $weight',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('The Result is: $result',
                style: TextStyle(
                  fontSize: 25.0,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Text('Age is: $age',
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 15.0,),
            defaultButton(
                width: 260.0,
                radius: 15.0,
                onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>UsersScreen()),);
            }, text: 'Go to Numbers')

          ],
        ),
      ),
    );
  }
}
