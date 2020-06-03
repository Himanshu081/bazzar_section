import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'offerBloc/offer_list_bloc.dart';
import 'datasource/offerDatasource.dart';
import 'repository/offer_repository.dart';
import 'ui/bottomNavigationbar.dart';


void main(){
  runApp(Myapp());
}

class Myapp extends StatelessWidget {
  final OfferRepository offerRepository =OfferRepository(offerDataSource: OfferDataSource(),);
  @override
  Widget build(BuildContext context) {
    return MaterialApp
(
  debugShowCheckedModeBanner: false,
  home:BlocProvider(
    create: (context)=>OffersListBloc(offerRepository: offerRepository),
    child: HomePage(),
    )

      
    );
  }
}