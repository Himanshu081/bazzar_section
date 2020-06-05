import 'package:meta/meta.dart';
import 'package:bazzarapp/models/model.dart';
import 'package:bazzarapp/datasource/offerDatasource.dart';

class OfferRepository{
  OfferDataSource offerDataSource;
  OfferRepository({@required this.offerDataSource});

  Future<List<Offers>> fetchelectronicsoffers()async{
    return await offerDataSource.fetchElectronicsOffers();
  }
  Future<List<Offers>> fetchfashionoffers()async{
    return await offerDataSource.fetchFashionOffers();
  }


}