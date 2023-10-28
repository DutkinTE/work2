
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AddressWidget extends StatelessWidget {
  String name;
  String address;
  AddressWidget({super.key, required this.name, required this.address});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20),
      height: 80,
      decoration: BoxDecoration(
          color: const Color.fromRGBO(23, 32, 39, 1),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [Text(name, style: const TextStyle(color: Colors.white),), Text(address, style: const TextStyle(color: Colors.white),)],
          ),
          const Icon(CupertinoIcons.pen, color: Colors.white,)
        ],
      ),
    );
  }
}
