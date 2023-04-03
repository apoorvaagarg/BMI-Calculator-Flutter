import 'package:flutter/material.dart';  

class Metric extends StatefulWidget {
  const Metric({super.key});
  @override
  State<Metric> createState() => _MetricState();
}

class _MetricState extends State<Metric> {
  TextEditingController inheight = TextEditingController();
  TextEditingController inweight = TextEditingController();
  String result = "0";

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        children:[
          TextField(
            keyboardType: TextInputType.number,
            controller: inheight,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Height',
              hintText: 'Input height in Centimeters',
            ),
          ),

          const SizedBox(
            height: 20,
          ),

          TextField(
            keyboardType: TextInputType.number,
            controller: inweight,
            decoration: const InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Weight',
              hintText: 'Input weight in Kilograms',
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
                    double height = (double.parse(inheight.text))/100;
                    double weight = double.parse(inweight.text);
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
