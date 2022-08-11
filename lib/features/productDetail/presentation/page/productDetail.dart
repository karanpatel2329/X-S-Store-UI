import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class ProductDetail extends StatefulWidget {
  const ProductDetail({Key? key}) : super(key: key);

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(375, 844), minTextAdapt: true);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 60.sp,horizontal: 30.sp),
              height: 375.h,
              width: 390.w,
             decoration: const BoxDecoration(
                 color: const Color(0xffCD121F),
                image: const DecorationImage(
                  image: AssetImage('assets/image/shoe.png'),
                  fit: BoxFit.fill,
                )
              ),
             child: Row(
               crossAxisAlignment: CrossAxisAlignment.start,
               mainAxisAlignment: MainAxisAlignment.spaceBetween,
               children: [
                GestureDetector(
                  child:  CircleAvatar(
                    radius: 22.sp,
                    backgroundColor: Colors.white.withOpacity(0.3),
                    child: const Icon(
                      Icons.arrow_back,
                      color: Colors.white,
                    ),
                  ),
                  onTap: (){
                    Navigator.pop(context);
                  },
                ),
                 CircleAvatar(
                   radius: 22.sp,
                   backgroundColor: Colors.white.withOpacity(0.3),
                   child: const Icon(
                     Icons.more_horiz,
                     color: Colors.white,
                   ),
                 )
               ],
             ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 40.sp),
              color: const Color(0xff12121D),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The stock market for things", style: TextStyle(fontWeight: FontWeight.w800,fontSize: 20,color: Colors.white),),
                  SizedBox(
                    height: 16.sp,
                  ),
                  Text("X-S-Store is the world’s first stock market for things – a live ‘bid/ask’ marketplace. Buyers place bids, sellers place asks and when a bid and ask meet, the transaction happens automatically. Retro Jordans, Nikes, Yeezys and more – now 100% authentic guaranteed.", style: TextStyle(fontSize: 14.sp,color: Colors.white.withOpacity(0.6)),)

                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 40.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("The Basic",style: TextStyle(color: Color(0xff12121D),fontSize: 20.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 16.sp,),
                  Text("Anonymity",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Never worry about legit buyers or sellers – we’re in the middle.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Transparency",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Real-time market data for intelligent buying and selling.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Authenticity",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Our experts authenticate every product sold on X-S-Store.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400))

                ],
              ),
            ),
            Container(
              color: Color(0xff12121D).withOpacity(0.05),
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 40.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Buying on X-S-Store",style: TextStyle(color: Color(0xff12121D),fontSize: 20.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 16.sp,),
                  Text("Bid (Buy)",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Make an offer that any seller can accept; or purchase immediately at the lowest Ask.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Authenticate",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Seller ships to us. We authenticate, then we release funds to the seller.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Prosper",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("We ship to you. You sip a daiquiri, knowing you will never get a fake.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(
                    height: 16.sp,
                  ),

                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 17),
                      decoration: BoxDecoration(
                        color: Color(0xff42D70D),
                        borderRadius: BorderRadius.all(Radius.circular(60.sp))
                      ),
                      child: Text("Learn More",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
            ),
            Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(horizontal: 30.sp,vertical: 40.sp),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("Selling on X-S-Store",style: TextStyle(color: Color(0xff12121D),fontSize: 20.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 16.sp,),
                  Text("Ask (Sell)",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("List an item for sale; or sell immediately at the highest Bid.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Authenticate",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("Ship your item within 2 business days. We authenticate, then we ship to the buyer.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(height: 16.sp,),
                  Text("Prosper",style: TextStyle(color: Color(0xff12121D),fontSize: 16.sp,fontWeight: FontWeight.w700)),
                  SizedBox(height: 8.sp,),
                  Text("We release funds to you. You sip a daiquiri, knowing you will never get a chargeback.",style: TextStyle(color: Color(0xff12121D),fontSize: 14.sp,fontWeight: FontWeight.w400)),

                  SizedBox(
                    height: 16.sp,
                  ),

                  Center(
                    child: Container(
                      padding: EdgeInsets.symmetric(horizontal: 35,vertical: 17),
                      decoration: BoxDecoration(
                          color: Color(0xffFF2343),
                          borderRadius: BorderRadius.all(Radius.circular(60.sp))
                      ),
                      child: Text("Learn More",style: TextStyle(color: Colors.white,fontSize: 16.sp,fontWeight: FontWeight.w700)),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
