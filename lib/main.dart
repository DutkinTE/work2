import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/data.dart';
import 'package:work2/widgets/add1.dart';
import 'package:work2/widgets/add2.dart';
import 'package:work2/widgets/select1.dart';
import 'package:work2/widgets/select2.dart';
import 'package:work2/widgets/text_field.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int senderDetailsIndex = 0;
  int recipientAddressIndex = 0;

  List<Widget> senderDetails = [const Add1Widget(), const Select1Widget()];
  List<Widget> recipientAddress = [const Add2Widget(), const Select2Widget()];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            title: const Text('Ordering', style: TextStyle()),
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            centerTitle: true,
            elevation: 0.3,
            leading: const Icon(CupertinoIcons.back)),
        body: ListView(
          padding:
              const EdgeInsets.only(right: 20, left: 20, top: 12, bottom: 20),
          children: [
            const Text('Step 1',
                textAlign: TextAlign.center, style: TextStyle(fontSize: 16)),
            const SizedBox(
              height: 24,
            ),
            Text('Start date', style: underInputStyle),
            const SizedBox(
              height: 8,
            ),
            TextFieldWidget(
                name: 'Sep 12, 2023',
                prefixIcon: const Icon(
                  CupertinoIcons.calendar,
                )),
            const SizedBox(
              height: 48,
            ),
            const Text('Sender details',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 33,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              (senderDetailsIndex == 0)
                                  ? colors[0]
                                  : colors[1]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {
                        setState(() {
                          senderDetailsIndex = 0;
                        });
                      },
                      child: Text('Add address',
                          style: TextStyle(
                              color: (senderDetailsIndex == 0)
                                  ? Colors.white
                                  : colors[2]))),
                ),
                SizedBox(
                  height: 33,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              (senderDetailsIndex == 1)
                                  ? colors[0]
                                  : colors[1]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {
                        setState(() {
                          senderDetailsIndex = 1;
                        });
                      },
                      child: Text('Select address',
                          style: TextStyle(
                              color: (senderDetailsIndex == 1)
                                  ? Colors.white
                                  : colors[2]))),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            senderDetails[senderDetailsIndex],
            const SizedBox(
              height: 56,
            ),
            const Text('Recipient address',
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
            const SizedBox(
              height: 16,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SizedBox(
                  height: 33,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              (recipientAddressIndex == 0)
                                  ? colors[0]
                                  : colors[1]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {
                        setState(() {
                          recipientAddressIndex = 0;
                        });
                      },
                      child: Text('Add address',
                          style: TextStyle(
                              color: (recipientAddressIndex == 0)
                                  ? Colors.white
                                  : colors[2]))),
                ),
                SizedBox(
                  height: 33,
                  width: MediaQuery.of(context).size.width / 2 - 25,
                  child: ElevatedButton(
                      style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                              (recipientAddressIndex == 1)
                                  ? colors[0]
                                  : colors[1]),
                          shape: MaterialStateProperty.all(
                            RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(36),
                            ),
                          ),
                          elevation: MaterialStateProperty.all(0)),
                      onPressed: () {
                        setState(() {
                          recipientAddressIndex = 1;
                        });
                      },
                      child: Text('Select address',
                          style: TextStyle(
                              color: (recipientAddressIndex == 1)
                                  ? Colors.white
                                  : colors[2]))),
                )
              ],
            ),
            const SizedBox(
              height: 20,
            ),
            recipientAddress[recipientAddressIndex],
            const SizedBox(
              height: 56,
            ),
            SizedBox(
              height: 52,
              child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(colors[0]),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(0)),
                  onPressed: () {},
                  child: const Text('Next step')),
            ),
          ],
        ));
  }
}
