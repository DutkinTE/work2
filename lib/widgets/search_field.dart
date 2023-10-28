
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:work2/data.dart';

class SearchFieldWidget extends StatefulWidget {
  const SearchFieldWidget({super.key});

  @override
  State<SearchFieldWidget> createState() => _SearchFieldWidgetState();
}

class _SearchFieldWidgetState extends State<SearchFieldWidget> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 37,
      child: TextField(
        decoration: InputDecoration(
          prefixIcon: const Icon(
            CupertinoIcons.search,
            size: 20,
          ),
          prefixIconColor: colors[3],
          labelText: 'Search',
          labelStyle: TextStyle(color: colors[3], fontSize: 14),
          border: const OutlineInputBorder(
              borderSide: BorderSide(color: Color.fromRGBO(169, 181, 193, 1)),
              borderRadius: BorderRadius.all(Radius.circular(8))),
        ),
      ),
    );
    
  }
}
