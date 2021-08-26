import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';



class CustomInputField extends StatelessWidget {
  const CustomInputField({
    required this.labelText,
    this.textInputAction,
    this.onSubmitted,
    this.controller,
    this.onTap,
    this.isPassword = false,
    this.hasError = false,
    required this.hintText,
  });

  final String labelText;
  final String hintText;
  final bool isPassword;
  final bool hasError;
  final TextInputAction? textInputAction;
  final Function(String)? onSubmitted;
  final Function()? onTap;
  final TextEditingController? controller;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          labelText,
          style: Theme.of(context).textTheme.bodyText1?.copyWith(
                color: AppColor.kTextGrey1,
              ),
        ),
        Stack(
          children: [
            TextField(
              obscureText: isPassword,
              controller: controller,
              textInputAction: textInputAction,
              onSubmitted: onSubmitted,
              cursorColor: AppColor.kPrimary,
              style: Theme.of(context).textTheme.headline6,
              decoration: InputDecoration(
                  isDense: true,
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kTextGrey3,
                    ),
                  ),
                  enabledBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color:
                          hasError ? AppColor.kTextError : AppColor.kTextGrey3,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kPrimary,
                    ),
                  ),
                  errorBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: AppColor.kTextError,
                    ),
                  ),
                  contentPadding: EdgeInsets.only(
                    top: 16,
                    bottom: 16,
                    right: 56,
                  ),
                  hintText: hintText,
                  hintStyle: Theme.of(context).textTheme.headline6),
            ),
          ],
        ),
      ],
    );
  }
}
