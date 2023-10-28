
import 'package:flutter/material.dart';
import 'package:work2/widgets/address.dart';
import 'package:work2/widgets/search_field.dart';

class Select1Widget extends StatefulWidget {
  const Select1Widget({super.key});

  @override
  State<Select1Widget> createState() => _Select1WidgetState();
}

class _Select1WidgetState extends State<Select1Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SearchFieldWidget(),
        const SizedBox(
          height: 12,
        ),
        AddressWidget(name: 'Denilev Egor', address: 'Belarus, Minsk, Derzhinskogo 3b, 80100',)
      ],
    );
  }
}
