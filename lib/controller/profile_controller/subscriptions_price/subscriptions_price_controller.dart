import 'package:get/get.dart';
import 'package:music_mind_app/model/profile_model/subscriptions_price/subscriptions_price_model.dart';

class SubscriptionsPriceController extends GetxController {
  List<SubscriptionsPriceModel> plansData = [
    SubscriptionsPriceModel(
      planName: 'The Shallow End',
      planTagLine: 'Give it a shot!',
      price: '0.99',
      duration: 'week',
    ),
    SubscriptionsPriceModel(
      planName: 'The Deep End',
      planTagLine: 'Make the practice routine',
      price: '2.49',
      duration: 'month',
      haveBestValue: true,
    ),
    SubscriptionsPriceModel(
      planName: 'Out to Sea',
      planTagLine: 'Discover the Depsths of You',
      price: '25.99',
      duration: 'year',
    ),
  ];

  List<SubscriptionsPriceModel> get getPlansData => plansData;
}
