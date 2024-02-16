class RecomendedPlaceModel{
  final String image;
  final double rating;
  final String location;

  RecomendedPlaceModel({required this.image, required this.rating, required this.location});
}

List<RecomendedPlaceModel> recomendedplaces=[
  RecomendedPlaceModel(image: 'assets/p/place5.jpg', rating:4.4 , location: 'St. el salam city'),
  RecomendedPlaceModel(image: 'assets/p/place4.jpg', rating:4.4 , location: 'St. el salam city'),
  RecomendedPlaceModel(image: 'assets/p/place3.jpg', rating:4.4 , location: 'St. el salam city'),
  RecomendedPlaceModel(image: 'assets/p/place2.jpg', rating:4.4 , location: 'St. el salam city'),
  RecomendedPlaceModel(image: 'assets/p/place1.jpg', rating:4.4 , location: 'St. el salam city'),

];