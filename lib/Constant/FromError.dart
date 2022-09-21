import 'package:flutter_neumorphic/flutter_neumorphic.dart';

Widget FormError({List? errors}) {
  return Column(
    children: List.generate(
      errors!.length,
      (index) => Text(
        errors[index],
        style: TextStyle(color: Colors.red),
      ),
    ),
  );
}
