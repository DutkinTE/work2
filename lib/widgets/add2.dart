
import 'package:flutter/cupertino.dart';
import 'package:work2/data.dart';
import 'package:work2/widgets/text_field.dart';

class Add2Widget extends StatefulWidget {
  const Add2Widget({super.key});

  @override
  State<Add2Widget> createState() => _Add2WidgetState();
}

class _Add2WidgetState extends State<Add2Widget> {
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
          name: 'Ko Yuri',
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
          name: 'yuri@email.com',
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
            name: '+375294545687',
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
            name: 'Italy',
            prefixIcon: const Icon(CupertinoIcons.placemark_fill)),
        const SizedBox(
          height: 12,
        ),
        Text('City*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: 'Naple',
            prefixIcon: const Icon(CupertinoIcons.building_2_fill)),
        const SizedBox(
          height: 12,
        ),
        Text('Address line 1*', style: underInputStyle),
        const SizedBox(
          height: 8,
        ),
        TextFieldWidget(
            name: 'Via Toledo 256',
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
            name: '80100', prefixIcon: const Icon(CupertinoIcons.mail_solid)),
      ],
    );
  }
}
