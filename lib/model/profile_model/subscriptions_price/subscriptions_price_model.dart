class SubscriptionsPriceModel {
  var planName, planTagLine, price, duration;
  bool? haveBestValue;
  SubscriptionsPriceModel({
    this.planName,
    this.planTagLine,
    this.price,
    this.duration,
    this.haveBestValue = false,
  });
}
