

class TouristPlacesModel{
  final String name;
  final String image;

  TouristPlacesModel( {required this.name,required this.image});
}

List<TouristPlacesModel> touristPlaces =[
  TouristPlacesModel(name: 'Stays', image: 'assets/icons/mountain.png'),
  TouristPlacesModel(name: 'Taxi', image: 'assets/icons/beach.png'),
  TouristPlacesModel(name: 'Car rental', image: 'assets/icons/forest.png'),
  TouristPlacesModel(name: 'flying', image: 'assets/icons/city.png'),
  TouristPlacesModel(name: 'Attraction', image: 'assets/icons/desert.png'),


];