import 'package:flutter/material.dart';
import 'package:ttoss/common/common.dart';

class TtossAppBar extends StatefulWidget {
  const TtossAppBar({super.key});

  @override
  State<TtossAppBar> createState() => _TtossAppBarState();
}

class _TtossAppBarState extends State<TtossAppBar> {
  bool _showRedDot = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      color: context.appColors.appBarBackground,
      child: Row(
        children: [
          width10,
          SizedBox(
            width: 30,
            height: 30,
            child: Image.asset("$basePath/icon/toss.png", fit: BoxFit.contain),
          ),
          emptyExpanded,
          SizedBox(
            width: 30,
            height: 30,
            child: Image.asset("$basePath/icon/map_point.png",
                fit: BoxFit.contain),
          ),
          width10,
          Tap(
            onTap: () {
              setState(() {
                _showRedDot = !_showRedDot;
              });
            },
            child: Stack(
              children: [
                SizedBox(
                  width: 30,
                  height: 30,
                  child: Image.asset("$basePath/icon/notification.png",
                      fit: BoxFit.contain),
                ),
                if (_showRedDot)
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.topRight,
                    child: Container(
                      width: 6,
                      height: 6,
                      decoration: const BoxDecoration(
                          shape: BoxShape.circle, color: Colors.red),
                    ),
                  ))
              ],
            ),
          ),
          width10,
        ],
      ),
    );
  }
}
