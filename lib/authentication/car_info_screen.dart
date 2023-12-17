import 'package:flutter/material.dart';

class CarInfoScreen extends StatefulWidget {
  const CarInfoScreen({super.key});

  @override
  State<CarInfoScreen> createState() => _CarInfoScreenState();
}

class _CarInfoScreenState extends State<CarInfoScreen> {
  TextEditingController carModelController = TextEditingController();
  TextEditingController carNumberController = TextEditingController();
  TextEditingController carColorController = TextEditingController();
  List<String> carTypesList = ["uber-x", "uber-go", "bike"];
  String? selectedCarType;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 24,
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Image.asset("images/logo1.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Write Car Details",
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.grey,
                    fontWeight: FontWeight.bold),
              ),
              TextField(
                controller: carModelController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                    labelText: "Car Model",
                    hintText: "Car Model",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
              ),
              TextField(
                controller: carNumberController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                    labelText: "Car Number",
                    hintText: "Car Number",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
              ),
              TextField(
                controller: carColorController,
                style: const TextStyle(color: Colors.grey),
                decoration: const InputDecoration(
                    labelText: "Car Color",
                    hintText: "Car Color",
                    enabledBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: UnderlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    hintStyle: TextStyle(color: Colors.grey, fontSize: 18),
                    labelStyle: TextStyle(color: Colors.grey, fontSize: 18)),
              ),
              const SizedBox(
                height: 10,
              ),
              DropdownButton(
                dropdownColor: Colors.white24,
                iconSize: 20,
                items: carTypesList.map((car) {
                  return DropdownMenuItem(
                    value: car,
                    child: Text(
                      car,
                      style: const TextStyle(color: Colors.grey),
                    ),
                  );
                }).toList(),
                onChanged: (newValue) {
                  setState(() {
                    selectedCarType = newValue.toString();
                  });
                },
                value: selectedCarType,
                hint: const Text(
                  "Please choos car type",
                  style: TextStyle(fontSize: 14.0, color: Colors.grey),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (c) => const CarInfoScreen()));
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.lightGreenAccent),
                  child: const Text(
                    "Save Now",
                    style: TextStyle(color: Colors.black54, fontSize: 18),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
