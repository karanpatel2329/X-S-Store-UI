import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seekreward/features/productDetail/presentation/page/productDetail.dart';

class StoryPage extends StatelessWidget {
  const StoryPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        InkWell(
          onTap: (){
            Navigator.push(context,MaterialPageRoute(builder: (context)=>ProductDetail()));
          },
          child: Container(
            decoration: BoxDecoration(
                color: Colors.red.shade700,
                borderRadius: BorderRadius.all(Radius.circular(12.sp))),
            child: Container(
              padding: EdgeInsets.all(24.sp),
              height: 345.h,
              width: 345.w,
              decoration: BoxDecoration(
                  image: const DecorationImage(
                      image: AssetImage('assets/image/shoe3.png'),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.all(Radius.circular(12.sp))),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Welcome to X-S-Store",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 8.sp,
                  ),
                  Text(
                    "X-S-Store",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.bold),
                  )
                ],
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 345.w,
          child: ListView(
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            children: [
              Container(
                padding: EdgeInsets.all(24.sp),
                height: 345.h,
                width: 345.w,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/image/shoe1.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(12.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    const CircleAvatar(
                      radius: 24,
                      backgroundColor: Colors.black,
                      child: const Icon(Icons.play_arrow),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Text(
                      "Nike Adapt BB Unboxing -\nFuturistic Self Lacing Sneakers",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 8,
                          backgroundImage:const AssetImage('assets/image/shoe.png'),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Unbox Therapy",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "949K Views",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "3 min ago",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(24.sp),
                height: 345.h,
                width: 345.w,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: const AssetImage('assets/image/shoe2.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(12.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 4,vertical: 2),
                      decoration: const BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.all(Radius.circular(6)),
                      ),
                      child: const Text("Live",style: const TextStyle(color: Colors.white,fontSize: 11,fontWeight: FontWeight.w900),),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Text(
                      "Nike Alphafly Next% Full & Final Review | Carbon Fiber Plate Marathon Shoe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 8,
                          backgroundImage:AssetImage('assets/image/shoe.png'),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "Fideletty",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "32.4K Views",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "3 min ago",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.all(24.sp),
                height: 345.h,
                width: 345.w,
                decoration: BoxDecoration(
                    image: const DecorationImage(
                        image: AssetImage('assets/image/shoe3.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.all(Radius.circular(12.sp))),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [

                    Text(
                      "About\nJordan 1 Mid Chicago Toe",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 8.sp,
                    ),
                    Row(
                      children: [
                        const CircleAvatar(
                          radius: 8,
                          backgroundImage:const AssetImage('assets/image/shoe.png'),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        Text(
                          "TheOffWhiteDealer",
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "949K Views",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                        const SizedBox(
                          width: 8,
                        ),
                        Text(
                          "3 min ago",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 12.sp,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
