import 'package:flutter/material.dart';

class LogoLoginComponent extends StatelessWidget {
  const LogoLoginComponent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
      MediaQueryData mediaquery = MediaQuery.of(context);

    return  Column(
      children: [
        SizedBox(
          height: mediaquery.size.height * 0.20,
        ),
        Text(
          'Separação',
          style:TextStyle(
            fontSize: 40,
            color: Theme.of(context).colorScheme.tertiary,
          ),
        ),

        Text(
          'Conferência',
          style: TextStyle(
            fontSize: 40,
            color: Theme.of(context).colorScheme.background,
          ),
        ),
        SizedBox(
          height: 3,
        ),
      ],
    );
  }
}