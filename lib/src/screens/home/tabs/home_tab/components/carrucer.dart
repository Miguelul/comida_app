import 'package:flutter/material.dart';
import '../../../../../../constants.dart';


class Carrucer extends StatelessWidget {
  const Carrucer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.5,
      child: PageView.builder(
        controller: PageController(viewportFraction: 0.85, initialPage: 1),
        itemCount: 3,
        itemBuilder: (context, index) => CarrucerItems()
      ),
    );
  }
}

class CarrucerItems extends StatelessWidget {
  const CarrucerItems({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: defaultPadding / 2),
      padding: const EdgeInsets.all(defaultPadding),
      decoration: BoxDecoration(
    color: primaryColor,
    borderRadius: const BorderRadius.all(Radius.circular(defaultPadding)),
      ),
      child: Row(
    children: [
      Expanded(
        flex: 2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Looking For Your Desire Specialist Doctor?",
              style: Theme.of(context).textTheme.subtitle1!.copyWith(
                  color: Colors.white, fontWeight: FontWeight.w600),
            ),
            Row(
              children: [
                Container(
                  margin: EdgeInsets.only(right: defaultPadding / 2),
                  width: 2,
                  height: 48,
                  decoration: BoxDecoration(
                    color: Color(0xFF83D047),
                    borderRadius: const BorderRadius.all(
                        Radius.circular(defaultPadding)),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Miguel",
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white),
                    ),
                    Text(
                      "doctor.speciality" + "\n" + "doctor.institute",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                )
              ],
            ),
          ],
        ),
      ),
      Expanded(
        child: Image.asset("doctor.image"),
      ),
    ],
      ),
    );
  }
}

