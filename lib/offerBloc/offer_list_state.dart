import 'package:equatable/equatable.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:meta/meta.dart';

abstract class OffersListState extends Equatable{}

class OfferListLoading extends OffersListState{
  @override

  List<Object> get props => null;
}

class OfferListLoaded extends OffersListState{
  final List<Offers> electronicsOffers;
  final List<Offers> fashionOffers;
  final List<Offers> entertaimentOffers;
  final List<Offers> furnitureOffers;

  OfferListLoaded({@required this.electronicsOffers,this.fashionOffers,this.entertaimentOffers,this.furnitureOffers});
  @override
  
  List<Object> get props => null;

}
class OfferListLoadFailure extends OffersListState{
  final String message;

  OfferListLoadFailure({@required this.message});
  
  @override

  List<Object> get props => null;

}