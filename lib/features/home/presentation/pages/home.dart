import 'package:another_transformer_page_view/another_transformer_page_view.dart';
import 'package:bottom_navy_bar/bottom_navy_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:seekreward/features/card/presentation/addCardBottomSheet.dart';
import 'package:seekreward/features/home/presentation/pages/story.dart';

import '../widget/addPayment.dart';
import '../widget/transformer.dart';
import 'newPopular.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentPage = 0;
  int _selectedIndex = 0;
  IndexController _pagecontroller = IndexController();
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context,
        designSize: const Size(375, 844), minTextAdapt: true);
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(left: 30.sp, top: 30.sp),
              child: const Text(
                "Today",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.w900),
              ),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 0;
                    });
                    _pagecontroller.move(0);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(left: 30.sp, top: 8.sp),
                    child: Text(
                      "New&Popular",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: currentPage == 0 ? Colors.black : Colors.grey),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                InkWell(
                  onTap: () {
                    setState(() {
                      currentPage = 1;
                    });
                    _pagecontroller.move(1);
                  },
                  child: Padding(
                    padding: EdgeInsets.only(top: 8.sp),
                    child: Text(
                      "Story",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w900,
                          color: currentPage == 1 ? Colors.black : Colors.grey),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 20.sp,
            ),
            Flexible(
                child: TransformerPageView.children(
              transformer: AccordionTransformer(),
              controller: _pagecontroller,
              onPageChanged: (num) {
                setState(() {
                  currentPage = num!;
                });
              },
              children: const [
                SingleChildScrollView(child: newPopular()),
                SingleChildScrollView(child: StoryPage()),

              ],
            ))
          ],
        ),
      ),
      bottomNavigationBar: BottomNavyBar(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        selectedIndex: _selectedIndex,
        showElevation: true, // use this to remove appBar's elevation
        onItemSelected: (index) {
          setState(() {
            _selectedIndex = index;
            // _pageController.animateToPage(index,
            //     duration: Duration(milliseconds: 300), curve: Curves.ease);
          });
          if (index == 2) {
            showModalBottomSheet<void>(
                isScrollControlled: true,
                backgroundColor: Colors.transparent,
                context: context,
                builder: (BuildContext context) {
                  return AddPaymentMethod();
                });
          }
        },
        items: [
          BottomNavyBarItem(
            icon: const Icon(Icons.apps),
            title: const Text('Today'),
            activeColor: Colors.black,
          ),
          BottomNavyBarItem(
              icon: const Icon(Icons.search),
              title: const Text('Search'),
              activeColor: Colors.black),
          BottomNavyBarItem(
              icon: const Icon(Icons.person),
              title: const Text('Profile'),
              activeColor: Colors.black),
        ],
      ),
    );
  }
}


