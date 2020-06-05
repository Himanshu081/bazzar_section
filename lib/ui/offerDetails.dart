import 'package:flutter/material.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:bazzarapp/Animations/FadeAnimation.dart';

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
      // appBar: AppBar(),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 35,
            
            left: 0,
            right: 0,
            height: mediaQuery.size.height/2.7,
            
            child: Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              // width: 300,
              // height: 350,
              
                decoration: BoxDecoration(
                  border: Border.all(
                     color: Colors.white
                  ),
                color:blue
                // gradient: LinearGradient(
                //   begin: Alignment.topRight,
                //   colors:[
                //   Color.fromRGBO(251, 121, 155, 1),
                //   Color.fromRGBO(251, 53, 105, 1)
                //   ]
                // )
              
                // border: Border.all(
                //   color: Colors.black
                // )
              ),
              child: Column(
                children: <Widget>[
                  carouselSlider = CarouselSlider(
                    height: 200,
                    
                      enableInfiniteScroll: false,
                      initialPage: 0,
                      autoPlay: true,
                      enlargeCenterPage: true,
                    items: widget.productImages.map((object){
                    return Builder(builder:(BuildContext context){
                      return Container(
                        // width: 250,
                        width: mediaQuery.size.width,
                        // padding: EdgeInsets.all(5),
                        margin: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          // color: Colors.white,
                          border: Border.all(
                            color: Colors.white
                          ),
                          // image: DecorationImage(image:CachedNetworkImage(imageUrl: ) )
                          
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(13),
                                                  child: CachedNetworkImage(
                            imageUrl:"https://api.pauzr.com/storage/"+object.image,fit:BoxFit.fill,
                            placeholder: (context, url) =>
                          const Center(child:CircularProgressIndicator()
                          ) 
                          
                          ,),
                        ),

                      );

                    });


                  }).toList(),  
                    
                    
                 
                     
                    ),
                    
          //            Row(
          //   mainAxisAlignment: MainAxisAlignment.center,
          //   children: networkimages.map((e) {
          //     int index = networkimages.indexOf(e);
          //     return Container(
          //       width: 8.0,
          //       height: 8.0,
          //       margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 2.0),
          //       decoration: BoxDecoration(
          //         shape: BoxShape.circle,
          //         color: _current == index
          //           ? Color.fromRGBO(0, 0, 0, 0.9)
          //           : Color.fromRGBO(0, 0, 0, 0.4),
          //       ),
          //     );
          //   }).toList(),
          // ),
           Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                //  padding: EdgeInsets.only(right: 400),
                margin: EdgeInsets.only(right:30),
                   width: 30,
                   height: 30,
                  // decoration: BoxDecoration(
                  //       border: Border.all(width: 1,color:blue),
                  //       shape: BoxShape.rectangle,
                  //       borderRadius: BorderRadius.circular(30)
                  //     ),
                      
              child: IconButton(
                onPressed: () {
                   goToPrevious();
                  
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              ),

                ),
                // SizedBox(
                //   height: 90,
                // ),
                 Container(
                   width: 30,
                   height: 30,
                  // decoration: BoxDecoration(
                  //       border: Border.all(width: 1,color:blue),
                  //       shape: BoxShape.rectangle,
                  //       borderRadius: BorderRadius.circular(30)
                  //     ),
                      
              child: IconButton(
                onPressed: () {
                   goToNext();
                  
                },
                icon: Icon(Icons.arrow_forward_ios, color: Colors.white,),
              ),

                ),

                // FlatButton(
                //   color: blue,
                //   onPressed: goToPrevious,
                //   child: Text("Previous",style: TextStyle(color:Colors.white),),
                // ),
                // // SizedBox(height: 15,),
                // FlatButton(
                //    color: blue,
                //   onPressed: goToNext,
                //   child: Text("Next",style: TextStyle(color:Colors.white),),
                // ),
              ],
           )],
              ),

            )
            ),
            Positioned(
            top: 50,
            left: 10,
            child:  FadeAnimation(1, Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                        border: Border.all(width: 1,color: Colors.white),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(30)
                      ),

              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: Icon(Icons.arrow_back_ios, color: Colors.white,),
              ),
            )),
            
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            height: mediaQuery.size.height/1.589,
            child: Container(
              padding: EdgeInsets.all(22),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0)
                )
                // color: Colors.black
              ),
            
                child:FadeAnimation(1.2, Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      padding: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        border: Border.all(width: 1.3,color: blue),
                        shape: BoxShape.rectangle,
                        borderRadius: BorderRadius.circular(20)
                      ),

                      child: Text(widget.offer.store.category.name,style: TextStyle(color: Color.fromRGBO(97, 90, 90, .54),fontSize: 18,fontWeight: FontWeight.bold),)),
                    SizedBox(
                      height: 10,
                    ),
                    Text(widget.offer.coupon.coupon,style: TextStyle(color: Color.fromRGBO(97, 90, 90, 1),fontSize: 23,fontWeight: FontWeight.bold),),
                      SizedBox(
                      height: 20,
                    ),
                   
                  
                     
                       Row(
                         children: <Widget>[
                           
                           Chip(
                             label: Text(widget.offer.coupon.type)
                           ),
                           SizedBox(
                             width: 5,
                           ),
                           
                           Chip(
                             label: Text(widget.offer.coupon.expiryDate)
                           ),
                          //  Chip(
                          //    label: Text(offerDetails[0].stock)
                          //  ),
                         ],
                       ),
                      //     Row(
                      //    children: <Widget>[
                           
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

                       SizedBox(
                         height: 150,
                       ),
                          
                       Container(
                         alignment: Alignment.center,
                         child: FlatButton(
                           color:Colors.blue,
                           
                           shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
                           
                           onPressed:() {},
                            
                         child: Text("View Offer Details",style: TextStyle(color:Colors.white),)),
                       )  
                  ],

                ), //mera column

              
            ),
          )

          )

        ],

      ),


    );
    
      
  }
   goToPrevious() {
     
    carouselSlider.previousPage(
        duration: Duration(milliseconds: 300), curve: Curves.ease);
  }
 
  goToNext() {
    carouselSlider.nextPage(
        duration: Duration(milliseconds: 300), curve: Curves.decelerate);
  }
}
