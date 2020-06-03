import 'package:bazzarapp/models/model.dart';
import 'package:http/http.dart' as http;
import 'app_strings.dart';
 

import 'dart:convert';


class OfferDataSource{
  Future<List<Offers>> fetchElectronicsOffers()async{
    var response =await http.get(Apistring.electronics_offers);

    if(response.statusCode ==200){
      var data =jsonDecode(response.body);
      List<Offers>electronicsOffers =Apiresult.fromJson(data).products.data;
      return electronicsOffers;
    }
    else{
      throw Exception("Error !!");
    }
  }


  
}