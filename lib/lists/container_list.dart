import 'package:flutter/material.dart';
import 'package:musicplayer_flutter/const_files/color_const.dart';

class ContainerList extends StatelessWidget {
  final String name;
  final Icon icon;
  final Color color;

  const ContainerList(
      {super.key, required this.name, required this.icon, required this.color});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(20),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            
            Text(
              name,
              style: const TextStyle(color: secondaryCOlor),
            )
          ],
        ),
      ),
    );
  }
}
