import 'package:bazzarapp/ui/offerDetails.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bazzarapp/offerBloc/offer_list_bloc.dart';
import 'package:bazzarapp/offerBloc/offer_list_event.dart';
import 'package:bazzarapp/offerBloc/offer_list_state.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_widgets.dart';
import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:page_transition/page_transition.dart';


class OfferListPage extends StatefulWidget {
  @override
  _OfferListPageState createState() => _OfferListPageState();
}

class _OfferListPageState extends State<OfferListPage> {
  OffersListBloc offersListBloc;

  @override
  void initState() {
    
    super.initState();
    offersListBloc = BlocProvider.of<OffersListBloc>(context);
    offersListBloc.add(FetchOffersList());
  }
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  
  }

  @override
  Widget build(BuildContext context) {
    return Material(
      child: BlocBuilder<OffersListBloc, OffersListState>(
         builder: (context, state) {
        if (state is OfferListLoading) {
          return buildLoadingUI();
        } else if (state is OfferListLoaded) {
          return Homepage(state.electronicsOffers,state.fashionOffers,state.entertaimentOffers,state.furnitureOffers);
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
   List<Offers> fashionoffers;
   List<Offers> entertainmentoffers;
   List<Offers> furnitureoffers;
//     _launchURL() async {
//   String url = "https://www.pauzr.com/";
//   if (await canLaunch(url)) {
//     await launch(url);
//   } else {
//     throw 'Could not launch $url';
//   }                            
// }

  Color lightGrey = Color(0xffe8e8ea);
  Color myHexColor = Color(0xffaba4a3); 
  Color blue = Color(0xff4285f4);
  Color yellow = Color(0xfff4b400);
  Color red = Color(0xffdb4437);
  Color green = Color(0xff0f9d58);
  Color yellowGreen = Color(0xff61B329);
  Color babyPink = Color(0xffFFB6C1);
  Color babyBlue=Color(0xffCBE6EF);
  Color lightsky=Color(0xffE7EBE0FF);
  Color footerColor = Color(0xff87A7A6);
  Color cream =Color(0xfffffee4);
  Color sugar=Color(0xF1F4FFFF);
  Color silver=Color(0xffA2A2A1FF);
  Color myPink=Color(0xffFAEBEFFF);
  Color whiteghost=Color(0xffF8F8FF);

  Homepage(this.electronicsoffers,this.fashionoffers,this.entertainmentoffers,this.furnitureoffers);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: FadeAnimation(1.1,Padding(
        padding: const EdgeInsets.only(top:15),
        child: Text("Bazzar",style: GoogleFonts.openSans(textStyle:TextStyle(fontSize: 15,color: Colors.black,fontWeight: FontWeight.w600)),),
      )),backgroundColor: Colors.white,centerTitle: true,
      ),
      
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
        child:Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[

              // SizedBox(
              //   height: 50,
              // ),

              //  FadeAnimation(
              //   1.3,
              //   Container(
              //     margin: EdgeInsets.only(top: 8, left: 7, right: 7),
              //     height: 155,
              //     //  color:Colors.greenAccent,
              //     width: double.infinity,
              //     padding: EdgeInsets.only(left: 5, right: 5),
              //     decoration: BoxDecoration(
              //         color: Colors.blue[500],
              //         borderRadius: BorderRadius.only(
              //           bottomRight: Radius.circular(20.0),
              //           bottomLeft: Radius.circular(20.0),
              //           topLeft: Radius.circular(20.0),
              //           topRight: Radius.circular(20.0),
              //         )),

              //     child: Row(
              //       // crossAxisAlignment: CrossAxisAlignment.start,
              //       mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //       children: <Widget>[
              //         Expanded(
              //             flex: 3,
              //             child: FadeAnimation(
              //               1.2,
              //               Text(
              //                 "#Stay Home\n#Stay Safe",
              //                 style: GoogleFonts.montserrat(
              //                     textStyle: TextStyle(
              //                   color: Colors.white,
              //                   fontSize: 22,
              //                   fontWeight: FontWeight.w400,
              //                 )),
              //               ),
              //             )),
              //         Expanded(
              //             flex: 4,

              //             // borderRadius: BorderRadius.circular(40.0),
              //             child: FadeAnimation(
              //                 1.2,
              //                 (Image.asset(
              //                   'images/my_mask.jpg',
              //                   width: 70,
              //                   height: 155,
              //                   fit: BoxFit.cover,
              //                 ))))
              //       ],
              //     ),
              //   ),
              // ),
              SizedBox(
                height: 5.0,
              ),
              
                
                  Container(
                      height: 95,
                      padding: EdgeInsets.fromLTRB(25, 0, 25, 0),
                      //  margin: EdgeInsets.fromLTRB(15, 0, 15, 0),
                      // padding:EdgeInsets.all(20),
                      // margin: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                          // borderRadius: BorderRadius.circular(20),
                          color: Colors.white,
                          // border: Border.all(

                          //   color: Colors.black
                          // ),
                          // boxShadow: [
                          //   BoxShadow(
                          //       // offset: Offset(0, 4),
                          //       // blurRadius: 30,
                          //       // color: Color(0xffb7b7b7).withOpacity(.16)
                          //       )
                          // ]
                          ),
                      child: Column(
                        children: <Widget>[
                          // Row(
                          //   mainAxisAlignment: MainAxisAlignment.center,
                          //   children: <Widget>[
                          //    FadeAnimation(1.3,  Text(
                          //       "Bazzar",
                          //       style: GoogleFonts.openSans(
                          //         fontSize: 15,
                          //         fontWeight: FontWeight.bold,
                          //       ),
                          //     )),
                          //   ],
                          // ),
                          SizedBox(
                            height: 8,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FadeAnimation(1.5,ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: Material(
                                  color: Colors.yellowAccent[700],// button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: Icon(
                                          Icons.timer,
                                          color: whiteghost,
                                          size: 28,
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              )),
                              // VerticalDivider(color: Colors.red),
                             FadeAnimation(1.6,  ClipRRect(
                               borderRadius: BorderRadius.circular(10),
                                child: Material(
                                  color: green, // button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                        width: 48,
                                        height: 48,
                                        child: Icon(
                                          Icons.attach_money,
                                          color: whiteghost,
                                          size: 25, 
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              )),
                              // VerticalDivider(color: Colors.red,thickness: 2.5,),
                              FadeAnimation(1.7,ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                            
                                child: Material(
                                  color: blue,// button color
                                  child: InkWell(
                                    splashColor: Colors.red, // inkwell color
                                    child: SizedBox(
                                      
                                        width: 48,
                                        height: 48,
                                        child: Icon(
                                          Icons.local_offer,
                                          color: Colors.white,
                                        )),
                                    onTap: () {},
                                  ),
                                ),
                              )),
                            ],
                          ),
                          SizedBox(
                            height: 6,
                          ),

                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              FadeAnimation(1.5,Text(
                                "Use Pauzr",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                             FadeAnimation(1.6,  Text(
                                "Earn Points",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                             FadeAnimation(1.7, Text(
                                "Buy Offers",
                                style: GoogleFonts.openSans(
                                  fontSize: 10,
                                  fontWeight: FontWeight.w600,
                                ),
                              )),
                            ],
                          ),
                        ],
                      )
                      )
                      ,
                      SizedBox(height:20),
                      
              // FadeAnimation(
              //     1.8,
              //     Row(
              //       children: <Widget>[
              //         Expanded(
              //             child: Container(
              //           // margin: const EdgeInsets.only(left:10.0,right: 10.0),
              //           child: Divider(
              //             color:Color(0xffd5d5d7),
              //             // height: 40,
              //             thickness: 6,
              //           ),
              //         ))
              //       ],
              //     )
              //     ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    height: 335,
                  
                    decoration: BoxDecoration(
                      // border: Border.all(color:Colors.black),
                        color: whiteghost,
                    

                    ),
                    child: Column(
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(10, 11),
                        child: Row(
                          children: <Widget>[
                            
                            
                     FadeAnimation(2.6,Text("Best deals on Gadgets ",style: GoogleFonts.openSans(fontSize:18,color:Colors.grey[800],fontWeight: FontWeight.w600 ),))
                          ],
                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: Transform.translate(
                              offset: Offset(2, 15),
                              child: FadeAnimation(2.8,ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: electronicsoffers.length,
                              itemBuilder:(context,index){
                              Offers offer=electronicsoffers[index];
                              List<Images> images = electronicsoffers[index].images;
                              return Container(
                                width: 180,
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.all(2),
                                child: GestureDetector(
                                  onTap: (){
                                    navigateTodetailsPage(context, offer, images);

                                  },
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 185,
                                        height: 210,
                                        child: ClipRRect(
                                          child: CachedNetworkImage(
                                            imageUrl:"https://api.pauzr.com/storage/"+electronicsoffers[index].images[0].image,fit: BoxFit.cover
                                            ,placeholder: (context, url) => Center(child:Image.asset("images/image_placeholder.png",fit: BoxFit.cover,)
                                              
                                            )
                                            ),
                                        )),
                                      
                                Text(
                                electronicsoffers[index].coupon.title,
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 13,
                                  // height: 2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                                      
                                    ],
                                  ),
                                ),
                              );

                              }),
                          ),

                        )
                        )],
                      







                    ),

                  )

              //  FadeAnimation(1.5,Container(
              //   width: MediaQuery.of(context).size.width,
              //   height: 375.0,
              //   margin: EdgeInsets.all(1),
              //   decoration: BoxDecoration(
              //     borderRadius: BorderRadius.circular(10),

              //     color:footerColor
              //     ),
              //   child: Column(
              //     children: <Widget>[
              //       Container(
              //         margin: EdgeInsets.fromLTRB(12, 28, 0, 0),
              //         decoration: BoxDecoration(
              //             // border: Border.all(
              //             //   color: Colors.black,

              //             // )
              //             ),
              //         height: 45,
              //         child:FadeAnimation(1.7, Row(
              //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
              //           children: <Widget>[
              //             Text(
              //               " New Offers",
              //               style: GoogleFonts.openSans(
              //                 color: Colors.white,
              //                 fontSize: 20,
              //                 fontWeight: FontWeight.w600,
              //               ),
              //             ),
              //             Padding(
              //               padding: const EdgeInsets.only(right: 25),
              //               child: ImageIcon(
              //                 AssetImage("images/desktop-mobile.png"),
              //                 color: Colors.white,
              //                 size: 50,
              //               ),
              //             )
              //           ],
              //         )),
              //       ),
              //       FadeAnimation(1.7,  Transform.translate(
              //         offset: Offset(-124, -6),
              //         child: Text(
              //           "Exicting new deals",
              //           style: GoogleFonts.openSans(
              //             color: Colors.white,
              //             fontSize: 13,
              //             fontWeight: FontWeight.w600,
              //           ),
              //         ),
              //       )),
              //       SizedBox(
              //         height: 280,
              //         child: Transform.translate(
              //           offset: Offset(0, 34),
              //           child: ListView.builder(
              //             scrollDirection: Axis.horizontal,
              //             itemCount: electronicsoffers.length,
              //             itemBuilder: (context,index){
              //               Offers offer=electronicsoffers[index];
              //               List<Images> images = electronicsoffers[index].images;
              //               // List<String> url =electronicsoffers[index].images[0].image.toString();
              //               return Container(
              //                 margin: EdgeInsets.fromLTRB(7, 0, 0, 20),
              //                 width: 170,
              //                 child: GestureDetector(
              //                   onTap: (){
              //                     navigateTodetailsPage(context, offer, images);
              //                     // print(electronicsoffers[index].images);
              //                     // print(images.length);
              //                     // for(int i =0;i<images.length;i++){
              //                     //   print(images[i].image);
              //                     // }
              //                     // print(electronicsoffers[index].images[index].id);
              //                   },
              //                   child: Card(
              //                     elevation: 2,
              //                      shape: RoundedRectangleBorder(
	
              //                                       borderRadius: BorderRadius.circular(10.0),
	
              //                                         ),
              //                     child: Wrap(
              //                       children: 
              //                       <Widget>[
              //                         Container(
              //                                   width: 170,
              //                                   height: 180,
              //                                    padding: EdgeInsets.all(3),
              //                                   decoration: BoxDecoration(
              //                                     // border: Border.all(
              //                                     //   color: Colors.black
              //                                     // )
                                                
              //                                   ),
              //                                   child: ClipRRect(
              //                                     borderRadius:BorderRadius.circular(10.0) ,
              //                                     child: CachedNetworkImage(
              //                                       imageUrl:"https://api.pauzr.com/storage/"+electronicsoffers[index].images[0].image
              //                                       ,fit: BoxFit.cover,placeholder: (context, url) =>
              //                                     const Center(child:CircularProgressIndicator()
              //                                               ) 
              //                                               ),
              //                                     )

              //                                   ),

              //                                   Container(
              //                                   height: 100,
              //                                   width: 170,
              //                                   decoration: BoxDecoration(
              //                                       // border: Border.all(
              //                                       //     color: Colors.black)
              //                                           ),
              //                                   child: Column(
              //                                     // mainAxisAlignment: MainAxisAlignment.start,
              //                                     crossAxisAlignment:
              //                                         CrossAxisAlignment.start,

              //                                     children: <Widget>[
              //                                       Padding(
              //                                         padding: const EdgeInsets
              //                                             .fromLTRB(10, 0, 0, 0),
              //                                         child: Transform(
              //                                           transform:
              //                                               new Matrix4.identity()
              //                                                 ..scale(0.69),
              //                                           child: Chip(
              //                                               avatar: CircleAvatar(
              //                                                   backgroundColor:
              //                                                       green,
              //                                                   child: Icon(
              //                                                     Icons
              //                                                         .local_offer,
              //                                                     color: Colors
              //                                                         .white,
              //                                                   )),
              //                                               backgroundColor:
              //                                                   green,
              //                                               label: Text(
              //                                                   electronicsoffers[index].store.type +" offer",
              //                                                   style: GoogleFonts
              //                                                       .openSans(
              //                                                     color: Colors
              //                                                         .white,
              //                                                     fontSize: 11,
              //                                                     fontWeight:
              //                                                         FontWeight
              //                                                             .w600,
              //                                                   )
                                                                
              //                                                   )
              //                                                   ),
              //                                         ),
              //                                       ),
              //                                       Transform.translate(
              //                                         offset: Offset(0, -12),
              //                                         child: Padding(
              //                                           padding: const EdgeInsets
              //                                                   .fromLTRB(
              //                                               10, 0, 0, 0),
              //                                           child: Text(electronicsoffers[index].coupon.title,
                                                          
              //                                             style: GoogleFonts
              //                                                 .openSans(
              //                                               color: Colors.black,
              //                                               fontSize: 14,
              //                                               fontWeight:
              //                                                   FontWeight.w700,
              //                                             ),
              //                                           ),
              //                                         ),
              //                                       ),
              //                                     ],
              //                                   ),
              //                                 ),

              //                       ],
                                    
              //                       )
                                    
              //                       ,),
              //                 ),


              //               );



              //             }                  
              //             ),
              //         ),

              //       ),
              //     ],


              //   ),


                  
              //     )),







                   , FadeAnimation(
                  2.9,
                  Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Divider(
                          color: Color(0xffd5d5d7),
                          // height: 40,
                          height: 6,
                          thickness: 6,
                        ),
                      ))
                    ],
                  )
                  ),


                    // Container(
                    //   width: MediaQuery.of(context).size.width,
                    //   height: 375.0,
                    //   decoration: BoxDecoration(
                    //      borderRadius: BorderRadius.circular(10),
                        
                    //     color: Colors.lightBlue[100]),
                    //   child: Column(
                    //     children: <Widget>[
                    //       Container(
                    //         margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                    //         decoration: BoxDecoration(
                             
                    //             // border: Border.all(
                    //             //   color: Colors.black,

                    //             // )
                    //             ),
                    //         height: 45,
                    //         child: Row(
                    //           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    //           children: <Widget>[
                    //             Text(
                    //               "Top Fashion Offers",
                    //               style: GoogleFonts.openSans(
                    //                 color: Colors.black,
                    //                 fontSize: 20,
                    //                 fontWeight: FontWeight.w600,
                    //               ),
                    //             ),
                    //             Padding(
                    //               padding: const EdgeInsets.only(right: 20),
                    //               child: ImageIcon(
                    //                 AssetImage("images/hanger_icon.png"),
                    //                 size: 40,
                    //               ),
                    //             )
                    //           ],
                    //         ),
                    //       ),
                    //       Transform.translate(
                    //         offset: Offset(-110, -8),
                    //         child: Text(
                    //           "Deals You Cannot miss ",
                    //           style: GoogleFonts.openSans(
                    //             color: Colors.black,
                    //             fontSize: 13,
                    //             fontWeight: FontWeight.w600,
                    //           ),
                    //         ),
                    //       ),
                    //       SizedBox(
                    //           height: 280.0,
                    //           child: Transform.translate(
                    //               offset: Offset(0, 31),
                    //               child: ListView.builder(
                    //                 scrollDirection: Axis.horizontal,
                    //                 itemCount: fashionoffers.length,
                    //                 itemBuilder:  (context,index){
                    //                   Offers offer=fashionoffers[index];
                    //                   List<Images> images = fashionoffers[index].images;
                    //                   return Container(
                    //                      margin: EdgeInsets.fromLTRB(7, 0, 0, 20),
                    //                      width: 170,
                    //                      child: GestureDetector(
                    //                        onTap: (){
                    //                          navigateTodetailsPage(context, offer, images);
                                             
                    //                        },
                    //                        child:Card(
                    //                          elevation: 2,
                                             
                    //                                shape: RoundedRectangleBorder(
	
                    //                                 borderRadius: BorderRadius.circular(10.0),
	
                    //                                   ),
                    //                          child: Wrap(
                    //                           children: <Widget>[
                    //                             Container(
                    //                             width: 170,
                    //                             height: 180,
                    //                             padding: EdgeInsets.all(3),
                    //                             decoration: BoxDecoration(
                    //                               // border: Border.all(
                    //                               //   color: Colors.black
                    //                               // )
                                                
                    //                             ),
                    //                             child: ClipRRect(
                    //                                borderRadius:BorderRadius.circular(10.0) ,
                    //                               child: CachedNetworkImage(
                    //                                 imageUrl:"https://api.pauzr.com/storage/"+fashionoffers[index].images[0].image
                    //                                 ,fit: BoxFit.cover,placeholder: (context, url) =>
                    //                               const Center(child:CircularProgressIndicator()
                    //                                         ) 
                    //                                         ),
                    //                               )

                    //                             ),

                    //                                Container(
                    //                             height: 100,
                    //                             width: 170,
                    //                             decoration: BoxDecoration(
                    //                                 // border: Border.all(
                    //                                 //     color: Colors.black)
                    //                                     ),
                    //                             child: Column(
                    //                               // mainAxisAlignment: MainAxisAlignment.start,
                    //                               crossAxisAlignment:
                    //                                   CrossAxisAlignment.start,

                    //                               children: <Widget>[
                    //                                 Padding(
                    //                                   padding: const EdgeInsets
                    //                                       .fromLTRB(10, 0, 0, 0),
                    //                                   child: Transform(
                    //                                     transform:
                    //                                         new Matrix4.identity()
                    //                                           ..scale(0.69),
                    //                                     child: Chip(
                    //                                         avatar: CircleAvatar(
                    //                                             backgroundColor:
                    //                                                 green,
                    //                                             child: Icon(
                    //                                               Icons
                    //                                                   .local_offer,
                    //                                               color: Colors
                    //                                                   .white,
                    //                                             )),
                    //                                         backgroundColor:
                    //                                             green,
                    //                                         label: Text(
                    //                                             fashionoffers[index].store.type +" offer",
                    //                                             style: GoogleFonts
                    //                                                 .openSans(
                    //                                               color: Colors
                    //                                                   .white,
                    //                                               fontSize: 11,
                    //                                               fontWeight:
                    //                                                   FontWeight
                    //                                                       .w600,
                    //                                             ))),
                    //                                   ),
                    //                                 ),
                    //                                 Transform.translate(
                    //                                   offset: Offset(0, -12),
                    //                                   child: Padding(
                    //                                     padding: const EdgeInsets
                    //                                             .fromLTRB(
                    //                                         10, 0, 0, 0),
                    //                                     child: Text(fashionoffers[index].coupon.title,
                                                          
                    //                                       style: GoogleFonts
                    //                                           .openSans(
                    //                                         color: Colors.black,
                    //                                         fontSize: 14,
                    //                                         fontWeight:
                    //                                             FontWeight.w700,
                    //                                       ),
                    //                                     ),
                    //                                   ),
                    //                                 ),
                    //                               ],
                    //                             ),
                    //                           ),
                    //                           ], 
                    //                          ),

                    //                        ) ,
                    //                      )

                    //                   );
                    //                 }
                    //                 )
                    //               )
                    //               )
                    //     ],
                    //   ),
                    // ),
                    
                  FadeAnimation(3.2,Container(
                    // width: 390,
                    height: 575,
                    decoration: BoxDecoration(
                      color: whiteghost
                      // border: Border.all(color:Colors.blue)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Transform.translate(
                          offset: Offset(10, 20),
                        child: Row(
                          children: <Widget>[
                            Text("Furniture Bestsellers ",style: GoogleFonts.openSans(fontSize:19,fontWeight: FontWeight.w600 ),)
                          ],
                          ),

                        ),
                        SizedBox(height:10),
                        SizedBox(
                          // width:380,
                          height: 539,
                          child: Transform.translate(
                            offset: Offset(0, 18),
                                                      child: GridView.builder(
                              //  scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              physics: ScrollPhysics(),
                              gridDelegate:SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,
                              childAspectRatio: 400/500/1.03,crossAxisSpacing: 10),
                              itemCount: furnitureoffers.length,
                            
                             itemBuilder: (context,index){
                               Offers offer = furnitureoffers[index];
                               List<Images> images = furnitureoffers[index].images;
                               return Container(
                                 constraints: BoxConstraints(maxWidth: MediaQuery.of(context).size.width/4),
                                  // width: 100,
                                  // height: 100,
                                  decoration: BoxDecoration(
                                    // border: Border.all(
                                    //   color: Colors.purple
                                    // )
                                  ),
                                  padding: EdgeInsets.all(7),
                                  margin: EdgeInsets.all(2),
                                  
                                  child: GestureDetector(
                                    onTap: (){
                                      navigateTodetailsPage(context, offer, images);

                                    },
                                    child: Wrap(
                                  children:<Widget>[
                                   Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: 
                                        <Widget>[
                                          Container(
                                            width: 175,
                                            height: 200,
                                            decoration: BoxDecoration(
                                              // border: Border.all(
                                              //   color: Colors.black
                                              // )
                                            ),
                                            child: ClipRRect(
                                              child: CachedNetworkImage(
                                                imageUrl:"https://api.pauzr.com/storage/"+furnitureoffers[index].images[0].image,placeholder: (context, url) => Center(child:Image.asset("images/image_placeholder.png"))
                                                  ,fit: BoxFit.fill
                                                ),
                                            ),
                                          ),
                                  Text(
                                  furnitureoffers[index].coupon.title,
                                  style: GoogleFonts.openSans(
                                      color: Colors.black,
                                      fontSize: 13,
                                      // height: 2,
                                      fontWeight: FontWeight.w600,
                                  ),
                                ),




                                        ],
                                      ),
                                                                        ]
                                    )

                               ));


                             }),
                          ),

                        )









                        
                      ],
                      

                    ),



                    )),
                      Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Divider(
                          color: Color(0xffd5d5d7),
                          // height: 40,
                          height: 6,
                          thickness: 6,
                        ),
                      ))
                    ],
                  ),
                    Container(
                    width: MediaQuery.of(context).size.width,
                    height: 360,
                  
                    decoration: BoxDecoration(
                      // border: Border.all(color:Colors.black),
                        color: whiteghost,
                    

                    ),
                    child: Column(
                      children: <Widget>[
                       Transform.translate(
                          offset: Offset(10, 20),
                        child: 
                        Row(
                          children: <Widget>[
                            Text("Top Picks On Fashion",style: GoogleFonts.openSans(fontSize:19,fontWeight: FontWeight.w600 ),)
                          ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(11, 22),

                        child: Row(
                            children: <Widget>[
                               Text(
                                "Deals You Cannot miss ",
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                )
                               )],

                          ),
                        ),
                        SizedBox(
                          height: 300,
                          child: Transform.translate(
                              offset: Offset(2, 29),
                              child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: fashionoffers.length,
                              itemBuilder:(context,index){
                              Offers offer=fashionoffers[index];
                              List<Images> images = fashionoffers[index].images;
                              return Container(
                                width: 180,
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.all(2),
                                child: GestureDetector(
                                  onTap: (){
                                    navigateTodetailsPage(context, offer, images);

                                  },
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                       width: 185,
                                        height: 210,
                                        child: ClipRRect(
                                          child: CachedNetworkImage(
                                            imageUrl:"https://api.pauzr.com/storage/"+fashionoffers[index].images[0].image
                                              ,fit: BoxFit.cover
                                            ),
                                        ),
                                      ),
                                Text(
                                fashionoffers[index].coupon.title,
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 12,
                                  height: 2,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                                      
                                    ],
                                  ),
                                ),
                              );

                              }),
                          ),

                        )





                      ]


                    )
                    
                    )












                //     Container(
                //       width: MediaQuery.of(context).size.width,
                //       height: 375.0,
                //       decoration: BoxDecoration(
                //         gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   colors:[
                //   Color.fromRGBO(251, 121, 155, 1),
                //   Color.fromRGBO(251, 53, 105, 1)
                //   ]
                // )
                //       ),
                //       child: Column(
                //         children: <Widget>[
                //           Container(
                //             margin: EdgeInsets.fromLTRB(10, 30, 0, 0),
                //             decoration: BoxDecoration(
                //                 // border: Border.all(
                //                 //   color: Colors.black,

                //                 // )
                //                 ),
                //             height: 45,
                //             child: Row(
                //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
                //               children: <Widget>[
                //                 Text(
                //                   " Need Entertainment",
                //                   style: GoogleFonts.openSans(
                //                     color: Colors.white,
                //                     fontSize: 20,
                //                     fontWeight: FontWeight.w600,
                //                   ),
                //                 ),
                //                 Padding(
                //                   padding: const EdgeInsets.only(right: 20),
                //                   child: ImageIcon(
                //                     AssetImage("images/tv.png"),
                //                     color: Colors.white,
                //                     size: 40,
                //                   ),
                //                 )
                //               ],
                //             ),
                //           ),
                //           Transform.translate(
                //             offset: Offset(-110, -8),
                //             child: Text(
                //               "Top deals",
                //               style: GoogleFonts.openSans(
                //                 color: Colors.black,
                //                 fontSize: 12,
                //                 fontWeight: FontWeight.w400,
                //               ),
                //             ),
                //           ),
                //           SizedBox(
                //               height: 280.0,
                //               child: Transform.translate(
                //                   offset: Offset(0, 31),
                //                   child: ListView.builder(
                //                     scrollDirection: Axis.horizontal,
                //                     itemCount: entertainmentoffers.length,
                //                     itemBuilder:  (context,index){
                //                       Offers offer=entertainmentoffers[index];
                //                       List<Images> images = entertainmentoffers[index].images;
                //                       return Container(
                //                          margin: EdgeInsets.fromLTRB(7, 0, 0, 20),
                //                          width: 170,
                //                          child: GestureDetector(
                //                            onTap: (){
                //                              navigateTodetailsPage(context, offer, images);
                                             
                //                            },
                //                            child:Card(
                //                              child: Wrap(
                //                               children: <Widget>[
                //                                 Container(
                //                                 width: 170,
                //                                 height: 180,
                //                                 padding: ,
                //                                 decoration: BoxDecoration(
                //                                   border: Border.all(
                //                                     color: Colors.black
                //                                   )
                                                
                //                                 ),
                //                                 child: ClipRRect(
                //                                   child: CachedNetworkImage(
                //                                     imageUrl:"https://api.pauzr.com/storage/"+entertainmentoffers[index].images[0].image
                //                                     ,fit: BoxFit.cover,placeholder: (context, url) =>
                //                                   const Center(child:CircularProgressIndicator()
                //                                             ) 
                //                                             ),
                //                                   )

                //                                 ),

                //                                    Container(
                //                                 height: 100,
                //                                 width: 170,
                //                                 decoration: BoxDecoration(
                //                                     border: Border.all(
                //                                         color: Colors.black)),
                //                                 child: Column(
                //                                   // mainAxisAlignment: MainAxisAlignment.start,
                //                                   crossAxisAlignment:
                //                                       CrossAxisAlignment.start,

                //                                   children: <Widget>[
                //                                     Padding(
                //                                       padding: const EdgeInsets
                //                                           .fromLTRB(10, 0, 0, 0),
                //                                       child: Transform(
                //                                         transform:
                //                                             new Matrix4.identity()
                //                                               ..scale(0.69),
                //                                         child: Chip(
                //                                             avatar: CircleAvatar(
                //                                                 backgroundColor:
                //                                                     green,
                //                                                 child: Icon(
                //                                                   Icons
                //                                                       .local_offer,
                //                                                   color: Colors
                //                                                       .white,
                //                                                 )),
                //                                             backgroundColor:
                //                                                 green,
                //                                             label: Text(
                //                                                 entertainmentoffers[index].store.type +" offer",
                //                                                 style: GoogleFonts
                //                                                     .openSans(
                //                                                   color: Colors
                //                                                       .white,
                //                                                   fontSize: 11,
                //                                                   fontWeight:
                //                                                       FontWeight
                //                                                           .w600,
                //                                                 ))),
                //                                       ),
                //                                     ),
                //                                     Transform.translate(
                //                                       offset: Offset(0, -12),
                //                                       child: Padding(
                //                                         padding: const EdgeInsets
                //                                                 .fromLTRB(
                //                                             10, 0, 0, 0),
                //                                         child: Text(entertainmentoffers[index].coupon.title,
                                                          
                //                                           style: GoogleFonts
                //                                               .openSans(
                //                                             color: Colors.black,
                //                                             fontSize: 14,
                //                                             fontWeight:
                //                                                 FontWeight.w700,
                //                                           ),
                //                                         ),
                //                                       ),
                //                                     ),
                //                                   ],
                //                                 ),
                //                               ),
                //                               ], 
                //                              ),

                //                            ) ,
                //                          )

                //                       );
                //                     }
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                                    
                //                     )
                                  
                //                   )
                //                   )
                //         ],
                //       ),
                //     ),














                    ,
                      SizedBox(height: 10,)
                      ,
                      Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Divider(
                          color: Color(0xffd5d5d7),
                          // height: 40,
                          height: 6,
                          thickness: 6,
                        ),
                      ))
                    ],
                  ),
                     Container(
                    width: MediaQuery.of(context).size.width,
                    height: 375,
                  
                    decoration: BoxDecoration(
                      // border: Border.all(color:Colors.black),
                        color: whiteghost,
                    

                    ),
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 10,),
                       Transform.translate(
                          offset: Offset(10, 13),
                        child: 
                        Row(
                          children: <Widget>[
                            Text("Top Binge Watch Picks",style: GoogleFonts.openSans(fontSize:19,fontWeight: FontWeight.w600 ),)
                          ],
                          ),
                        ),
                        Transform.translate(
                          offset: Offset(11, 15),

                        child: Row(
                            children: <Widget>[
                               Text(
                                "Best Deals",
                                style: GoogleFonts.openSans(
                                  color: Colors.black,
                                  fontSize: 12,
                                  fontWeight: FontWeight.w600,
                                )
                               )],

                          ),
                        ),
                        SizedBox(
                          height: 320,
                          child: Transform.translate(
                              offset: Offset(2, 29),
                              child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: entertainmentoffers.length,
                              itemBuilder:(context,index){
                              Offers offer=entertainmentoffers[index];
                              List<Images> images = entertainmentoffers[index].images;
                              return Container(
                                width: 180,
                                padding: EdgeInsets.all(7),
                                margin: EdgeInsets.all(2),
                                child: GestureDetector(
                                  onTap: (){
                                    navigateTodetailsPage(context, offer, images);

                                  },
                                  child: Column(
                                    // mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Container(
                                        width: 185,
                                        height: 210,
                                        child: ClipRRect(
                                          child: CachedNetworkImage(
                                            imageUrl:"https://api.pauzr.com/storage/"+entertainmentoffers[index].images[0].image
                                              ,fit: BoxFit.cover
                                            ),
                                        ),
                                      ),
                                Padding(
                                  padding: EdgeInsets.only(right:25),
                                  child: Text(
                                  entertainmentoffers[index].coupon.title,
                                  style: GoogleFonts.openSans(
                                    color: Colors.black,
                                    fontSize: 13,
                                    height: 2,
                                    fontWeight: FontWeight.w600,
                                  ),
                              ),
                                ),
                                      
                                    ],
                                  ),
                                ),
                              );

                              }),
                          ),

                        )





                      ]


                    )
                    
                    )






















                    ,
                     SizedBox(height: 15,),
                   Row(
                    children: <Widget>[
                      Expanded(
                          child: Container(
                        // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                        child: Divider(
                          color: Color(0xffd5d5d7),
                          // height: 40,
                          height: 6,
                          thickness: 6,
                        ),
                      ))
                    ],
                  ),
                    SizedBox(height: 40,),
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 150,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Text("Have Questions ?",style: GoogleFonts.openSans(textStyle:TextStyle(color:Colors.black,fontSize:18,fontWeight: FontWeight.w400 ))),
                           SizedBox(height: 10,),
                          FlatButton(
                           color:Colors.white,
                           
                           shape: RoundedRectangleBorder(
                             
                             borderRadius: BorderRadius.circular(5),
                             side: BorderSide(
                               color: Colors.green
                             )
                             ),
                           
                           
                           onPressed: ()=>launch('https://www.pauzr.com/faqs.html'),
                            
                         child: Text("See FAQ",style: TextStyle(color:Colors.green,fontSize: 11),)),

                          
                        ],
                      ),
                    ),




                     Container(
                                            padding: EdgeInsets.all(15),
                                            margin: EdgeInsets.only(top:0,bottom: 2),  
                                            width: MediaQuery.of(context).size.width,
                                            height: 150,
                                            color:  Colors.black,
                                            child: Center(
                                              child: Column(
                                                children: <Widget>[
                                                  
                                                  Text("Partner with Us",style: GoogleFonts.montserrat(textStyle:TextStyle(color:Colors.white,fontSize:18,letterSpacing: 0.5,fontWeight: FontWeight.w300 ))),
                                                  SizedBox(height:10),
                                                  Text("Have a business with products/offers you might  \n                    want to list on the Bazzar ?",style:GoogleFonts.montserrat(textStyle: TextStyle(color:Colors.white,fontSize:13,fontWeight: FontWeight.w200 ))),
                                                  Row(
                                                    mainAxisAlignment: MainAxisAlignment.center,
                                                    children: <Widget>[
                                                    
                                                    Text("Contact Us-",style: GoogleFonts.montserrat(textStyle:TextStyle(color:Colors.white70,fontSize:15 ))),
                                                    FlatButton(
                                                      onPressed: ()=>launch('https://www.pauzr.com')
                                                      
                                                    ,
                                                      child: Text("Click Here",style: GoogleFonts.montserrat(textStyle:TextStyle(color:Colors.white,decoration: TextDecoration.underline,height: 1,decorationStyle: TextDecorationStyle.double)
                                                      )
                                                      ),
                                                      )
                            
                                                  ],)
                                                ],
                                                
                                              ),
                                            ),
                                            )
















                    // Container(
                    //   height: 250,
                    //   width: MediaQuery.of(context).size.width,
                    //   decoration: BoxDecoration(color: footerColor),
                    //   child: Column(
                    //     crossAxisAlignment: CrossAxisAlignment.center,
                    //     children: <Widget>[
                    //       Padding(
                    //         padding: const EdgeInsets.fromLTRB(0, 10, 0, 0),
                    //         child: Text(
                    //           "Partner with us",
                    //           style: GoogleFonts.montserrat(
                    //             color: Colors.white,
                    //             fontSize: 20,
                    //             fontWeight: FontWeight.w400,
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.fromLTRB(0, 8, 10, 0),
                    //         child: Text(
                    //           "List your business with products/offers on\n                            Pauzr bazzar.",
                    //           style: GoogleFonts.montserrat(
                    //             fontSize: 15,
                    //             color: Colors.white,
                    //             fontWeight: FontWeight.w400,
                    //           ),
                    //         ),
                    //       ),
                    //       Padding(
                    //         padding: const EdgeInsets.fromLTRB(9, 15, 0, 0),
                    //         child: FlatButton(
                    //             onPressed: () {},
                    //             shape: RoundedRectangleBorder(
                    //                 borderRadius: BorderRadius.circular(18.0),
                    //                 side: BorderSide(color: Colors.white)),
                    //             child: Text(
                    //               "Contact us",
                    //               style: TextStyle(color: Colors.white),
                    //               // style: TextStyle(color: blue),
                    //             )),
                    //       ),
                    //     ]
                    //     ),

                    // )
                    
                    ],

      ) ,
      ),
      
    );
    
  }
   navigateTodetailsPage(BuildContext context, Offers offer,List<Images> images) {

                                Navigator.push(context,PageTransition(type: PageTransitionType.rightToLeft,child:OfferDetailPage(offer: offer,productImages: images,)));

                               }

  
}