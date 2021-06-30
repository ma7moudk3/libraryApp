import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/view/screens/readBookScreen.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/secondaryText.dart';

class BookDetailsScreen extends StatefulWidget {
  @override
  _BookDetailsScreenState createState() => _BookDetailsScreenState();
}

class _BookDetailsScreenState extends State<BookDetailsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
          slivers: <Widget>[
            SliverAppBar(
              pinned: true,
              snap: false,
              floating: false,
              expandedHeight: ScreenUtil().screenHeight * 0.35,
              flexibleSpace: FlexibleSpaceBar(
                title: PrimaryText(
                  text: "رواية نطفة",
                  fontWeight: FontWeight.bold,
                  textColor: Colors.white,
                  alignment: Alignment.bottomCenter,
                  fontSize: 14,
                ),
                background: Container(
                  padding: EdgeInsets.only(
                      left: 115, right: 115, top: 50, bottom: 60),
                  color: primaryColor,
                  child: Container(
                    width: ScreenUtil().scaleWidth * 0.2,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset('images/book1.jpg', fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
            SliverList(
              delegate: SliverChildListDelegate([
                Container(
                  margin: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: PrimaryText(
                          text: "وصف الكتاب",
                          fontSize: 18,
                          fontWeight: FontWeight.w700,
                          alignment: Alignment.topRight,
                        ),
                      ),
                      SizedBox(
                        height: 12,
                      ),
                      SecondaryText(
                        text: """
                            هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، 
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، 
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، 
هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.
إذا كنت تحتاج إلى عدد أكبر من الفقرات يتيح لك مولد النص العربى زيادة عدد الفقرات كما تريد، 
                            """,
                        fontSize: 13,
                        fontWeight: FontWeight.w700,
                        alignment: Alignment.topRight,
                        textAlign: TextAlign.right,
                      ),
                      SizedBox(
                        height: 35,
                      ),
                      InkWell(
                        onTap: () {
                          Get.to(ReadBookScreen());
                        },
                        child: Container(
                          width: ScreenUtil().screenWidth * 0.8,
                          height: 55,
                          decoration: BoxDecoration(
                              color: primaryColor,
                              borderRadius:
                                  BorderRadius.all(Radius.circular(50))),
                          child: PrimaryText(
                            alignment: Alignment.center,
                            text: "اقرأ الكتاب",
                            textColor: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ]),
              // delegate: SliverChildBuilderDelegate(
              //   (BuildContext context, int index) {
              //     return Container(
              //       padding: EdgeInsets.symmetric(horizontal: 20, vertical: 15),
              //       child: Column(
              //         children: [
              //           PrimaryText(
              //             text:"وصف الكتاب",
              //             fontSize: 18,
              //             fontWeight: FontWeight.w700,
              //             alignment: Alignment.topRight,
              //           ),
              //           SizedBox(
              //             height: 12,
              //           ),
              //           SecondaryText(
              //             text:"هذا النص هو مثال لنص يمكن أن يستبدل في نفس المساحة، لقد تم توليد هذا النص من مولد النص العربى، حيث يمكنك أن تولد مثل هذا النص أو العديد من النصوص الأخرى إضافة إلى زيادة عدد الحروف التى يولدها التطبيق.",
              //             fontSize: 13,
              //             fontWeight: FontWeight.w700,
              //             alignment: Alignment.topRight,
              //           ),
              //         ],
              //       )
              //     );
              //   },
              //   childCount: 1,
              // ),
            ),
          ],
        ),
        bottomNavigationBar: BottomAppBar(
            child: ButtonBar(
          alignment: MainAxisAlignment.spaceEvenly,
        )));
  }
}
