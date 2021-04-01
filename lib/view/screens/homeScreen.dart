import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:library_app/helper/constants.dart';
import 'package:library_app/view/widgets/primaryText.dart';
import 'package:library_app/view/widgets/searchTextField.dart';
import 'package:library_app/view/widgets/secondaryText.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        color: primaryColor,
        backgroundColor: Colors.black.withOpacity(0),
        items: <Widget>[
          Icon(
            Icons.house_rounded,
            size: 30,
            color: Colors.white,
          ),
          Icon(Icons.arrow_circle_down, size: 30, color: Colors.white),
          Icon(Icons.library_books_rounded, size: 30, color: Colors.white),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
      appBar: AppBar(
        backgroundColor: scaffolodColor,
        toolbarHeight: 80,
        elevation: 0,
        title: Padding(
          padding: const EdgeInsets.only(right: 10, top: 10),
          child: Column(
            children: [
              PrimaryText(
                text: 'كتب أدهم شرقاوي',
                fontWeight: FontWeight.bold,
                fontSize: 17,
                alignment: Alignment.centerRight,
              ),
              SizedBox(
                height: 10,
              ),
              PrimaryText(
                text: 'ما هو الكتاب الذي تريد قراءتَهُ اليوم',
                fontSize: 13,
                alignment: Alignment.centerRight,
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
            child: SearchTextField(),
          ),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: MediaQuery.of(context).size.width /
                    (MediaQuery.of(context).size.height * 0.83),
              ),
              itemBuilder: (_, index) {
                return Container(
                  padding: EdgeInsets.only(top: 0, right: 15, left: 15),
                  child: Column(
                    children: [
                      Container(
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image.asset('images/book1.jpg',
                              fit: BoxFit.cover),
                        ),
                      ),
                      PrimaryText(
                        text: 'رواية نطفة',
                        fontSize: 15,
                        fontWeight: FontWeight.bold,
                        alignment: Alignment.centerRight,
                      ),
                      SecondaryText(
                        text: 'رواية خيالية',
                        fontSize: 13,
                        alignment: Alignment.centerRight,
                      )
                    ],
                  ),
                );
              },
              itemCount: 20,
            ),
          )
        ],
      ),
    );
  }
}
