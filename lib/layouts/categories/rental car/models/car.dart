class Car {
  final String name;
  final String image;
  final String image2;
  final String logo;
  final int price;

  Car(this.name, this.price, this.image, this.logo, this.image2);
}

List<Car> cars = [
  Car("Lamborghini Urus", 520, "assets/image/rental/car/c1.png", "assets/3.png",
      "assets/image/rental/car/b1.png"),
  Car("BMW M7 Series", 430, "assets/image/rental/car/c2.png", "assets/image/rental/car/1.png", "assets/image/rental/car/b2.png"),
  Car("Porsche Cayenne", 500, "assets/image/rental/car/c3.png", "assets/image/rental/car/4.png", "assets/image/rental/car/b3.png"),
];
