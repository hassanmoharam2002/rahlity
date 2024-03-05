

class TouristPlacesModel{
  int numid;
  final String name;
  final String image;

  TouristPlacesModel( {required this.numid,required this.name,required this.image});
}

List<TouristPlacesModel> touristPlaces =[
  TouristPlacesModel(numid:0,name: 'Stays', image: 'assets/icons/mountain.png'),
  TouristPlacesModel(numid:1,name: 'Taxi', image: 'assets/icons/beach.png'),
  TouristPlacesModel(numid:2,name: 'Car rental', image: 'assets/icons/forest.png'),
  TouristPlacesModel(numid:3,name: 'flying', image: 'assets/icons/city.png'),
  TouristPlacesModel(numid:4,name: 'Attraction', image: 'assets/icons/desert.png'),


];