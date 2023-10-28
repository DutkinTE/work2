
import 'package:flutter/material.dart';
import 'package:work2/widgets/address.dart';
import 'package:work2/widgets/search_field.dart';

class Select2Widget extends StatefulWidget {
  const Select2Widget({super.key});

  @override
  State<Select2Widget> createState() => _Select2WidgetState();
}

class _Select2WidgetState extends State<Select2Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchFieldWidget(),
        const SizedBox(
          height: 12,
        ),
        AddressWidget(name: 'Ko Yuri', address: 'Italy, Naple, Via Toledo 256, 220069',)
      ],
    );
  }
}
