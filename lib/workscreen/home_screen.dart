
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
                        // Expanded(
                        //   child: ListView.builder(
                        //     itemCount: _causes.length,
                        //     itemBuilder: (context, index) {
                        //       Cause newCurrentCause = _causes[index];
                        //       return Dismissible(
                        //         key: ValueKey(newCurrentCause),
                        //         onDismissed: (DismissDirection direction) {
                        //           setState(() {
                        //             _causes.removeAt(index);
                        //           });
                        //         },
                        //
                        //         child: ReadingCard(image: newCurrentCause.croppedImage == null ? "https://picsum.photos/200/300" : newCurrentCause.croppedImage, title: newCurrentCause.title, auth: newCurrentCause.country, rating: newCurrentCause.targetAmount, pressDetails: () {
                        //           Navigator.push(
                        //             context,
                        //             MaterialPageRoute(
                        //               builder: (context) => CauseDetails(cause: newCurrentCause,),
                        //             ),
                        //           );
                        //         }, pressRead: (){
                        //           share(context, newCurrentCause);
                        //         }, verified:"assets/verified_1.png",
                        //         ),
                        //       );
                        //
                        //
                        //       // return CausesListCard(
                        //       //   image: newCurrentCause.image == null ? "https://picsum.photos/200/300" : newCurrentCause.image,
                        //       //   title: newCurrentCause.title,
                        //       //   country: newCurrentCause.country,
                        //       //   money: newCurrentCause.totalDonated as double,
                        //       //   press: () {
                        //       //     Navigator.push(
                        //       //       context,
                        //       //       MaterialPageRoute(
                        //       //         builder: (context) => CauseDetails(cause: newCurrentCause,),
                        //       //       ),
                        //       //     );
                        //       //   },
                        //       // );
                        //     },
                        //   ),
                        // ),
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
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 24),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: "Best of the "),
                              TextSpan(
                                text: "day",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        bestOfTheDayCard(size, context),
                        RichText(
                          text: TextSpan(
                            style: Theme.of(context).textTheme.headline4,
                            children: [
                              TextSpan(text: "Continue "),
                              TextSpan(
                                text: "Eat the delicoiusness...",
                                style: TextStyle(fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 20),
                        Container(
                          height: 80,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(38.5),
                            boxShadow: [
                              BoxShadow(
                                offset: Offset(0, 10),
                                blurRadius: 33,
                                color: Color(0xFFD3D3D3).withOpacity(.84),
                              ),
                            ],
                          ),
                          // child: ClipRRect(
                          //   borderRadius: BorderRadius.circular(38.5),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                FloatingActionButton.extended(
                                  onPressed: () {
                                //Navigating to next screen
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => MyHomePage()));
                                  },
                                  label: const Text('Create your meal'),
                                  icon: const Icon(Icons.add),
                                  backgroundColor: kPrimaryColor,
                                ),
                                // Expanded(
                                //   child: Padding(
                                //     padding:
                                //         EdgeInsets.only(left: 30, right: 20),
                                //     child: Row(
                                //       children: <Widget>[
                                //         Expanded(
                                //           child: Column(
                                //             mainAxisAlignment:
                                //                 MainAxisAlignment.end,
                                //             crossAxisAlignment:
                                //                 CrossAxisAlignment.start,
                                //             children: <Widget>[
                                //               Text(
                                //                 "Crushing & Influence",
                                //                 style: TextStyle(
                                //                   fontWeight: FontWeight.bold,
                                //                 ),
                                //               ),
                                //               Text(
                                //                 "Gary Venchuk",
                                //                 style: TextStyle(
                                //                   color: kLightBlackColor,
                                //                 ),
                                //               ),
                                //               Align(
                                //                 alignment:
                                //                     Alignment.bottomRight,
                                //                 child: Text(
                                //                   "Chapter 7 of 10",
                                //                   style: TextStyle(
                                //                     fontSize: 10,
                                //                     color: kLightBlackColor,
                                //                   ),
                                //                 ),
                                //               ),
                                //               SizedBox(height: 5),
                                //             ],
                                //           ),
                                //         ),
                                //         Image.asset(
                                //           "assets/images/book-1.png",
                                //           width: 55,
                                //         )
                                //       ],
                                //     ),
                                //   ),
                                // ),
                                // Container(
                                //   height: 7,
                                //   width: size.width * .65,
                                //   decoration: BoxDecoration(
                                //     color: kProgressIndicator,
                                //     borderRadius: BorderRadius.circular(7),
                                //   ),
                                // ),
                              ],
                            ),
                          ),
                        //),
                      //  SizedBox(height: 40),
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


