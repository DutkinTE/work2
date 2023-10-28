
import 'package:flutter/cupertino.dart';
import 'package:work2/data.dart';
import 'package:work2/widgets/text_field.dart';

class Add1Widget extends StatefulWidget {
  const Add1Widget({super.key});

  @override
  State<Add1Widget> createState() => _Add1WidgetState();
}

class _Add1WidgetState extends State<Add1Widget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Full name*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
          name: 'Danilev Egor',
          prefixIcon: const Icon(CupertinoIcons.person_fill),
        ),
        const SizedBox(
          height: 12,
        ),
        Text('Email*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
          name: 'egor_zu@email.com',
          prefixIcon: const Icon(CupertinoIcons.mail_solid),
        ),
        const SizedBox(
          height: 12,
        ),
        Text('Phone number*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: '+375726014690',
            prefixIcon: const Icon(CupertinoIcons.phone_fill)),
        const SizedBox(
          height: 16,
        ),
        Container(
          height: 1,
          color: const Color.fromRGBO(231, 236, 240, 1),
        ),
        const SizedBox(
          height: 12,
        ),
        Text('Country*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: 'Belarus',
            prefixIcon: const Icon(CupertinoIcons.placemark_fill)),
        const SizedBox(
          height: 12,
        ),
        Text('City*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: 'Minsk',
            prefixIcon: const Icon(CupertinoIcons.building_2_fill)),
        const SizedBox(
          height: 12,
        ),
        Text('Address line 1*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: 'Derzhinskogo 3b',
            prefixIcon: const Icon(CupertinoIcons.placemark_fill)),
        const SizedBox(
          height: 12,
        ),
        Text('Add address line +',
            style: TextStyle(color: colors[0], fontWeight: FontWeight.bold)),
        const SizedBox(
          height: 20,
        ),
        Text('Postcode*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: '220069', prefixIcon: const Icon(CupertinoIcons.mail_solid)),
      ],
    );
  }
}
