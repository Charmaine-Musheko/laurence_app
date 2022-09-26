
import 'package:flutter/material.dart';
import 'package:laurence_app/main.dart';



import '../consttants.dart';
import '../login/constants.dart';
import '../login/login_screen.dart';

import '../widgets/book_rating.dart';
import '../widgets/reading_card_list.dart';
import '../widgets/two_side_rounded_button.dart';
import 'details_screen.dart';

class HomeScreenRead extends StatefulWidget {
  HomeScreenRead({
    Key? key,
  }) : super(key: key);
  @override
  State<HomeScreenRead> createState() => _HomeScreenReadState();
}

class _HomeScreenReadState extends State<HomeScreenRead> {



      @override
      void initState() {

    }
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/images/main_page_bg.png"),
                  alignment: Alignment.topCenter,
                  fit: BoxFit.fitWidth,
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  SizedBox(height: size.height * .1),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 24),
                    child: RichText(
                      text: TextSpan(
                        style: Theme.of(context).textTheme.headline4,
                        children: [
                          TextSpan(text: "Hi Laurence your meals \n for "),
                          TextSpan(
                              text: "today?",
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                              ))
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 30),

                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                    Row(
                      children: <Widget>[

                        ReadingCard(
                          image: "assets/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailReadScreen();
                                },
                              ),
                            );
                          }, pressRead: () {  }, verified: '',
                        ),
                        ReadingCard(
                          image: "assets/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4, pressRead: () {  }, pressDetails: () {  }, verified: '',
                        ),
                       SizedBox(width: 30),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child:
                    Row(
                      children: <Widget>[

                        ReadingCard(
                          image: "assets/book-1.png",
                          title: "Crushing & Influence",
                          auth: "Gary Venchuk",
                          rating: 4,
                          pressDetails: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) {
                                  return DetailReadScreen();
                                },
                              ),
                            );
                          }, pressRead: () {  }, verified: '',
                        ),
                        ReadingCard(
                          image: "assets/book-2.png",
                          title: "Top Ten Business Hacks",
                          auth: "Herman Joel",
                          rating: 4, pressRead: () {  }, pressDetails: () {  }, verified: '',
                        ),
                        SizedBox(width: 30),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Container bestOfTheDayCard(Size size, BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 20),
      width: double.infinity,
      height: 245,
      child: Stack(
        children: <Widget>[
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.only(
                left: 24,
                top: 24,
                right: size.width * .35,
              ),
              height: 230,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xFFEAEAEA).withOpacity(.45),
                borderRadius: BorderRadius.circular(29),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.only(top: 10.0, bottom: 10.0),
                    child: Text(
                      "``Creating heart transplants``",
                      style:
                      TextStyle(
                        fontSize: 9,
                        color: kLightBlackColor,
                      ),
                    ),
                  ),
                  Text(
                    "Saving the heartless child",
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  Text(
                    "Laurence",
                    style: TextStyle(color: kLightBlackColor),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 10, bottom: 10.0),
                    child: Row(
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 10.0), 
                          child: BookRating(score: 4),
                        ),
                        Expanded(
                          child: Text(
                            "Open heart surgey ois one of the hardest things to do on an open table.",
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontSize: 10,
                              color: kLightBlackColor,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 0,
            child: Image.asset(
              "assets/slide3.png",
              width: size.width * .37,
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: SizedBox(
              height: 40,
              width: size.width * .3,
              child: TwoSideRoundedButton(
                text: "Read",
                radious: 24,
                press: () {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}


