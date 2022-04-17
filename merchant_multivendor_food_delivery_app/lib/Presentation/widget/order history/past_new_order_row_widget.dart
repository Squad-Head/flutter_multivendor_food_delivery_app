import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class PastNewOrderRowWidget extends StatelessWidget {
  const PastNewOrderRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            height: 40.h,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
              ),
              child: const Text(
                'New Order',
                style: TextStyle(fontSize: 20),
              ),
            ),
          ),
        ),
        SizedBox(
          width: 5.w,
        ),
        Expanded(
          child: SizedBox(
            height: 40.h,
            child: ElevatedButton(
              onPressed: null,
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
                onPrimary: Colors.white,
                // onSurface: Colors.black, // Disable color
              ),
              child: Text(
                'Past Order',
                style: TextStyle(fontSize: 20.sp),
              ),
            ),
          ),
        )
      ],
    );
  }
}
