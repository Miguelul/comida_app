import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';


class CustomSwitch extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  CustomSwitch({
    required this.value,
    required this.onChanged,
  });

  @override
  _CustomSwitchState createState() => _CustomSwitchState();
}

class _CustomSwitchState extends State<CustomSwitch> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.value == false
            ? widget.onChanged(true)
            : widget.onChanged(false);
      },
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 200),
        curve: Curves.easeInOut,
        width: 56.0,
        height: 32.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(24.0),
          color: !widget.value ? AppColor.kTextGrey2 : AppColor.kPrimary,
        ),
        child: Padding(
          padding: EdgeInsets.all(
            4.0,
          ),
          child: AnimatedAlign(
            duration: const Duration(milliseconds: 200),
            curve: Curves.easeInOut,
            alignment:
                widget.value ? Alignment.centerRight : Alignment.centerLeft,
            child: Container(
              width: 24.0,
              height: 24.0,
              decoration:
                  BoxDecoration(shape: BoxShape.circle, color: Colors.white),
            ),
          ),
        ),
      ),
    );
  }
}
