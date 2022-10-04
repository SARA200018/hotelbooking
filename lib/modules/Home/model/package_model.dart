class PackageModel{
  String? image;
  String? type;
  String? location;
  String? price;

  PackageModel(this.image, this.type, this.location, this.price);
}


List<PackageModel> pack_model =[
  PackageModel(
    'assets/images/ialicante-mediterranean-homes-8_V45fGyWz4-unsplash.png',
    'The westin dhaka',
    'Kingdom Place',
    '\$180/night',

  ),
  PackageModel(
    'assets/images/derick-mckinney-PhA2QbE7h6c-unsplash.png',
    'Platinum Grand',
    'Kingdom Tower, Brazil',
    '\$180/night',

  ),
];