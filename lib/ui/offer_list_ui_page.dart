import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bazzarapp/offerBloc/offer_list_bloc.dart';
import 'package:bazzarapp/offerBloc/offer_list_event.dart';
import 'package:bazzarapp/offerBloc/offer_list_state.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_widgets.dart';
import 'package:bazzarapp/Animations/FadeAnimation.dart';


class OfferListPage extends StatefulWidget {
  @override
  _OfferListPageState createState() => _OfferListPageState();
}

class _OfferListPageState extends State<OfferListPage> {
  OffersListBloc offersListBloc;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    offersListBloc = BlocProvider.of<OffersListBloc>(context);
    offersListBloc.add(FetchOffersList());
  }
  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<OffersListBloc, OffersListState>(
         builder: (context, state) {
        if (state is OfferListLoading) {
          return buildLoadingUI();
        } else if (state is OfferListLoaded) {
          return Homepage(state.electronicsOffers);
        } else if (state is OfferListLoadFailure) {
          return buildErrorUI(state.message);
        }
      },
      )
    );

  }

}

class Homepage extends StatelessWidget {
   List<Offers> electronicsoffers;

  Color lightGrey = Color(0xffe8e8ea);
  Color blue = Color(0xff4285f4);
  Color yellow = Color(0xfff4b400);
  Color red = Color(0xffdb4437);
  Color green = Color(0xff0f9d58);
  Color yellowGreen = Color(0xff61B329);
  Color babyPink = Color(0xffFFB6C1);
  Color footerColor = Color(0xff87A7A6);
  Homepage(this.electronicsoffers);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              SizedBox(
                height: 50,
              ),

               FadeAnimation(
                1.3,
                Container(
                  margin: EdgeInsets.only(top: 8, left: 7, right: 7),
                  height: 155,
                  //  color:Colors.greenAccent,
                  width: double.infinity,
                  padding: EdgeInsets.only(left: 5, right: 5),
                  decoration: BoxDecoration(
                      color: Colors.blue[500],
                      borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(20.0),
                        bottomLeft: Radius.circular(20.0),
                        topLeft: Radius.circular(20.0),
                        topRight: Radius.circular(20.0),
                      )),

                  child: Row(
                    // crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Expanded(
                          flex: 3,
                          child: FadeAnimation(
                            1.2,
                            Text(
                              "#Stay Home\n#Stay Safe",
                              style: GoogleFonts.montserrat(
                                  textStyle: TextStyle(
                                color: Colors.white,
                                fontSize: 22,
                                fontWeight: FontWeight.w400,
                              )),
                            ),
                          )),
                      Expanded(
                          flex: 4,

                          // borderRadius: BorderRadius.circular(40.0),
                          child: FadeAnimation(
                              1.2,
                              (Image.asset(
                                'images/my_mask.jpg',
                                width: 70,
                                height: 155,
                                fit: BoxFit.cover,
                              ))))
                    ],
                  ),
                ),
              ),
              SizedBox(
                height: 5.0,
              ),
              FadeAnimation(
                  1.3,
                  Container(
                      height: 84,
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      //  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      // padding:EdgeInsets.all(20),
                      // margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          // border: Border.all(

                          //   color: Colors.black
                          // ),
                          boxShadow: [
                            BoxShadow(
                                offset: Offset(0, 4),
                                blurRadius: 30,
                                color: Color(0xffb7b7b7).withOpacity(.16))
                          ]),
                      child: Column(
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                "Bazzar",
                                style: GoogleFonts.openSans(
                                  fontSize: 15,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              ClipOval(
                                child: Material(
                                  color: green, // button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 42,
                                        height: 42,
                                        child: Icon(
                                          Icons.timer,
                                          color: Colors.white,
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              // VerticalDivider(color: Colors.red),
                              ClipOval(
                                child: Material(
                                  color: red, // button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 42,
                                        height: 42,
                                        child: Icon(
                                          Icons.attach_money,
                                          color: Colors.white,
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                              // VerticalDivider(color: Colors.red,thickness: 2.5,),
                              ClipOval(
                                child: Material(
                                  color: blue, // button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 42,
                                        height: 42,
                                        child: Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Text(
                                "Use Pauzr",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Earn Points",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              Text(
                                "Buy Offers",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                      )
                      ),
                      
              FadeAnimation(
                  1.3,
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Divider(
                          color: lightGrey,
                          // height: 40,
                          thickness: 5,
                        ),
                      ))
                    ],
                  )),

                Container(
                width: MediaQuery.of(context).size.width,
                height: 375.0,
                decoration: BoxDecoration(color: blue),
                child: Column(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(12, 28, 0, 0),
                      decoration: BoxDecoration(
                          // border: Border.all(
                          //   color: Colors.black,

                          // )
                          ),
                      height: 45,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text(
                            "New Offers",
                            style: GoogleFonts.openSans(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 25),
                            child: ImageIcon(
                              AssetImage("images/desktop-mobile.png"),
                              color: Colors.white,
                              size: 50,
                            ),
                          )
                        ],
                      ),
                    ),
                     Transform.translate(
                      offset: Offset(-124, -6),
                      child: Text(
                        "Exicting new deals",
                        style: GoogleFonts.openSans(
                          color: Colors.white,
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 280,
                      child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: electronicsoffers.length,
                        itemBuilder: (context,index){
                          Offers offer=electronicsoffers[index];
                          return Container(
                            margin: EdgeInsets.fromLTRB(7, 0, 0, 20),
                            width: 170,
                            child: GestureDetector(
                              onTap: (){
                                print(electronicsoffers[index].images);
                                  print(electronicsoffers[index].images[index].id);
                                // print(electronicsoffers[index].images[index].id);
                              },
                              child: Card(
                                child: Wrap(
                                  children: 
                                  <Widget>[
                                    // Container(
                                    //           width: 170,
                                    //           height: 180,
                                    //           decoration: BoxDecoration(
                                    //               border: Border.all(
                                    //                   color: Colors.black),
                                    //               image: DecorationImage(
                                    //                   image: NetworkImage(
                                    //                       "https://api.pauzr.com/storage/" +
                                    //                           electronicsoffers[index].images[index].image),
                                    //                   fit: BoxFit.cover)
                                                      
                                    //                   ),
                                    //         ),

                                              Container(
                                              height: 100,
                                              width: 170,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Colors.black)),
                                              child: Column(
                                                // mainAxisAlignment: MainAxisAlignment.start,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,

                                                children: <Widget>[
                                                  Padding(
                                                    padding: const EdgeInsets
                                                        .fromLTRB(10, 0, 0, 0),
                                                    child: Transform(
                                                      transform:
                                                          new Matrix4.identity()
                                                            ..scale(0.69),
                                                      child: Chip(
                                                          avatar: CircleAvatar(
                                                              backgroundColor:
                                                                  green,
                                                              child: Icon(
                                                                Icons
                                                                    .local_offer,
                                                                color: Colors
                                                                    .white,
                                                              )),
                                                          backgroundColor:
                                                              green,
                                                          label: Text(
                                                              electronicsoffers[index].store.type +"offer",
                                                              style: GoogleFonts
                                                                  .openSans(
                                                                color: Colors
                                                                    .white,
                                                                fontSize: 11,
                                                                fontWeight:
                                                                    FontWeight
                                                                        .w600,
                                                              ))),
                                                    ),
                                                  ),
                                                  Transform.translate(
                                                    offset: Offset(0, -12),
                                                    child: Padding(
                                                      padding: const EdgeInsets
                                                              .fromLTRB(
                                                          10, 0, 0, 0),
                                                      child: Text(electronicsoffers[index].coupon.title,
                                                        
                                                        style: GoogleFonts
                                                            .openSans(
                                                          color: Colors.black,
                                                          fontSize: 14,
                                                          fontWeight:
                                                              FontWeight.w700,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )









                                  ],
                                  
                                  )
                                  
                                  ,),
                            ),


                          );



                        }
                        
                        





                        
                        ),

                    )


                  ],


                ),


                  )




























































































            ],

      ) ,
      ),
      
    );
    
  }
}