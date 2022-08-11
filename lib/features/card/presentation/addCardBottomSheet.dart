import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
class AddCardBottomSheet extends StatefulWidget {
  const AddCardBottomSheet({Key? key}) : super(key: key);

  @override
  State<AddCardBottomSheet> createState() => _AddCardBottomSheetState();
}

class _AddCardBottomSheetState extends State<AddCardBottomSheet> {
  TextEditingController cardName = TextEditingController();
  TextEditingController cardNumber = TextEditingController();
  TextEditingController cardExpire = TextEditingController();
  TextEditingController cardCVV = TextEditingController();
  FocusNode _focus = FocusNode();
  bool isReverse = false;

  @override
  void initState() {
    _focus.addListener(_onFocusChange);
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
    _focus.removeListener(_onFocusChange);
    _focus.dispose();
  }

  void _onFocusChange() {
    setState(() {
      isReverse = !isReverse;
    });
    debugPrint("Focus: ${_focus.hasFocus.toString()}");
  }
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom),
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 20.sp,),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20.sp),
                topRight: Radius.circular(20.sp))),
        child: FractionallySizedBox(
          heightFactor: 0.9,
          child: ListView(
            children: [
              Padding(
                padding: EdgeInsets.symmetric(vertical: 36.sp),
                child: Row(
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
                          "Add Card",
                          style: TextStyle(
                              fontSize: 16.sp,
                              fontWeight: FontWeight.w900),
                        )),
                    SizedBox(
                      height: 0,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.sp),
                child: Text("Start typing to add your credit card details. Everything will upadate according to your data.",style: TextStyle(
                  fontSize: 15.sp,),
                ),
              ),
              SizedBox(
                height: 20.sp,
              ),
              Visibility(child: Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.sp),
                  padding: EdgeInsets.all(30.sp),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Image(
                        image: AssetImage('assets/image/card.png'),
                      ),
                      SizedBox(
                        height: 40.sp,
                      ),
                      Text(cardNumber.value.text.isEmpty?"Enter Your Card Number":cardNumber.value.text,style: TextStyle(
                          fontSize: 16.sp,
                          fontWeight: FontWeight.w700
                      ),),
                      SizedBox(
                        height: 10.sp,
                      ),
                      Row(
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Card Holder",style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xff12121D).withOpacity(0.3),
                              ),),
                              Text(cardName.value.text.isEmpty?"Jeans":cardName.value.text,style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color:  Color(0xff12121D).withOpacity(0.6),
                              ),)
                            ],
                          ),
                          SizedBox(
                            width: 80.sp,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Expires",style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w400,
                                color:  Color(0xff12121D).withOpacity(0.3),
                              ),),
                              Text(cardExpire.value.text.isEmpty?"09/22":cardExpire.value.text,style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w700,
                                color:  Color(0xff12121D).withOpacity(0.6),
                              ),)
                            ],
                          )
                        ],
                      )
                    ],
                  ),
                ),
              ),
              visible: !isReverse,
              ),
              Visibility(visible: isReverse,child: Material(
                elevation: 3,
                borderRadius: BorderRadius.all(Radius.circular(16.sp)),
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 10.sp),
                  padding: EdgeInsets.symmetric(vertical: 30.sp),

                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 38.sp,
                        width: double.infinity,
                        color:Color(0xff000000).withOpacity(0.1),
                      ),
                      SizedBox(
                        height: 20.sp,
                      ),

                      Container(
                        color:Color(0xff000000).withOpacity(0.05),
                        height: 35.sp,
                        width: 200.sp,
                        margin: EdgeInsets.only(left: 20.sp),
                        padding: EdgeInsets.symmetric(horizontal: 10.sp),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(cardCVV.value.text.isEmpty?"CVV":cardCVV.value.text)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 76.sp,
                      ),
                    ],
                  ),
                ),
              ),
              ),
              SizedBox(
                height: 10.sp,
              ),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Column(
                  children: [
                    TextField(
                      keyboardType: TextInputType.number,
                      controller:cardNumber,
                      decoration: InputDecoration(
                          hintText: "Card Number",
                          enabledBorder:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300)
                          )
                      ),
                      onChanged: (value){
                        setState(() {


                        });
                      },
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    TextField(
                      controller: cardName,
                      decoration: InputDecoration(
                          hintText: "Card Holder Name",
                          enabledBorder:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300)
                          )
                      ),
                      onChanged: (value){
                        setState(() {

                        });
                      },
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    TextField(
                      keyboardType: TextInputType.text,
                      controller: cardExpire,
                      decoration: InputDecoration(
                          hintText: "Expire Date",
                          enabledBorder:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300)
                          )
                      ),
                      onChanged: (value){
                        setState(() {

                        });
                        print(value);
                      },
                    ),
                    SizedBox(
                      height: 10.sp,
                    ),
                    TextField(
                      focusNode: _focus,
                      controller: cardCVV,
                      keyboardType: TextInputType.number,
                      //controller: cardExpire,
                      decoration: InputDecoration(
                          hintText: "Security Code",
                          enabledBorder:UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey.shade300)
                          )
                      ),
                      onChanged: (value){
                        setState(() {

                        });
                      },
                    ),
                    SizedBox(
                      height: 30.sp,
                    ),
                    Center(
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.all(Radius.circular(60.sp)),
                          color:(cardName.value.text.isNotEmpty && cardExpire.value.text.isNotEmpty && cardCVV.value.text.isNotEmpty && cardNumber.value.text.isNotEmpty)? Color(0xff0008C7):Color(0xff12121D).withOpacity(0.2),
                        ),
                        padding: EdgeInsets.symmetric(horizontal: 60.sp,vertical: 18.sp),
                        child: Text("Save",style: TextStyle(
                          color: (cardName.value.text.isNotEmpty && cardExpire.value.text.isNotEmpty && cardCVV.value.text.isNotEmpty && cardNumber.value.text.isNotEmpty)? Colors.white:Color(0xff12121D).withOpacity(0.8)
                        ),),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}


