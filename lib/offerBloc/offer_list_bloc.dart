import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:meta/meta.dart';
import 'offer_list_event.dart';
import 'offer_list_state.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/repository/offer_repository.dart';


class OffersListBloc extends Bloc<OfferListEvent,OffersListState>{
  OfferRepository offerRepository;
  OffersListBloc({@required this.offerRepository});
  @override
  OffersListState get initialState => OfferListLoading();

  @override
  Stream<OffersListState> mapEventToState(OfferListEvent event)async* {

    if(event is FetchOffersList){
      yield* mapfetchOffersList(event);
    }
  }
  Stream<OffersListState>  mapfetchOffersList(FetchOffersList event)async*{
    yield OfferListLoading();
    try{
      List<Offers> electronicsOffers = await offerRepository.fetchelectronicsoffers();
      List<Offers> fashionOffers =await offerRepository.fetchfashionoffers();
      List<Offers> entertainmentOffers =await offerRepository.fetchentertainmentoffers();
      List<Offers> furnitureOffers =await offerRepository.fetchfurnitureoffers();

      yield OfferListLoaded(electronicsOffers:electronicsOffers ,fashionOffers: fashionOffers,entertaimentOffers: entertainmentOffers,furnitureOffers: furnitureOffers);
    }
    catch(e){
      yield OfferListLoadFailure(message: e.toString());
    }

  }


}