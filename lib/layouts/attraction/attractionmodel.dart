class AttractionModel{
  final String rating;
  final String image;
  final String g;

  AttractionModel({required this.image, required this.rating, required this.g});
}

List<AttractionModel> attractionmodel=[
  AttractionModel(image: 'assets/image/attractions/p5.jpg', rating:"4.1" , g: 'italy'),
  AttractionModel(image: 'assets/image/attractions/p4.jpg', rating:"4.2 ", g: 'glass pyramids'),
  AttractionModel(image: 'assets/image/attractions/p3.jpg', rating:"4.3 ", g: 'Torre pendente di Pisa'),
  AttractionModel(image: 'assets/image/attractions/p2.jpg', rating:"4.4 ", g: 'Tour Eiffel'),
  AttractionModel(image: 'assets/image/attractions/p1.jpg', rating:"4.4 ", g: 'Statue of Liberty'),

];


class Hassan{

  final String g ;
  final double rat;

  Hassan( {required this.g,required this.rat,});
}

List<Hassan> L=[
  Hassan(rat: 2.2, g:'italy'),
  Hassan( rat: 2.4,g:'glass pyramids'),
  Hassan( rat: 2.5,g:'Torre pendente di Pisa'),
  Hassan(rat: 2.67, g:'Tour Eiffel'),
  Hassan(rat: 2.8, g: 'Statue of Liberty'),

];


class Hassanm{


  final double rat;

  Hassanm( {required this.rat,});
}

List<Hassanm> m=[
  Hassanm(rat: 2.2),
  Hassanm( rat: 2.4),
  Hassanm( rat: 2.5),
  Hassanm(rat: 2.67),
  Hassanm(rat: 2.8),

];