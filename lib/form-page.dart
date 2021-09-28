import 'package:flutter/material.dart';

class FormPage extends StatefulWidget {
  const FormPage({Key? key}) : super(key: key);

  @override
  State<FormPage> createState() => _FormPageState();
}

class _FormPageState extends State<FormPage> {
  TextEditingController calculator1 = TextEditingController();
  TextEditingController calculator2 = TextEditingController();
  num sum = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      appBar: AppBar(
        title: Text("calculator"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(35),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                '$sum',
                style: TextStyle(fontSize: 40),
              ),
              TextField(
                controller: calculator1,
                decoration: InputDecoration(
                  labelText: 'entar a number',
                  hintText: '01879081268',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              TextField(
                controller: calculator2,
                decoration: InputDecoration(
                  labelText: 'entar anathore number',
                  hintText: 'rihammd999@gmail.com',
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 15),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(calculator1.text);
                  int num2 = int.parse(calculator2.text);
                  setState(() {
                    sum = num1 + num2;
                  });
                },
                child: Text("ADD"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(calculator1.text);
                  int num2 = int.parse(calculator2.text);
                  setState(() {
                    sum = num1 - num2;
                  });
                },
                child: Text("REMOVE"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(calculator1.text);
                  int num2 = int.parse(calculator2.text);
                  setState(() {
                    sum = num1 * num2;
                  });
                },
                child: Text("INTO"),
              ),
              SizedBox(
                height: 15,
              ),
              ElevatedButton(
                onPressed: () {
                  int num1 = int.parse(calculator1.text);
                  int num2 = int.parse(calculator2.text);
                  setState(() {
                    sum = num1 / num2;
                  });
                },
                child: Text('DIVISION'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
