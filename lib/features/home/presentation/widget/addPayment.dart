
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../card/presentation/addCardBottomSheet.dart';

class AddPaymentMethod extends StatelessWidget {
  const AddPaymentMethod({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: 20.sp, vertical: 34.sp),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(20.sp),
              topRight: Radius.circular(20.sp))),
      child: FractionallySizedBox(
        heightFactor: 0.9,
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  child: Icon(Icons.arrow_back),
                  onTap: () {
                    Navigator.pop(context);
                  },
                ),
                Center(
                    child: Text(
                      "Add Payment Method",
                      style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w900),
                    )),
                SizedBox(
                  height: 0,
                ),
              ],
            ),
            InkWell(
              onTap: () {
                showModalBottomSheet<void>(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    context: context,
                    builder: (BuildContext context) {
                      return AddCardBottomSheet();
                    });
              },
              child: Container(
                margin: EdgeInsets.only(top: 20.sp),
                height: 200.h,
                width: 315.w,
                decoration: BoxDecoration(
                    color: Color(0xff12121D).withOpacity(0.05),
                    borderRadius:
                    BorderRadius.all(Radius.circular(16.sp))),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(Icons.add),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Text(
                      "Add Card",
                      style: TextStyle(
                          fontSize: 14.sp,
                          fontWeight: FontWeight.w700),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
