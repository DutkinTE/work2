
import 'package:flutter/material.dart';
import 'package:work2/data.dart';

class TextFieldWidget extends StatelessWidget {
  String name;
  Icon prefixIcon;
  TextFieldWidget({super.key, required this.name, required this.prefixIcon});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 44,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: prefixIcon,
          prefixIconColor: colors[3],
          hintText: name,
          hintStyle: TextStyle(color: colors[3], fontSize: 14),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(169, 181, 193, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
  }
}
