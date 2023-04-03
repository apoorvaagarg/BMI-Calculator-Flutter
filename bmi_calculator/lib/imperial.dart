import 'package:flutter/material.dart';  
  
class Imperial extends StatefulWidget {
  const Imperial({super.key});
  @override
  State<Imperial> createState() => _ImperialState();
}

class _ImperialState extends State<Imperial> {
  TextEditingController inheight1 = TextEditingController();
  TextEditingController inheight2 = TextEditingController();
  TextEditingController inweight = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:[
          Row(
            children: [
              Expanded(
                child: TextField(
                keyboardType: TextInputType.number,
                controller: inheight1,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Height in Feets',
                  hintText: 'Feets',
                ),
                ),
              ),
              Expanded(
                child: TextField(
                  keyboardType: TextInputType.number,
                  controller: inheight2,
                  decoration: const InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Height in Inches',
                    hintText: 'Inches',
                  ),
                ),
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          TextField(
            keyboardType: TextInputType.number,
            controller: inweight,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Weight in Pounds',
              hintText: 'Pounds',
            ),
          ),

          const SizedBox(
            height: 20,
          ),       

          Wrap(
            children: [
              ElevatedButton(
                child: const Text("Calculate BMI"),
                onPressed: () {
                  setState(() {
                    double height1 = ((double.parse(inheight1.text)))*12;
                    double height2 = ((double.parse(inheight2.text)));
                    double height = height1+height2;
                    double weight = (double.parse(inweight.text))*703;
                    double bmi = (weight)/(height*height);
                    result = bmi.toString();
                  });
                },
              ),
            ],
          ),

          const SizedBox(
            height: 20,
          ),

          Text('Result : $result', style: const TextStyle(
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
          )),
          const SizedBox(
            height: 20,
          ),
          const Text("""
          Underweight = <18.5 
          Normal weight = 18.5–24.9 
          Overweight = 25–29.9 
          Obesity = BMI of 30 or greater"""),
        ],
      ),
    );
  }
}