class PopularModel{
  String? image;
  String? type;
  String? description;
  String? price;
  String? reting;

  PopularModel(this.image, this.type, this.description, this.price, this.reting);
}

List<PopularModel> pop_model =[
  PopularModel(
      'assets/images/bedbedroom.png',
      'Sultans dine',
      'Kingdom Tower, Brazil',
      '\$180/night',
      '4.5'
  ),
  PopularModel(
      'assets/images/hotelsinterior.png',
      'Radison blue',
      'Tokyo square, Japan',
      '\$180/night',
      '4.5'
  ),
  PopularModel(
      'assets/images/bedroomchair.png',
      'Queen hotel',
      'Kingdom Tower, Brazil',
      '\$180/night',
      '4.5'
  ),
];
