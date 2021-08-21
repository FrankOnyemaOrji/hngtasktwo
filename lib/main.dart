import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'constants.dart';

void main() {
  runApp(const SimpleApp());
}

class SimpleApp extends StatelessWidget {
  const SimpleApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Pageone(),
    );
  }
}

class Pageone extends StatelessWidget {
  Pageone({Key? key}) : super(key: key);
  final nameController = TextEditingController();
  final ageController = TextEditingController();
  final stackController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Center(child: Text('Welcome')),
        ),
        body: Padding(
          padding: const EdgeInsets.only(left: 24.0, right: 24, top: 20),
          child: Center(
            child: Column(
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text('Enter Your Details'),
                ),
                TextFormField(
                  decoration: kTextInputDecoration,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 8,
                ),
                TextFormField(
                  decoration:
                      kTextInputDecoration.copyWith(hintText: 'Enter Your Age'),
                  controller: ageController,
                ),
                const SizedBox(
                  height: 8.0,
                ),
                TextFormField(
                  decoration: kTextInputDecoration.copyWith(
                      hintText: 'Enter Your Stack'),
                  controller: stackController,
                ),
                const SizedBox(
                  height: 12,
                ),
                // ignore: prefer_const_constructors
                ElevatedButton(
                  child: const Center(child: Text('Enter')),
                  onPressed: () {
                    var nameEntered = nameController.text;
                    var ageEntered = ageController.text;
                    var stackEnterd = stackController.text;
                    // ignore: avoid_print
                    print('Name $nameEntered');
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => PageTwo(
                                  getName: nameEntered,
                                  getAge: ageEntered,
                                  getStack: stackEnterd,
                                )));
                  },
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class PageTwo extends StatelessWidget {
  const PageTwo(
      {Key? key,
      required this.getName,
      required this.getAge,
      required this.getStack})
      : super(key: key);
  // ignore: prefer_typing_uninitialized_variables
  final getName;
  final getAge;
  final getStack;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Welcome')),
      ),
      body: Center(
        child: Text(
          'Welcome\n Name: $getName,\n Age: $getAge,\n Stack: $getStack',
          style: const TextStyle(
              color: Colors.black, fontSize: 30, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
