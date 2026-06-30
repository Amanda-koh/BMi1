import 'package:flutter/material.dart';

class Info extends StatelessWidget {
  final String bmi;

  const Info({super.key, required this.bmi});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Body Mass Index Info')),
      body: Padding(
        padding: EdgeInsets.all(0.0),
        child: Center(
          child: Column(
            children: [
              Text(
                'Body mass index (BMI) is a value derived from the mass'
                '(weight) and the height of a person.\n\n The BMI is defined '
                'as the body mass devided by the square of the body height, and is expressed in units of kf/m\u0082',
              ),

              Table(
                border: TableBorder.all(color: Colors.orangeAccent),
                children: [
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'BMI value',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Classification',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Below 18.5',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Underweight',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          '18.5-24.9',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Normal',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                  TableRow(
                    children: [
                      TableCell(
                        child: Text(
                          'Above 25',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                      TableCell(
                        child: Text(
                          'Overweight',
                          textAlign: TextAlign.center,
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              bmi == ''? Text('Please enter your wight and height')
              : Text('Your BMI value is : $bmi'),
              Expanded(child:SizedBox()),
              ElevatedButton(
                onPressed:(){
                  Navigator.pop(context);
                },
                child: Text('Back'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
