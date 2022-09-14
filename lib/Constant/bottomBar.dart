import 'package:flutter/material.dart';
import 'package:lab_2/Constant/SizeConfig.dart';

class BottomBar extends StatelessWidget {
  final int? BottomNu;
  final Function? callBack;
  const BottomBar({super.key, this.BottomNu, this.callBack});
  @override
  Widget build(BuildContext context) {
    SizeOfConfig().init(context);
    final bottoms = [
      Icons.home_filled,
      Icons.search,
      Icons.shopping_bag_outlined,
      Icons.person,
    ];
    return SizedBox(
      width: SizeOfConfig.widthScreen,
      height: getHeightScreen(60),
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemBuilder: (_, index) => GestureDetector(
          child: Container(
            width: (SizeOfConfig.widthScreen - 40) / 4,
            padding: EdgeInsets.symmetric(vertical: 5),
            decoration: BottomNu == index
                ? const BoxDecoration(
                    border: Border(
                      bottom: BorderSide(
                        width: 3,
                        color: Color(0x99063373),
                      ),
                    ),
                  )
                : null,
            child: Icon(
              bottoms[index],
              size: 30,
              color: BottomNu == index ? Color(0x99063373) : Color(0xC58BA5E0),
            ),
          ),
          onTap: () => callBack!(index),
        ),
        separatorBuilder: (_, index) => const SizedBox(
          width: 10,
        ),
        itemCount: bottoms.length,
      ),
    );
  }
}
