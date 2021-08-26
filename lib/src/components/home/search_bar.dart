import 'package:comida_app/src/theme/app_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';


class SearchBar extends StatelessWidget {
  const SearchBar();

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        TextField(
          textAlignVertical: TextAlignVertical.bottom,
          cursorColor: AppColor.kPrimary,
          decoration: InputDecoration(
            filled: true,
            isDense: true,
            fillColor: AppColor.kSerachBar,
            border: OutlineInputBorder(
              borderSide: BorderSide.none,
              borderRadius: BorderRadius.circular(
                6,
              ),
            ),
            contentPadding: EdgeInsets.only(
              top: 16,
              bottom: 16,
              left: 56,
            ),
            hintText: 'Search food',
            hintStyle: Theme.of(context).textTheme.headline6!.copyWith(
                  color: AppColor.kTextGrey1,
                ),
          ),
        ),
        Positioned(
          top: 0,
          bottom: 0,
          left: 20,
          child: SvgPicture.asset(
            'assets/img/search.svg',
            width: 24,
          ),
        )
      ],
    );
  }
}
