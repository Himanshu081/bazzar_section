import 'package:flutter/material.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bazzarapp/Animations/FadeAnimation.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:carousel_slider/carousel_slider.dart';

class OfferDetailPage extends StatefulWidget {
  Offers offer;

  List<Images>productImages;
  OfferDetailPage({@required this.offer,this.productImages});

  @override
  _OfferDetailPageState createState() => _OfferDetailPageState();
}

class _OfferDetailPageState extends State<OfferDetailPage> {
    CarouselSlider carouselSlider;
      Color blue = Color(0xff4285f4);
       Color lightGrey = Color(0xffe8e8ea);
       Color lightgray=Color(0xffD3D3D3);
       Color chipBackgroundColor = Color(0xFFF6F6F6);
  @override
  Widget build(BuildContext context) {
     var mediaQuery =MediaQuery.of(context);

    
    // int _current = 0;
    // List networkimages;
//     for(int i=0 ; i<widget.productImages.length; i++ ) {
//     networkimages.add(NetworkImage(widget.productImages[i].image).url.;
// }
  //   List<T> map<T>(List list, Function handler) {
  //   List<T> result = [];
  //   for (var i = 0; i < list.length; i++) {
  //     result.add(handler(i, list[i]));
  //   }
  //   return result;
  // }
 
    // for(int i=0;i<widget.productImages.length;i++){
    //   networkimages.add(CachedNetworkImage(imageUrl:"https://api.pauzr.com/storage/"+widget.productImages[i].image ).);
    // }
    
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        iconTheme: new IconThemeData(color: Colors.black)
      ),
      resizeToAvoidBottomPadding: true,
      body: SingleChildScrollView(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Transform.translate(
            offset: Offset(20, 10),
                      child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                            FadeAnimation(1,  Text(
                              widget.offer.coupon.title,
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.bold,
                              ),
                            )),


              ],
            ),
          ),
          Transform.translate(
            offset: Offset(20, 10),

              child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                // widget.offer.images.forEach((element) { })
                FadeAnimation(1.1,Text(
                              widget.offer.store.name,
                              style: GoogleFonts.openSans(
                                color: Colors.black,
                                fontSize: 11,
                                fontWeight: FontWeight.w300,
                              ),
                            )),


              ],
            ),
          ),
          Transform.translate(
            offset: Offset(3, 5),
                      child: widget.offer.store.topBrand == 1?
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                FadeAnimation(1.3, Container(
                  width:40,
                  height: 40,
                  // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  margin: EdgeInsets.fromLTRB(13, 18, 10, 10),
                  decoration: BoxDecoration(
                   color: Colors.orange,
                   shape: BoxShape.circle, 
                  ),
                  child: Transform.translate(
                    offset: Offset(5,0),
                    child: Center(child: Text("Best Seller",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.white,fontSize:10,fontWeight: FontWeight.w600 )),))),

                )),
                FadeAnimation(1.3,Text("In "+widget.offer.store.category.name,style: GoogleFonts.openSans(textStyle:TextStyle(color:Colors.orange,decoration: TextDecoration.underline,height: 1,decorationStyle: TextDecorationStyle.solid)
                                                        )
                                                        )),

                ],

            )
            :
            Row(
                            mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                 FadeAnimation(1.3,Container(
                  width:40,
                  height: 40,
                  // padding: EdgeInsets.fromLTRB(10, 10, 10, 10),
                  margin: EdgeInsets.fromLTRB(13, 18, 10, 10),
                  decoration: BoxDecoration(
                   color: Colors.green,
                   shape: BoxShape.circle, 
                  ),
                  child: Transform.translate(
                    offset: Offset(5,0),
                    child: Center(child: Text("Best Value",style: GoogleFonts.openSans(textStyle: TextStyle(color:Colors.white,fontSize:10,fontWeight: FontWeight.w600 )),))),

                )),
                FadeAnimation(1.3,Text("In "+widget.offer.store.category.name,style: GoogleFonts.openSans(textStyle:TextStyle(color:Colors.green,decoration: TextDecoration.underline,height: 1,decorationStyle: TextDecorationStyle.solid)
                                                        )
                                                        )),

],
              
            ),
          ),
         FadeAnimation(1.5,  Container(
            width: 240,
            height: 210,
            decoration: BoxDecoration(
              // border: Border.all(
              //   color: Colors.black,
                

              // ),
              borderRadius: BorderRadius.circular(12),
            ),
            margin: EdgeInsets.fromLTRB(0, 15, 0, 5),
            child: Column(
              children: <Widget>[
                carouselSlider= CarouselSlider(
                  
                  height:200 ,
                  // enableInfiniteScroll: false,
                  // reverse: true,
                  initialPage: 0,
                  // reverse: true,
                  autoPlay: true,
                  pauseAutoPlayOnTouch: Duration(seconds: 5),
                      enlargeCenterPage: true,
                      items: widget.productImages.map((object){
                        return Builder(builder: (BuildContext context){
                          return Container(
                            width: 200,
                            height: 250,
                           
                            decoration: BoxDecoration(
                               color: Colors.white,
                              // border: Border.all(color:Colors.black),
                               borderRadius: BorderRadius.circular(12),
                            ),
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(12),
                              
                              child: CachedNetworkImage(
                              
                                imageUrl:"https://api.pauzr.com/storage/"+object.image,fit:BoxFit.contain,
                                placeholder: (context,url)=>Center(child:Image.asset("images/image_placeholder.png"),
                                ),
                            ),

                          ));



                        });
                        





                      }).toList(),

                  )
                
              ],

            ),


          )),
           FadeAnimation(1.6,Row(
                      children: <Widget>[
                        Expanded(
                            child: Container(
                          // margin: const EdgeInsets.only(left:10.0,right: 10.0),
                          child: Divider(
                            color: lightGrey,
                            height: 3,
                            thickness:3,
                          ),
                        ))
                      ],
                    )),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: <Widget>[
                            FadeAnimation(1.7,Container(
                              margin: EdgeInsets.fromLTRB(10, 7,0, 2),
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            border: Border.all(width: 1.3,color:lightGrey),
                            shape: BoxShape.rectangle,
                            borderRadius: BorderRadius.circular(10)
                          ),
                           child: Text(widget.offer.coupon.type,style: TextStyle(color: Colors.black,fontSize: 18,fontWeight: FontWeight.w600),)
                          
                          
                          ),
                            )],
                        ),
                         SizedBox(
                      height: 10,
                    ),
                    Transform.translate(
                      offset: Offset(7, 2),
                      child:FadeAnimation(1.8,  Text(widget.offer.coupon.description,style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1),fontSize: 13,fontWeight: FontWeight.bold),))),

                      Transform.translate(
                        offset: Offset(7, 5),
                        child: Row(
                                       children: <Widget>[
                                         widget.offer.store.type =="Online" ?
                               Container():         
                                 FadeAnimation(1.9,Chip(
                               label: Text(widget.offer.store.type+" Offer",style: TextStyle(fontSize: 10),
                               ),
                               backgroundColor: chipBackgroundColor,)
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             

                            FadeAnimation(1.9,Chip(
                               label: Text(widget.offer.store.name,style: TextStyle(fontSize: 10),
                               ),backgroundColor: chipBackgroundColor,
                               
                               )
                             ),
                             SizedBox(
                               width: 5,
                             ),
                             
                             FadeAnimation(2,Chip(
                               label: Text("Coupon Expiry: "+widget.offer.coupon.expiryDate,style: TextStyle(fontSize: 10),
                               )
                               ,backgroundColor: chipBackgroundColor,
                               
                               )
                             )
                          ],
                        ),
                      ),
                          Transform.translate(
                            offset: Offset(7, 2),
                                                      child: Row(
                        children: <Widget>[
                            FadeAnimation(2.1,Chip(
                                 label: Text(widget.offer.store.category.name,style: TextStyle(fontSize: 10),
                                 ),backgroundColor: chipBackgroundColor,
                               ),
                               ),
                               SizedBox(
                                 width: 5,
                               ),
                               widget.offer.store.type =="Offline" ?
                               FadeAnimation(2.1,Chip(
                                 label: Text("City:" +widget.offer.store.city,style: TextStyle(fontSize: 10),),
                               backgroundColor: chipBackgroundColor,)
                               ): FadeAnimation(2.1,Chip(
                                 backgroundColor: chipBackgroundColor,
                                 label: Text(widget.offer.store.type+" Offer",style: TextStyle(fontSize: 10),),
                               ))
                               ,
                               SizedBox(
                                 width: 5,
                               ),
                               FadeAnimation(2.2,Chip(
                                 backgroundColor: chipBackgroundColor,
                                 label: Text("Coupon Start Date: "+widget.offer.coupon.startDate,style: TextStyle(fontSize: 10),),
                               )),
                               

                        ]
                             
                      //      Chip(
                      //        label: Text(player.league.name)
                      //      ),
                      //      SizedBox(
                      //        width: 5,
                      //      ),
                             
                      //      Chip(
                      //        label: Text(player.rating.toString())
                      //      ),
                      //     //  Chip(
                      //     //    label: Text(offerDetails[0].stock)
                      //     //  ),
                      //    ],
                      //  ),








),
                          ), SizedBox(
                         height: 90,
                       ),
                          
                      FadeAnimation(2.3, Container(
                         alignment: Alignment.center,
                         child: FlatButton(
                           color:Colors.blue,
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           
                           onPressed:() {},
                            
                         child: Text("View Offer Details",style: TextStyle(color:Colors.white,fontSize: 11),)),
                       )  
)],
                          
                    ),
                     
              // Container(
              
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.start,
              //     children: <Widget>[
              //       Container(
              //         padding: EdgeInsets.all(5),
              //         decoration: BoxDecoration(
              //           border: Border.all(width: 1.3,color: Colors.orange),
              //           shape: BoxShape.rectangle,
              //           borderRadius: BorderRadius.circular(10)
              //         ),

              //         child: Text(widget.offer.coupon.type,style: TextStyle(color: Color.fromRGBO(97, 90, 90, .54),fontSize: 18,fontWeight: FontWeight.bold),)
                      
              //         ),
              //         // Text(w)
              //     ],
              //   ),
              // )      


               




























































        ],
        

      ),
      ),
      
      )
    
      
  ;}
  //  goToPrevious() {
     
  //   carouselSlider.previousPage(
  //       duration: Duration(milliseconds: 300), curve: Curves.ease);
  // }
 
  // goToNext() {
  //   carouselSlider.nextPage(
  //       duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  // }
}
