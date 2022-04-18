import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:multivendor_food_delivery_customer/presentation/constrain.dart';

class RoundButton extends StatelessWidget {
  RoundButton({Key? key, required this.buttonName, required this.function})
      : super(key: key);
  final String buttonName;
  GestureTapCallback function;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      height: size.height * 0.09.h,
      width: size.width,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        color: kButton,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 24),
        child: Row(
          children: [
            Icon(
              FontAwesomeIcons.phone,
              size: 18.h,
            ),
            SizedBox(
              width: 12.w,
            ),
            TextButton(
              onPressed: function,
              child: Text(
                buttonName,
                style: kBodyText.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                    fontSize: 22),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
